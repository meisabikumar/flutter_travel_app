import 'dart:convert';

class DataModel {
  String name;
  String img;
  int price;
  int people;
  int stars;
  String description;
  String location;

  DataModel({
    required this.name,
    required this.img,
    required this.price,
    required this.people,
    required this.stars,
    required this.description,
    required this.location,
  });

  // DataModel()

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'img': img,
      'price': price,
      'people': people,
      'stars': stars,
      'description': description,
      'location': location,
    };
  }

  factory DataModel.fromMap(Map<String, dynamic> map) {
    return DataModel(
      name: map['name'],
      img: map['img'],
      price: map['price'],
      people: map['people'],
      stars: map['stars'],
      description: map['description'],
      location: map['location'],
    );
  }

  String toJson() => json.encode(toMap());

  // factory DataModel.fromJson(String source) => DataModel.fromMap(json.decode(source));

  factory DataModel.fromJson(Map<String, dynamic> source) =>
      DataModel.fromMap(source);
}
