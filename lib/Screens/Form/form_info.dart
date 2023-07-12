import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/Form/form_screen.dart';

class FormInfo extends StatelessWidget {
  const FormInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f2b6d),
        title: const Text("Form"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Form :",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "A form widget is a user interface component that provides a way to collect input from the user."),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Uses :",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "The purpose of a form widget is to manage the state of the form and validate the input entered by the user."),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "When the user submits the form, the form widget can then handle the data and perform any necessary actions, such as sending the data to a server or updating the state of the app."),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Most Important Parameters :",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "1-key: This parameter is used to uniquely identify the form widget."),
          const Text(
              "2-autovalidateMode: This parameter determines when the form field validators are called. "),
          const Text(
              "3-child: This parameter is used to define the child widgets of the form."),
          const Text(
              "4-onChanged: This parameter is a callback function that is called whenever the form data changes."),
          const Text(
              "5-onSaved: This parameter is a callback function that is called when the form is submitted."),
          const Text(
              "key: This parameter is used to uniquely identify the form widget."),
          const Text(
              "6-validator: This parameter is a callback function that is used to validate the form data entered by the user."),
          const Spacer(),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    backgroundColor: const Color(0xff1f2b6d)),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const FormScreen();
                  }));
                },
                child: const Text(
                  "Go to Next Page",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ]),
      ),
    );
  }
}
