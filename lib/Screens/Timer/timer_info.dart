import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/PageView/page_view_info.dart';

class TimerInfo extends StatelessWidget {
  const TimerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f2b6d),
        title: const Text("Timer"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Timer : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "-A timer widget is a type of widget that allows you to display the time elapsed or remaining for a particular task or event.\n-The timer widget can be used to create a countdown timer or a stopwatch.\n-which can be useful in various applications such as games, workout apps, and productivity tools",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Most Important Parameters : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "1-duration\n2-onTick\n3-onComplete\n4-autoStart\n5-TextStyle\n6-interval\n",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const Spacer(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: const Color(0xff1f2b6d)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const PageViewInfo();
                  }));
                },
                child: const Text(
                  "Go to Next Page",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
