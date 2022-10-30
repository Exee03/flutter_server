import 'package:flutter_server/app/data/models/user_model.dart';
import 'package:flutter_server/app/data/providers/user_provider.dart';
import 'package:get_server/get_server.dart';

import '../../../utils/token.dart';

class RegisterController extends GetxController {
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

  Future<String> register(ContextRequest req) async {
    try {
      final payload = await req.payload();

      if (payload == null) throw 'Unexpected error';
      if (payload is! Map<String, dynamic>) throw 'Unexpected error';
      validate(payload);

      final user = User.fromJson(payload);
      _userProvider.saveUser(user);

      return Token.generate(user.email!);
    } catch (e) {
      rethrow;
    }
  }

  void validate(Map<String, dynamic> json) {
    final inputs = [
      'username',
      'email',
      'password',
    ];
    inputs.forEach((element) => checkInput(element, json));
  }

  void checkInput(String key, Map<String, dynamic> json) {
    final exist = json.containsKey(key);
    if (!exist) throw '$key is required';
  }
}
