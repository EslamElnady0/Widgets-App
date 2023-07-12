import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgets_app/Screens/SafeArea/no_safe_area.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Text(
                "Flutter Widgets",
                style: GoogleFonts.pacifico(
                    fontSize: 35, color: const Color(0xff1f2b6d)),
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
                      return const NoSafeArea();
                    }));
                  },
                  child: const Text(
                    "Go to Fisrt Widget",
                    style: TextStyle(color: Colors.white),
                  ))
            ]),
          )),
    );
  }
}
