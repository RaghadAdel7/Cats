import 'package:flutter/material.dart';
import 'package:flutter_application_1/cat_details.dart';
import 'package:flutter_application_1/model/cat.dart';

class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: CatsDetailsWidget(
        cat: cat,
      ),
    );
  }
}

// class CatsDetailsWidget extends StatelessWidget {
//   const CatsDetailsWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Image.network(src),
//       Text("cat Name",
//       style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//       ),
//       Text(""),
//       Text(""),
//       Text(""),
//       Text(""),
//       Text(""),
      
//     ]);
//   }
// }
