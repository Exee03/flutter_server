import 'package:get_server/get_server.dart';

class Success<T> extends StatelessWidget {
  final T data;

  const Success({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Json({
      'success': true,
      'data': data,
    });
  }
}
