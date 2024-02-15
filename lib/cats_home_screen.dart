import 'package:flutter/material.dart';
import 'package:flutter_application_1/cat_card.dart';
import 'package:flutter_application_1/main.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cats'),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite, color: Colors.white))
        ],
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index) {
          final cat = cats[index];
          return CatCard(cat: cat);
        },
        // children: [
        //   CatCard(
        //     imageLink: "https://api-ninjas.com/images/cats/abyssinian.jpg",
        //     catName: "Abyssinian",
        //   ),
        //   CatCard(
        //       imageLink: "https://api-ninjas.com/images/cats/aegean.jpg",
        //       catName: 'Aegean')
        // ],
      ),
    );
  }
}

// class CatCard extends StatelessWidget {
//   final String imageLink;
//   final String catName;

//   const CatCard({super.key, required this.imageLink, required this.catName});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//         Expanded(
//           child: Image.network(
//             imageLink,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//         ),
//         Text(catName)
//       ],
//     ));
//   }
// }
