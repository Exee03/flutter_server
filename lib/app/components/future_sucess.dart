import 'package:get_server/get_server.dart';

import 'failure.dart';
import 'sucess.dart';

class FutureSuccess extends StatefulWidget {
  final Future Function(ContextRequest contextRequest) method;

  const FutureSuccess({
    Key? key,
    required this.method,
  }) : super(key: key);

  @override
  _FutureSuccessState createState() => _FutureSuccessState();
}

class _FutureSuccessState extends State<FutureSuccess> {
  bool loaded = false;
  String errorMessage = '';
  late dynamic data;

  bool get hasError => errorMessage.isNotEmpty;

  @override
  void initState() async {
    await getData();
    super.initState();
  }

  Future getData() async {
    try {
      data = await widget.method(context.request);
      setState(() {
        loaded = true;
      });
    } catch (e) {
      setState(() {
        loaded = true;
        errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (hasError) return Failure(error: errorMessage);
    if (loaded) return Success(data: data);

    return WidgetEmpty();
  }
}
