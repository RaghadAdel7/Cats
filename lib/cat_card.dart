import "package:flutter/material.dart";
import "package:flutter_application_1/cats_details_screen.dart";
import "package:flutter_application_1/model/cat.dart";

class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return CatDetailsScreen(cat: cat);
          }));
        },
        child: Card(
            child: Column(
          children: [
            Expanded(
              child: Image.network(
                  width: double.infinity, fit: BoxFit.cover, cat.imageLink),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                cat.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple),
              ),
            )
          ],
        )));
  }
}
