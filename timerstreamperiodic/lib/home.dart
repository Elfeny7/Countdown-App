import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:timerstreamperiodic/bloc/timer_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: StreamBuilder<String?>(
                stream: Stream.periodic(Duration(seconds: 1), (_) {
                  final diff = DateTime(2022, 12, 1).difference(DateTime.now());
                  return '${(diff.inHours / 24).ceil()} Hari : ${diff.inHours.remainder(24)} Jam : ${diff.inMinutes.remainder(60)} Menit : ${diff.inSeconds.remainder(60)} Detik';
                }),
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data ?? "-",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: Icon(Icons.stop),
      ),
    );
  }
}
