import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChapterModel {
  int id;
  int bookID;
  String name;
  String? content;
  DateTime createdAt;

  ChapterModel({
    required this.id,
    required this.bookID,
    required this.name,
    this.content,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'book_id': bookID,
      'name': name,
      'content': content,
      'created_at': createdAt.millisecondsSinceEpoch,
    };
  }

  factory ChapterModel.fromMap(Map<String, dynamic> map) {
    return ChapterModel(
      id: map['id'] as int,
      bookID: map['book_id'] as int,
      name: map['name'] as String,
      content: map['content'] != null ? map['content'] as String : null,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory ChapterModel.fromJson(String source) =>
      ChapterModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
