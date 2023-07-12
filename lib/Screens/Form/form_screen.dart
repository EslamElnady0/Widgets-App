import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/TextEditingController/text_controller_info.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  var formKey = GlobalKey<FormState>();
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
        child: Column(
          children: [
            const Text(
              "Example for Form Validation : ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Spacer(
              flex: 5,
            ),
            Form(
                autovalidateMode: autovalidateMode,
                key: formKey,
                child: TextFormField(
                  autovalidateMode: autovalidateMode,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      hintText: "Email Validation TextFormField",
                      border: OutlineInputBorder()),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "this field is required";
                    } else if (!(value.contains("@")) ||
                        !(value.contains(".com"))) {
                      return "Write a proper email format";
                    } else {
                      return null;
                    }
                  },
                )),
            const Spacer(
              flex: 1,
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: const Color(0xff1f2b6d)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text("No Problems, All good")));
                    }
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  },
                  child: const Text(
                    "Validate",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const Spacer(
              flex: 5,
            ),
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
                      return const TextControllerInfo();
                    }));
                  },
                  child: const Text(
                    "Go to Next Widget",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
