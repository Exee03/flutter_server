import 'package:get_server/get_server.dart';

import '../../../components/failure.dart';
import '../../../components/future_sucess.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    try {
      return FutureSuccess(
        method: controller.login,
      );
    } catch (e) {
      return Failure(error: e.toString());
    }
  }
}
