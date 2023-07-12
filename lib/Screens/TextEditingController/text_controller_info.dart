import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/TextEditingController/text_controller_screen.dart';

class TextControllerInfo extends StatelessWidget {
  const TextControllerInfo({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "TextEditingController : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "TextEditingController is a widget that manages the text being edited by a text input field. It is responsible for capturing and managing the user's input, and providing methods for manipulating the text."),
              const SizedBox(
                height: 10,
              ),
              const Text("Using it, we can set initial value to a text field."),
              const Text(
                  "text controller value gets updated due to listeners added to the controller."),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Most Important Parameters : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "1-text: This parameter sets or gets the current text value of the TextField or TextFormField"),
              const Text(
                  "2-onChanged: This is a callback function that is called every time the text in the TextField or TextFormField changes."),
              const Text(
                  "3-onEditingComplete: This is a callback function that is called when the user presses the 'done' or 'return' key on the keyboard."),
              const Text(
                  "4-maxLength: This parameter sets the maximum number of characters that can be entered into the TextField or TextFormField."),
              const Text(
                  "5-keyboardType: This parameter sets the type of keyboard that is displayed when the TextField or TextFormField is focused."),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Infinity Loops Issue : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "When we modify the value of text of text field inside of listener function(like add listener), infinite loops occur inside the text editing controller"),
              const Text(
                  "And thats because when you add a listener to the controller and modify the text in the listener. When the text is modified, the listener is called again, which modifies the text again, which triggers the listener again, and so on."),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "How To Avoid Infinity Loops  : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "By modifying the text out side the listener ,but if its a must to modify it in the listener, we should make sure that we dispose our controller(to avoid memory leaks) and remove the listener"),
              const SizedBox(
                height: 50,
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
                        return const TextControllerScreen();
                      }));
                    },
                    child: const Text(
                      "Go to Next Page",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
