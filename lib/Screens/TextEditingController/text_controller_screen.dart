import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/ending_screen.dart';
import 'package:widgets_app/Screens/home_screen.dart';

class TextControllerScreen extends StatefulWidget {
  const TextControllerScreen({super.key});

  @override
  State<TextControllerScreen> createState() => _TextControllerScreenState();
}

class _TextControllerScreenState extends State<TextControllerScreen> {
  final textEditingController = TextEditingController(text: "eslam");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f2b6d),
        title: const Text("TextEditingController"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  value = textEditingController.text;
                });
              },
              controller: textEditingController,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "the TextField Text is : ${textEditingController.text}",
              style: const TextStyle(fontSize: 25),
            ),
            Spacer(),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color(0xff1f2b6d)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) {
                        return const EndingScreen();
                      }),
                    );
                  },
                  child: const Text(
                    "Go to Next Page",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
