import 'dart:convert';

class UserDashboardModel {
  String? profileImage;
  String name;
  String? surname;
  String username;
  DateTime? birthday;
  String email;
  String gender;
  String inspiration;
  String authorLevel = "Rookie";
  String authorTitle;
  DateTime lastVisited;
  DateTime createdAt;

  String? bio;
  String? favoriteAuthor;
  String? favoriteBook;
  String? writingKind;
  String? writeHow;
  String? writeWhere;
  String? writeWhen;
  String? usedDevice;
  String? hobbies;
  
  UserDashboardModel({
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
    this.bio,
    this.favoriteAuthor,
    this.favoriteBook,
    this.writingKind,
    this.writeHow,
    this.writeWhere,
    this.writeWhen,
    this.usedDevice,
    this.hobbies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'profileImage': profileImage,
      'name': name,
      'surname': surname,
      'username': username,
      'birthday': birthday?.millisecondsSinceEpoch,
      'email': email,
      'gender': gender,
      'inspiration': inspiration,
      'authorLevel': authorLevel,
      'authorTitle': authorTitle,
      'lastVisited': lastVisited.millisecondsSinceEpoch,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'bio': bio,
      'favoriteAuthor': favoriteAuthor,
      'favoriteBook': favoriteBook,
      'writingKind': writingKind,
      'writeHow': writeHow,
      'writeWhere': writeWhere,
      'writeWhen': writeWhen,
      'usedDevice': usedDevice,
      'hobbies': hobbies,
    };
  }

  factory UserDashboardModel.fromMap(Map<String, dynamic> map) {
    return UserDashboardModel(
      profileImage: map['profile_image'] != null ? map['profile_image'] as String : null,
      name: map['name'] as String,
      surname: map['surname'] != null ? map['surname'] as String : null,
      username: map['username'] as String,
      birthday: map['birthday'] != null ? DateTime.fromMillisecondsSinceEpoch(map['birthday'] as int) : null,
      email: map['email'] as String,
      gender: map['gender'] as String,
      inspiration: map['inspiration'] as String,
      authorLevel: map['author_level'] as String,
      authorTitle: map['author_title'] as String,
      lastVisited: DateTime.fromMillisecondsSinceEpoch(map['lastVisited'] as int),
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt'] as int),
      bio: map['bio'] != null ? map['bio'] as String : null,
      favoriteAuthor: map['favorite_author'] != null ? map['favorite_author'] as String : null,
      favoriteBook: map['favorite_book'] != null ? map['favorite_book'] as String : null,
      writingKind: map['writing_kind'] != null ? map['writing_kind'] as String : null,
      writeHow: map['write_how'] != null ? map['write_how'] as String : null,
      writeWhere: map['write_where'] != null ? map['write_where'] as String : null,
      writeWhen: map['write_when'] != null ? map['write_when'] as String : null,
      usedDevice: map['used_device'] != null ? map['used_device'] as String : null,
      hobbies: map['hobbies'] != null ? map['hobbies'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserDashboardModel.fromJson(String source) => UserDashboardModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
