import 'dart:async';

import 'package:flutter/material.dart';

class Gautam extends StatefulWidget {
  const Gautam({Key? key}) : super(key: key);

  @override
  State<Gautam> createState() => _GautamState();
}

class _GautamState extends State<Gautam> {
  int _elapsedTime = 0;
  late Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stop Watch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text("Elapsed Time: $_elapsedTime"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  child: Text("Start"),
                  onPressed: _startTimer,
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  child: Text("Stop"),
                  onPressed: _stopTimer,
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  child: Text("Reset"),
                  onPressed: _resetTimer,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime++;
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
  }

  void _resetTimer() {
    _timer.cancel();
    setState(() {
      _elapsedTime = 0;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }


}
