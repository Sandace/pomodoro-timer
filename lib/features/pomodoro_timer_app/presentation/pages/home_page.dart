import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pomodoro_timer/core/my-globals.dart';
import 'package:pomodoro_timer/features/pomodoro_timer_app/presentation/pages/pomodoro_timer_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isStarted = false;
  Timer? countDownTimer;
  Duration myDuration = Duration(minutes: 25);
  Duration get getmyDuration {
    return myDuration;
  }

  @override
  void initState() {
    super.initState();
  }

  void startTimer() {
    countDownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countDownTimer!.cancel());
  }

  // Step 5
  void resetTimer() {
    stopTimer();
    setState(() => myDuration = Duration(minutes: 25));
  }

  // Step 6
  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countDownTimer!.cancel();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final minutes =
        myDuration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds =
        myDuration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return Scaffold(
      backgroundColor: Color.fromRGBO(76, 145, 149, 0.9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8),
            // alignment: Alignment.center,

            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      MaterialButton(
                        // style: MaterialButton.styleFrom(
                        //   backgroundColor: Color(00000026),
                        // ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        color: Color(00000026),

                        onPressed: () {},

                        child: const Text(
                          'Pomodoro',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'ArialRounded'),
                        ),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // color: Color(00000026),
                        onPressed: () {},
                        child: const Text(
                          'Short Break',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // color: Color(00000026),
                        onPressed: () {},
                        child: const Text(
                          'Long Break',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'ArialRounded'),
                        ),
                      )
                    ],
                  ),
                  Text(
                    '$minutes:$seconds',
                    style: TextStyle(
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                        onPressed: () {
                          setState(() {
                            if (isStarted) {
                              isStarted = false;
                              stopTimer();
                              resetTimer();
                            } else {
                              isStarted = true;
                              startTimer();
                            }
                          });
                        },
                        child: Text(
                          isStarted ? "STOP" : "START",
                          style:
                              TextStyle(fontSize: 22, color: shortBreakColor),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
