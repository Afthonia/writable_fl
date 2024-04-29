// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class BookModel {
  int id;
  String userID;
  bool isPublished = false;
  String? coverURL;
  String title;
  String? subtitle;
  DateTime createdAt;
  DateTime? publishedAt;

  BookModel({
    required this.id,
    required this.userID,
    required this.isPublished,
    this.coverURL,
    required this.title,
    this.subtitle,
    required this.createdAt,
    this.publishedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user_id': userID,
      'is_published': isPublished,
      'cover_url': coverURL,
      'title': title,
      'subtitle': subtitle,
      'created_at': createdAt.millisecondsSinceEpoch,
      'published_at': publishedAt?.millisecondsSinceEpoch,
    };
  }

  factory BookModel.fromMap(Map<String, dynamic> map) {
    return BookModel(
      id: map['id'] as int,
      userID: map['user_id'] as String,
      isPublished: map['is_published'] as bool,
      coverURL: map['cover_url'] != null ? map['cover_url'] as String : null,
      title: map['title'] as String,
      subtitle: map['subtitle'] != null ? map['subtitle'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
      publishedAt: map['published_at'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['published_at'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory BookModel.fromJson(String source) =>
      BookModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
