import 'package:get_server/get_server.dart';

class Failure extends StatelessWidget {
  final int code;
  final dynamic error;

  const Failure({
    Key? key,
    this.code = 403,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.statusCode(code);
    return Error(error: error.toString());
  }
}
