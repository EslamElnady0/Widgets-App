import 'dart:async';

import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/Timer/timer_info.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  int x = 5;
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (x > 0) {
        setState(() {
          x--;
        });
      } else {
        timer.cancel();
      }
    });
    // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    //   return const TimerInfo();
    // }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/dash2022_4k.png"),
                fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Text(
              x == 0 ? "Done" : x.toString(),
              style: const TextStyle(fontSize: 40),
            ),
            const Spacer(
              flex: 9,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: const Color(0xff1f2b6d)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const TimerInfo();
                  }));
                },
                child: const Text(
                  "Go to Next Page",
                  style: TextStyle(color: Colors.white),
                )),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
