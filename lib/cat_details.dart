import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/cat.dart';

class CatsDetailsWidget extends StatefulWidget {
  final Cat cat;
  const CatsDetailsWidget({super.key, required this.cat});

  @override
  State<CatsDetailsWidget> createState() => _CatsDetailsWidgetState();
}

class _CatsDetailsWidgetState extends State<CatsDetailsWidget> {
  bool isNameColored = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(widget.cat.imageLink),
        Text(
          widget.cat.name,
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: isNameColored ? Colors.deepPurple : Colors.black),
        ),
        Text("Origin: ${widget.cat.origin}"),
        Text("Max Weight: ${widget.cat.maxWeight}"),
        Text("Min Weight: ${widget.cat.minWeight}"),
        Text("Length: ${widget.cat.length}"),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isNameColored = !isNameColored;
              });
            },
            child: Text("Change Name Color")),
        // Text("Intelligence: ${cat.intelligence}"),
      ],
    );
  }
}
