import 'package:get_server/get_server.dart';

import '../../../components/failure.dart';
import '../../../components/sucess.dart';
import '../controllers/user_controller.dart';

class UserView extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    try {
      return Success(
        data: controller.getUser(context.request),
      );
    } catch (e) {
      return Failure(error: e.toString());
    }
  }
}
