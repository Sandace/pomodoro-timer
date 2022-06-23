// import 'dart:async';

// import 'package:flutter/widgets.dart';


// class ConutDownTimer extends StatefulWidget{
//   Timer? countDownTimer;
//   Duration myDuration = Duration(minutes: 25);
//   void startTimer() {
//     countDownTimer =
//         Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   void stopTimer() {
//     setState(() => countDownTimer!.cancel());
//   }

//   // Step 5
//   void resetTimer() {
//     stopTimer();
//     setState(() => myDuration = Duration(minutes: 25));
//   }

//   // Step 6
//   void setCountDown() {
//     final reduceSecondsBy = 1;
//     setState(() {
//       final seconds = myDuration.inSeconds - reduceSecondsBy;
//       if (seconds < 0) {
//         countDownTimer!.cancel();
//       } else {
//         myDuration = Duration(seconds: seconds);
//       }
//     });
//   }
  
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }