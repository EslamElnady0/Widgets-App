import 'package:flutter/material.dart';
import 'package:widgets_app/Screens/PageView/page_view.dart';

class PageViewInfo extends StatelessWidget {
  const PageViewInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff1f2b6d),
        title: const Text("Page View"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Page View : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "PageView is a widget that displays a scrollable list of pages. Each page can contain different content, such as text, images, or other widgets. "),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Uses : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "The PageView widget is commonly used for implementing onboarding screens, image galleries, or any other feature that requires swiping between different pages"),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Most Important Parameters : ",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "1-children or itemBuilder: These are the parameters that define the content of each page in the PageView"),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "2-scrollDirection: This parameter specifies the direction in which the pages should be scrolled. "),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "3-pageSnapping: This parameter determines whether the pages should snap to the nearest page when scrolling stops. "),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "4-controller: This parameter allows you to control the scroll position of the PageView. "),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "5-physics: This parameter specifies the scrolling physics for the PageView.  "),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "6-onPageChanged: This parameter is a callback that is called when the current page index changes.  "),
            const SizedBox(
              height: 10,
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
                    return const PageViewScreen();
                  }));
                },
                child: const Text(
                  "Go to Next Page",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
