import '../models/app_directory.dart';

AppDirectory getDirectory() {
  return AppDirectory(
    path: AppDirectory.base,
    items: [
      AppDirectory(path: "${AppDirectory.base}/Documents", items: [
        AppDirectory(
            path: "${AppDirectory.base}/Documents/resumen.pdf", items: [])
      ]),
      AppDirectory(path: "${AppDirectory.base}/Desktop", items: []),
      AppDirectory(path: "${AppDirectory.base}/Downloads", items: []),
    ],
  );
}
