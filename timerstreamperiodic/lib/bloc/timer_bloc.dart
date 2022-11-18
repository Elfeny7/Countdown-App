import 'dart:async';

class Time {
  int seconds;
  int minutes;
  int hours;

  Time(this.hours, this.minutes, this.seconds);
}

class CounterTime {
  int test = 3;
  int test2 = 1;
  int test3 = 0;

  CounterTime() {
    _timerController.sink.add(test);
  }

  final _timerController = StreamController<int>();
  Stream<int> get timerStream => _timerController.stream;

  countdownTime() {
    final Timer _timerPeriodic =
        Timer.periodic(const Duration(seconds: 1), (timer) {
      test--;
      _timerController.sink.add(test);

      if (test == 0 && test2 == 0 && test3 == 0) {
        timer.cancel();
      } else if (test == 0 && test2 > 0) {
        test2--;
        test = 60;
      }
    });
  }
}
