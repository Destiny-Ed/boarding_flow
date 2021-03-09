import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  final String description;
  final String title;
  final String imagePath;
  Pages({this.description, this.title, this.imagePath, Key key})
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
          child:
              Image(image: AssetImage(widget.imagePath), fit: BoxFit.fitHeight),
        ),
        //Description
        ListTile(
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            widget.description,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
