// To parse this JSON data, do
//
//     final menumodel = menumodelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Menumodel> menumodelFromJson(String str) => List<Menumodel>.from(json.decode(str).map((x) => Menumodel.fromJson(x)));
String menumodelToJson(List<Menumodel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Menumodel {
    Menumodel({
        required this.id,
        required this.name,
        required this.price,
        required this.description,
        required this.image,
        required this.longdescription,
    });

    final int id;
    final String name;
    final int price;
    final String description;
    final String image;
    final String longdescription;

    factory Menumodel.fromJson(Map<String, dynamic> json) => Menumodel(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        description: json["description"],
        image: json["image"],
        longdescription: json["longdescription"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "price": price,
        "description": description,
        "image": image,
        "longdescription": longdescription,
    };
}
