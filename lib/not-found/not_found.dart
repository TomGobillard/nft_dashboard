import 'package:flutter/cupertino.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Are you lost ?',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}
