import 'dart:convert';
import 'dart:io';
import 'package:hiking_app/models/hike_metrics.dart';
import 'package:path_provider/path_provider.dart';
import 'package:rxdart/rxdart.dart';

import 'models/data_archive.dart';

class ArchiveService {
  BehaviorSubject<List<String>> currentArchiveList = BehaviorSubject.seeded([]);
  BehaviorSubject<DataArchive> activeDataArchive = BehaviorSubject.seeded(const DataArchive(hikeMetrics: HikeMetrics()));

  ArchiveService() {
    listArchives().then((value) => currentArchiveList.value = value);
  }

  String getNameFromPath(String fullPath) => fullPath.split('/').last.replaceAll(".json", "");

  Future<List<String>> listArchives() async {
    final path = await _getDocsDir();
    final docs = Directory(path);
    List<String> names = ["live"];
    if (await docs.exists()) {
      names = await docs.list().map((it) => getNameFromPath(it.path)).toList();
      names.sort();
      names = names.reversed.toList();
      names.insert(0, "live");
    }
    print(names);
    return names;
  }

  Future<DataArchive> activateArchive(String name) async {
    if (name == "live") {
      const archive = DataArchive(hikeMetrics: HikeMetrics());
      print(archive.hikeMetrics.cumulativeClimbMeters);
      activeDataArchive.value = archive;
      return archive;
    }
    final path = await _getDocsDir();
    final file = File('$path/$name.json');
    final archive = await _getArchiveFromFile(file);
    activeDataArchive.value = archive;
    return archive;
  }

  Future<File> createArchive(String name, DataArchive data) async {
    final file = await _newArchive(name);
    await _writeArchiveToFile(file, data);
    currentArchiveList.value = await listArchives();
    return file;
  }

  Future<File> _writeArchiveToFile(File file, DataArchive data) {
    final map = data.toJson();
    final str = jsonEncode(map);
    return _writeDataToFile(file, str);
  }

  Future<DataArchive> _getArchiveFromFile(File file) async {
    final str = await _readDataFromFile(file);
    final map = jsonDecode(str) as Map<String, dynamic>;
    return DataArchive.fromJson(map);
  }

  Future<File> _writeDataToFile(File file, String data) async {
    return file.writeAsString(data);
  }

  Future<String> _readDataFromFile(File file) async {
    return file.readAsString();
  }

  Future<String> _getDocsDir() async {
    final directory = await getApplicationDocumentsDirectory();
    final path = "${directory.path}/archives";
    return path;
  }

  Future<File> _newArchive(String name) async {
    final path = await _getDocsDir();
    return File('$path/$name.json').create(recursive: true);
  }
}