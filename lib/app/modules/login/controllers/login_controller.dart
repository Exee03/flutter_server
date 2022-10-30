import 'package:flutter_server/app/data/providers/user_provider.dart';
import 'package:get_server/get_server.dart';

import '../../../utils/token.dart';

class LoginController extends GetxController {
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

  Future<String> login(ContextRequest req) async {
    try {
      final payload = await req.payload();

      if (payload == null) throw 'Unexpected error';

      final email = payload['email'];
      final password = payload['password'];
      final user = _userProvider.getUser(email);

      if (user.password != password) throw 'Incorrect password';

      return Token.generate(email);
    } catch (e) {
      rethrow;
    }
  }
}
