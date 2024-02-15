// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// List<Cat> welcomeFromJson(String str) =>
//     List<Cat>.from(json.decode(str).map((x) => Cat.fromJson(x)));

// String welcomeToJson(List<Cat> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cat {
  String length;
  String origin;
  String imageLink;
  double minWeight;
  double maxWeight;
  String name;

  Cat({
    required this.length,
    required this.origin,
    required this.imageLink,
    required this.minWeight,
    required this.maxWeight,
    required this.name,
  });

  factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        length: json["length"],
        origin: json["origin"],
        imageLink: json["image_link"],
        minWeight: json["min_weight"]?.toDouble(),
        maxWeight: json["max_weight"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "length": length,
        "origin": origin,
        "image_link": imageLink,
        "min_weight": minWeight,
        "max_weight": maxWeight,
        "name": name,
      };
}
