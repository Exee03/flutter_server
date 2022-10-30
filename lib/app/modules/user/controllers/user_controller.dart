import 'package:flutter_server/app/data/providers/user_provider.dart';
import 'package:get_server/get_server.dart';

import '../../../utils/token.dart';

class UserController extends GetxController {
  final _userProvider = Get.find<UserProvider>();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Map<String, dynamic> getUser(ContextRequest req) {
    try {
      final email = Token.getEmail(req);
      return _userProvider.getUser(email).toJson();
    } catch (e) {
      rethrow;
    }
  }
}
