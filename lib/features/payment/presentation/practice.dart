import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressBarExample extends StatefulWidget {
  @override
  _ProgressBarExampleState createState() => _ProgressBarExampleState();
}

class _ProgressBarExampleState extends State<ProgressBarExample> {
  double _progress = 0.5; // Initial progress value (50%)

  void _increaseProgress() {
    setState(() {
      _progress = (_progress + 0.1).clamp(0.0, 1.0); // Ensures it stays within range
    });
  }

  void _decreaseProgress() {
    setState(() {
      _progress = (_progress - 0.1).clamp(0.0, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Bar Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LinearPercentIndicator(
              fillColor: Colors.red,

              barRadius: Radius.circular(10),
              width: MediaQuery.of(context).size.width - 110,
              lineHeight: 7.0,
              percent: _progress, // Dynamic progress value
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.green, // Change this if needed
              backgroundColor: Colors.grey[300]!,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _decreaseProgress,
                  child: Text('- Decrease'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: _increaseProgress,
                  child: Text('+ Increase'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
