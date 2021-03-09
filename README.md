# boarding_flow

A custom flutter package for creating amazing onBoarding pages.

## Usage

[Example] (https://github.com/Destiny-Ed/boarding_flow/blob/main/example/boarding_page.dartt)

To use this package : add the dependency to your [pubspec.yaml] file

```yaml
dependencies:
  flutter:
    sdk: flutter
  rating_widget:
```

Run flutter pub get

## Add To Your Dart Class

```dart

dimport 'package:boarding_flow/BoardingPage/boarding_flow.dart';
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
      imagePath: "assets/ref.png",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    Pages(
      title: "Research",
      imagePath: "assets/ref.png",
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    ),
    Pages(
      title: "Contribute",
      imagePath: "assets/ref.png",
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

```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
