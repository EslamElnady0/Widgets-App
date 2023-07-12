import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/TextFormField/text_form_field_screen.dart';

class TextFormFieldInfo extends StatelessWidget {
  const TextFormFieldInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f2b6d),
        title: const Text("TextFormField"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TextFormField : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "the TextFormField widget is a material design text input field that allows users to input and edit text. It's a stateful widget that combines a TextField with some additional functionality, such as validation and error messages."),
              SizedBox(
                height: 10,
              ),
              Text(
                "Most Important Parameters : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "1-hintText\n2-hintStyle\n3-hintMaxLines\n 4-prefix icon\n5-suffix icon\n6-label\n7-filled\n8-icon\n9-initialValue\n10-keyboardType\n11-maxLine,min\n12-maxLength\n13-obscureText\n14-readOnly\n15-textInputAction\n16-validator",
                style: TextStyle(fontSize: 18),
              ),
            ],
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
                  return const TextFormFieldScreen();
                }));
              },
              child: const Text(
                "Go to Next Page",
                style: TextStyle(color: Colors.white),
              )),
        ]),
      ),
    );
  }
}
