// MultiSelectController controller = new MultiSelectController();

import 'package:flutter/material.dart';
import 'package:hiking_app/archive_service.dart';
import 'package:hiking_app/azure/azure_blob_manager.dart';
import 'package:multi_select_item/multi_select_item.dart';

class ManagementPage extends StatefulWidget {
  @override
  _ManagementPageState createState() => _ManagementPageState();
}

class _ManagementPageState extends State<ManagementPage> {
  List mainList = new List();
  MultiSelectController controller = MultiSelectController();
  AzureBlobManager azureManager = AzureBlobManager();
  ArchiveService archiveService = ArchiveService();

  @override
  void initState() {
    super.initState();

    // mainList.add({"key": "1"});
    // mainList.add({"key": "2"});
    // mainList.add({"key": "3"});
    // mainList.add({"key": "4"});
    mainList = archiveService.currentArchiveList.value?.map((String elem) => {"key": elem})?.toList();

    controller.disableEditingWhenNoneSelected = true;
    controller.set(mainList.length);
  }


  void add() {
    print("ADDING");
    mainList.add({"key": mainList.length + 1});

    setState(() {
      controller.set(mainList.length);
    });
  }

  void delete() {
    print("DELETING");
    var list = controller.selectedIndexes;
    list.sort((b, a) =>
        a.compareTo(b)); //reorder from biggest number, so it wont error
    list.forEach((element) {
      mainList.removeAt(element);
    });

    setState(() {
      controller.set(mainList.length);
    });
  }

  void upload() async {
    print("UPLOADING");
    var list = controller.selectedIndexes;
    list.sort((b, a) =>
        a.compareTo(b)); //reorder from biggest number, so it wont error
    list.forEach((element) {
      // print(mainList[element]);
      azureManager.uploadBlob(mainList[element]['key'].toString());
      // mainList.removeAt(element);
    });

    setState(() {
      controller.set(mainList.length);
    });
  }

  void selectAll() {
    print("SELECTING");
    setState(() {
      controller.toggleAll();
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<String>>(
      stream: archiveService.currentArchiveList,
      builder: (context, snapshot) {
        mainList = snapshot.data ?? [];
        setState(() {
          controller.set(mainList.length);
        });
        return WillPopScope(
          onWillPop: () async {
            //block app from quitting when selecting
            var before = !controller.isSelecting;
            setState(() {
              controller.deselectAll();
            });
            return before;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text('${'Selected ${controller.selectedIndexes.length}  '}${controller.selectedIndexes}'),
              actions: (controller.isSelecting)
                  ? <Widget>[
                IconButton(
                  icon: const Icon(Icons.select_all),
                  onPressed: selectAll,
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_upward),
                  onPressed: upload,
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: delete,
                )
              ]
                  : <Widget>[],
            ),
            body: ListView.builder(
              itemCount: mainList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: MultiSelectItem(
                    isSelecting: controller.isSelecting,
                    onSelected: () {
                      setState(() {
                        controller.toggle(index);
                      });
                    },
                    child: Container(
                      decoration: controller.isSelected(index)
                          ? BoxDecoration(color: Colors.grey[300])
                          : const BoxDecoration(),
                      child: ListTile(
                        title: Text(" Title ${mainList[index]['key']}"),
                        subtitle: Text("Description ${mainList[index]['key']}"),
                      ),
                    ),
                  ),
                );
              },
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: add,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ),
        );
      }
    );
  }
}

