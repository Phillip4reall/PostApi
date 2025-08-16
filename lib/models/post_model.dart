// class Productfromapi {
//     Productfromapi({
//         required this.userId,
//         required this.id,
//         required this.title,
//         required this.body,
//     });

//     final int? userId;
//     final int? id;
//     final String? title;
//     final String? body;

//     Productfromapi copyWith({
//         int? userId,
//         int? id,
//         String? title,
//         String? body,
//     }) {
//         return Productfromapi(
//             userId: userId ?? this.userId,
//             id: id ?? this.id,
//             title: title ?? this.title,
//             body: body ?? this.body,
//         );
//     }

//     factory Productfromapi.fromJson(Map<String, dynamic> json){ 
//         return Productfromapi(
//             userId: json["userId"],
//             id: json["id"],
//             title: json["title"],
//             body: json["body"],
//         );
//     }

//     Map<String, dynamic> toJson() => {
//         "userId": userId,
//         "id": id,
//         "title": title,
//         "body": body,
//     };

// }

// lib/models/post_model.dart

class Productfromapi {
  final int id;
  final String title;
  final String body;

  Productfromapi({
    required this.id,
    required this.title,
    required this.body,
  });

   Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
    };
  }

  factory Productfromapi.fromJson(Map<String, dynamic> json) {
    return Productfromapi(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
 // String toJson() => json.encode(toMap());
}
