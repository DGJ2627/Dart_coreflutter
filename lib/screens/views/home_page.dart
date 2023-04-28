import 'package:flutter/material.dart';
import 'dart:async';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  Stopwatch _stopwatch = Stopwatch();
  late Timer _timer;
  Duration _elapsedTime = Duration.zero;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 10), _onTick);
  }

  void _onTick(Timer timer) {
    setState(() {
      _elapsedTime = _stopwatch.elapsed;
    });
  }

  void _toggleStopwatch() {
    if (_stopwatch.isRunning) {
      _stopwatch.stop();
    } else {
      _stopwatch.start();
    }
  }

  void _resetStopwatch() {
    _stopwatch.reset();
    setState(() {
      _elapsedTime = Duration.zero;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedTime =
        '${_elapsedTime.inMinutes}:${(_elapsedTime.inSeconds % 60).toString().padLeft(2, '0')}.${(_elapsedTime.inMilliseconds % 1000 / 10).floor().toString().padLeft(2, '0')}';

    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              formattedTime,
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _toggleStopwatch,
                  child: Text(_stopwatch.isRunning ? 'Stop' : 'Start'),
                ),
                SizedBox(width: 12.0),
                ElevatedButton(
                  onPressed: _resetStopwatch,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
