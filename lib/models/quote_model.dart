// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class QuoteModel {
  int id;
  int userID;
  String content;
  DateTime createdAt;

  QuoteModel({
    required this.id,
    required this.userID,
    required this.content,
    required this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user_id': userID,
      'content': content,
      'created_at': createdAt.millisecondsSinceEpoch,
    };
  }

  factory QuoteModel.fromMap(Map<String, dynamic> map) {
    return QuoteModel(
      id: map['id'] as int,
      userID: map['user_id'] as int,
      content: map['content'] as String,
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['created_at'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuoteModel.fromJson(String source) => QuoteModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
