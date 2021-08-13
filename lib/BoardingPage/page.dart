import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  final String? description;
  final String? title;
  final Widget? imagePath;
  Pages({this.description, this.title, this.imagePath, Key? key})
      : super(key: key);
  @override
  _PagesState createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Image
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: widget.imagePath,
          ),
        ),
        //Description

        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: Text(
            widget.title!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.description!,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
