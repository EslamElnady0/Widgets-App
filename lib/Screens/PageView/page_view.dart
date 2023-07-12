import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/TextFormField/text_form_field_info.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color(0xff1f2b6d),
          title: const Text("Page View"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Example for Page View : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const Spacer(),
            SizedBox(
                height: 300,
                child: PageView(
                  onPageChanged: (index) {
                    print(index);
                  },
                  controller:
                      PageController(initialPage: 0, viewportFraction: 1),
                  children: [
                    Image.asset("assets/dash2022_4k.png"),
                    Image.asset("assets/flutter_logo.jpg"),
                    Image.asset("assets/pic1.png"),
                  ],
                )),
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
                    return const TextFormFieldInfo();
                  }));
                },
                child: const Text(
                  "Go to Next Widget",
                  style: TextStyle(color: Colors.white),
                )),
          ]),
        ));
  }
}
