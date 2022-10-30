import 'package:flutter_server/app/data/providers/user_provider.dart';
import 'package:get_server/get_server.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<UserProvider>(
      () => UserProvider(),
    );
  }
}
