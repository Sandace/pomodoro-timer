// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'home_page.dart';

// class PomodoroPage extends StatefulWidget {
//   PomodoroPage({Key? key}) : super(key: key);

//   @override
//   State<PomodoroPage> createState() => _PomodoroPageState();
// }

// class _PomodoroPageState extends State<PomodoroPage> {
//   // get minutes => ;
  
  // get seconds => null;

  // bool isStarted = false;
  // Timer? countDownTimer;
  // Duration myDuration = Duration(minutes: 25);

  // @override
  // void initState() {
  //   super.initState();
  // }

  // void startTimer() {
  //   countDownTimer =
  //       Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  // }

  // void stopTimer() {
  //   setState(() => countDownTimer!.cancel());
  // }

  // // Step 5
  // void resetTimer() {
  //   stopTimer();
  //   setState(() => myDuration = Duration(days: 5));
  // }

  // Step 6
  // void setCountDown() {
  //   final reduceSecondsBy = 1;
  //   setState(() {
  //     final seconds = myDuration.inSeconds - reduceSecondsBy;
  //     if (seconds < 0) {
  //       countDownTimer!.cancel();
  //     } else {
  //       myDuration = Duration(seconds: seconds);
  //     }
  //   });
  // }

  // @override
  // Widget build(BuildContext context) {
    // final minutes =
    //     myDuration.inMinutes.remainder(25).toString().padLeft(2, '0');
    // final seconds =
    //     myDuration.inSeconds.remainder(60).toString().padLeft(2, '0');
  
//     return Container(
//       child: Column(
//         children: [
//           Text(
//             // '$minutes.toString().padLeft(2,'0').:$seconds.toString().padLeft(2,'0')',

//             '$minutes:$seconds',
//             style: TextStyle(fontSize: 75, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
// }
