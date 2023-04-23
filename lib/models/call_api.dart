// To parse this JSON data, do
//
//     final coworking = coworkingFromJson(jsonString);

import 'dart:convert';

List<Coworking> coworkingFromJson(String str) => List<Coworking>.from(json.decode(str).map((x) => Coworking.fromJson(x)));

String coworkingToJson(List<Coworking> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Coworking {
    Coworking({
        required this.id,
        required this.namecowork,
        required this.description,
        required this.categories,
        required this.logo,
        required this.imageUrl,
    });

    int id;
    String namecowork;
    String description;
    String categories;
    String logo;
    String imageUrl;

    factory Coworking.fromJson(Map<String, dynamic> json) => Coworking(
        id: json["id"],
        namecowork: json["namecowork"],
        description: json["description"],
        categories: json["categories"],
        logo: json["logo"],
        imageUrl: json["image_url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "namecowork": namecowork,
        "description": description,
        "categories": categories,
        "logo": logo,
        "image_url": imageUrl,
    };
}

