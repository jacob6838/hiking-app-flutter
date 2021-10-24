import 'package:azblob/azblob.dart';
import 'package:hiking_app/archive_service.dart';

class AzureBlobManager {
  final _connStr = "DefaultEndpointsProtocol=https;AccountName=rawdatauploads;AccountKey=NrZjn6b9rntfUNOQR0JFhIPUWr2Lxd2/m3abdDRnIqkF7WurmNTUVIzBY1qlb0RFsPUsDCUmUW2xy35q5jnLRQ==;EndpointSuffix=core.windows.net";
  AzureStorage _storage;

  final ArchiveService archiveService = ArchiveService();

  AzureBlobManager() {
    _storage = AzureStorage.parse(_connStr);
  }

  void uploadBlob(String name) async {
    return _storage.putBlob('/dataset-1/$name',
        body: await archiveService.getArchiveContents(name));
  }
}