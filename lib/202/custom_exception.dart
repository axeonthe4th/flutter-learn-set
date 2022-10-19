//
//

class FileDownloadException implements Exception {
  @override
  String toString() {
    return "Failed to download file";
  }
}
