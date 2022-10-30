import 'package:get_server/get_server.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(GetServer(
    port: 8082,
    jwtKey: 'S3CR3T',
    cors: true,
    getPages: AppPages.routes,
  ));
}
