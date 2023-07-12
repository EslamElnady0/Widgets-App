import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/Timer/timer_screen.dart';

class SafeAreaInfo extends StatelessWidget {
  const SafeAreaInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f2b6d),
        title: const Text("Safe Area"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "The SafeArea widget in Flutter is used to ensure that the content of an app is displayed within a safe area of the screen.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Uses : ",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "1-This widget is particularly useful for building apps that need to be compatible with various devices with different screen sizes and aspect ratios.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "2-It helps to avoid any visual issues that may arise due to the different screen sizes, such as content being hidden behind system UI elements or being cut off at the edges of the screen.",
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
              const Text(
                "child: This is the child widget that is wrapped by the SafeArea.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "top: This boolean parameter indicates whether padding should be added to the top of the screen.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "left: This boolean parameter indicates whether padding should be added to the left of the screen. If set to true.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "minimum: This parameter is used to specify a minimum amount of padding that should be added to the safe area.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "maintainBottomViewPadding: This boolean parameter is used to control whether the SafeArea should maintain the bottom view padding.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "minimumVertical: This parameter is similar to the minimum parameter.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "minimumHorizontal: This parameter is also similar to the minimum parameter.",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
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
                      return const TimerScreen();
                    }));
                  },
                  child: const Text(
                    "Go to Next Widget",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
