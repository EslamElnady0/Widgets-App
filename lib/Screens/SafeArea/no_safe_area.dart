import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/SafeArea/safe_area.dart';

class NoSafeArea extends StatelessWidget {
  const NoSafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(border: Border.all()),
          child: Column(
            children: [
              const Spacer(
                flex: 5,
              ),
              const Text(
                "Screen without SafeArea Widget",
                style: TextStyle(fontSize: 20),
              ),
              const Spacer(
                flex: 3,
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
                      return const SafeAreaScreen();
                    }));
                  },
                  child: const Text(
                    "Go to next page",
                    style: TextStyle(color: Colors.white),
                  )),
              const Spacer(
                flex: 1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
