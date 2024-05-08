// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String id;
  String? profileImage;
  String name;
  String? surname;
  String username;
  DateTime? birthday;
  String email;
  String gender;
  String inspiration;
  String authorLevel;
  String authorTitle;
  DateTime lastVisited;
  DateTime createdAt;
  List<dynamic> readingList;

  UserModel({
    required this.id,
    this.profileImage,
    required this.name,
    this.surname,
    required this.username,
    this.birthday,
    required this.email,
    required this.gender,
    required this.inspiration,
    required this.authorLevel,
    required this.authorTitle,
    required this.lastVisited,
    required this.createdAt,
    required this.readingList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'surname': surname,
      'username': username,
      'email': email,
      'gender': gender,
      'inspiration': inspiration,
      'author_level': authorLevel,
      'author_title': authorTitle,
      'last_visited': lastVisited.millisecondsSinceEpoch,
      'created_at': createdAt.millisecondsSinceEpoch,
      'reading_list': readingList,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] as String,
      profileImage:
          map['profile_image'] != null ? map['profile_image'] as String : null,
      name: map['name'] as String,
      surname: map['surname'] != null ? map['surname'] as String : null,
      username: map['username'] as String,
      email: map['email'] as String,
      gender: map['gender'] as String,
      inspiration: map['inspiration'] as String,
      authorLevel: map['author_level'] as String,
      authorTitle: map['author_title'] as String,
      lastVisited:
          DateTime.fromMillisecondsSinceEpoch(map['last_visited'] as int),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
      birthday: map['favorite_book'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['birthday'] as int)
          : null,
      readingList: map['reading_list'] != null ? map['reading_list'] as List<dynamic> : [],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
