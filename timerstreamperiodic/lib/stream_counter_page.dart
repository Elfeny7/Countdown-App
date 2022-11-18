import 'package:flutter/material.dart';

class StreamCounterPage extends StatelessWidget {
  StreamCounterPage({Key? key}) : super(key: key);
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<String>(
          stream: Stream.periodic(Duration(seconds: 1), (computationCount) {
            _count++;
            return _count.toString();
          }),
          builder: (context, snapshot) {
            return Center(
              child: Text(snapshot.data ?? "-"),
            );
          }),
    );
  }
}
