import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/Form/form_info.dart';

class TextFormFieldScreen extends StatelessWidget {
  const TextFormFieldScreen({super.key});

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
        child: Column(
          children: [
            const Text(
              "Example for TextFormField : ",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TextFormField(
              decoration: const InputDecoration(
                  hintText: "My TextFormField", border: OutlineInputBorder()),
              onChanged: (value) {},
              validator: (value) {},
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
                    return const FormInfo();
                  }));
                },
                child: const Text(
                  "Go to Next Widget",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
