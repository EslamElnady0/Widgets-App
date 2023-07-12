import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/SafeArea/safe_area_info.dart';

class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                "Screen with SafeArea Widget",
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
                      return const SafeAreaInfo();
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
    ));
  }
}
