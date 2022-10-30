import 'package:get_server/get_server.dart';

import '../../../components/failure.dart';
import '../../../components/future_sucess.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    try {
      return FutureSuccess(
        method: controller.register,
      );
    } catch (e) {
      return Failure(error: e.toString());
    }
  }
}
