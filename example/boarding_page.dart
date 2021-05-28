import 'package:boarding_flow/BoardingPage/boarding_flow.dart';
import 'package:boarding_flow/BoardingPage/page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(StartPage());
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BoardingPage(),
    );
  }
}

class BoardingPage extends StatefulWidget {
  @override
  _BoardingPageState createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  //
  List<Pages> pages = [
    Pages(
      title: "Learn",
      imagePath: Image.asset(
        "assets/ref.png",
        fit: BoxFit.fitHeight,
      ),
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    Pages(
      title: "Research",
      imagePath: Image.asset(
        "assets/ref.png",
        fit: BoxFit.fitHeight,
      ),
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    Pages(
      title: "Contribute",
      imagePath: Image.asset(
        "assets/ref.png",
        fit: BoxFit.fitHeight,
      ),
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
  ];

  //
  @override
  Widget build(BuildContext context) {
    return CustomBordingPage(
      boardingPages: pages,
      lastPageAction: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Perform Action Here")),
        );
      },
    );
  }
}
