import 'package:flutter_server/app/data/providers/user_provider.dart';
import 'package:get_server/get_server.dart';

import '../controllers/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<UserProvider>(
      () => UserProvider(),
    );
  }
}
