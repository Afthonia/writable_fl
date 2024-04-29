import 'dart:convert';

class CharacterModel {
  int id;
  int bookID;
  String name;
  String? description;

  // character
  String? age;
  String? gender;
  String? dateOfBirth;
  String? job;
  String? jobSatisfaction;
  String? health;
  String? relationships;
  String? pets;
  String? world;
  String? areaOfResidence;
  String? neighborhood;
  String? homeDescription;

  // appearance
  String? height;
  String? weight;
  String? ethnicity;
  String? skinTone;
  String? eyeColor;
  String? distinguishFeature;
  String? otherFacialFeatures;
  String? hairstyle;
  String? bodyType;
  String? clothingStyle;
  String? accessories;

  // personality
  String? skills;
  String? incompetence;
  String? talent;
  String? weakness;
  String? hobbies;
  String? habits;
  String? moral;
  String? selfControl;
  String? motivation;
  String? discouragement;
  String? confidenceLevel;
  String? greatestFear;

  // history
  String? childhood;
  String? importantPastEvents;
  String? bestAccomplishment;
  String? otherAccomplishment;
  String? failure;
  String? secrets;
  String? bestMemories;
  String? worstMemories;

  // story
  String? storyRole;
  String? shortTermGoals;
  String? longTermGoals;
  CharacterModel({
    required this.id,
    required this.bookID,
    required this.name,
    this.description,
    this.age,
    this.gender,
    this.dateOfBirth,
    this.job,
    this.jobSatisfaction,
    this.health,
    this.relationships,
    this.pets,
    this.world,
    this.areaOfResidence,
    this.neighborhood,
    this.homeDescription,
    this.height,
    this.weight,
    this.ethnicity,
    this.skinTone,
    this.eyeColor,
    this.distinguishFeature,
    this.otherFacialFeatures,
    this.hairstyle,
    this.bodyType,
    this.clothingStyle,
    this.accessories,
    this.skills,
    this.incompetence,
    this.talent,
    this.weakness,
    this.hobbies,
    this.habits,
    this.moral,
    this.selfControl,
    this.motivation,
    this.discouragement,
    this.confidenceLevel,
    this.greatestFear,
    this.childhood,
    this.importantPastEvents,
    this.bestAccomplishment,
    this.otherAccomplishment,
    this.failure,
    this.secrets,
    this.bestMemories,
    this.worstMemories,
    this.storyRole,
    this.shortTermGoals,
    this.longTermGoals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'bookID': bookID,
      'name': name,
      'description': description,
      'age': age,
      'gender': gender,
      'date_of_birth': dateOfBirth,
      'job': job,
      'job_satisfaction': jobSatisfaction,
      'health': health,
      'relationships': relationships,
      'pets': pets,
      'world': world,
      'area_of_residence': areaOfResidence,
      'neighborhood': neighborhood,
      'home_description': homeDescription,
      'height': height,
      'weight': weight,
      'ethnicity': ethnicity,
      'skin_tone': skinTone,
      'eye_color': eyeColor,
      'distinguish_feature': distinguishFeature,
      'other_facial_features': otherFacialFeatures,
      'hairstyle': hairstyle,
      'body_type': bodyType,
      'clothing_style': clothingStyle,
      'accessories': accessories,
      'skills': skills,
      'incompetence': incompetence,
      'talent': talent,
      'weakness': weakness,
      'hobbies': hobbies,
      'habits': habits,
      'moral': moral,
      'self_control': selfControl,
      'motivation': motivation,
      'discouragement': discouragement,
      'confidence_level': confidenceLevel,
      'greatest_fear': greatestFear,
      'childhood': childhood,
      'important_past_events': importantPastEvents,
      'best_accomplishment': bestAccomplishment,
      'other_accomplishment': otherAccomplishment,
      'failure': failure,
      'secrets': secrets,
      'best_memories': bestMemories,
      'worst_memories': worstMemories,
      'story_role': storyRole,
      'short_term_goals': shortTermGoals,
      'long_term_goals': longTermGoals,
    };
  }

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    return CharacterModel(
      id: map['id'] as int,
      bookID: map['bookID'] as int,
      name: map['name'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      age: map['age'] != null ? map['age'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      dateOfBirth:
          map['date_of_birth'] != null ? map['date_of_birth'] as String : null,
      job: map['job'] != null ? map['job'] as String : null,
      jobSatisfaction: map['job_satisfaction'] != null
          ? map['job_satisfaction'] as String
          : null,
      health: map['health'] != null ? map['health'] as String : null,
      relationships:
          map['relationships'] != null ? map['relationships'] as String : null,
      pets: map['pets'] != null ? map['pets'] as String : null,
      world: map['world'] != null ? map['world'] as String : null,
      areaOfResidence: map['area_of_residence'] != null
          ? map['area_of_residence'] as String
          : null,
      neighborhood:
          map['neighborhood'] != null ? map['neighborhood'] as String : null,
      homeDescription: map['home_description'] != null
          ? map['home_description'] as String
          : null,
      height: map['height'] != null ? map['height'] as String : null,
      weight: map['weight'] != null ? map['weight'] as String : null,
      ethnicity: map['ethnicity'] != null ? map['ethnicity'] as String : null,
      skinTone: map['skin_tone'] != null ? map['skin_tone'] as String : null,
      eyeColor: map['eye_color'] != null ? map['eye_color'] as String : null,
      distinguishFeature: map['distinguish_feature'] != null
          ? map['distinguish_feature'] as String
          : null,
      otherFacialFeatures: map['other_facial_features'] != null
          ? map['other_facial_features'] as String
          : null,
      hairstyle: map['hairstyle'] != null ? map['hairstyle'] as String : null,
      bodyType: map['body_type'] != null ? map['body_type'] as String : null,
      clothingStyle: map['clothing_style'] != null
          ? map['clothing_style'] as String
          : null,
      accessories:
          map['accessories'] != null ? map['accessories'] as String : null,
      skills: map['skills'] != null ? map['skills'] as String : null,
      incompetence:
          map['incompetence'] != null ? map['incompetence'] as String : null,
      talent: map['talent'] != null ? map['talent'] as String : null,
      weakness: map['weakness'] != null ? map['weakness'] as String : null,
      hobbies: map['hobbies'] != null ? map['hobbies'] as String : null,
      habits: map['habits'] != null ? map['habits'] as String : null,
      moral: map['moral'] != null ? map['moral'] as String : null,
      selfControl:
          map['self_control'] != null ? map['self_control'] as String : null,
      motivation:
          map['motivation'] != null ? map['motivation'] as String : null,
      discouragement: map['discouragement'] != null
          ? map['discouragement'] as String
          : null,
      confidenceLevel: map['confidence_level'] != null
          ? map['confidence_level'] as String
          : null,
      greatestFear:
          map['greatest_fear'] != null ? map['greatest_fear'] as String : null,
      childhood: map['childhood'] != null ? map['childhood'] as String : null,
      importantPastEvents: map['important_past_events'] != null
          ? map['important_past_events'] as String
          : null,
      bestAccomplishment: map['best_accomplishment'] != null
          ? map['best_accomplishment'] as String
          : null,
      otherAccomplishment: map['other_accomplishment'] != null
          ? map['other_accomplishment'] as String
          : null,
      failure: map['failure'] != null ? map['failure'] as String : null,
      secrets: map['secrets'] != null ? map['secrets'] as String : null,
      bestMemories:
          map['best_memories'] != null ? map['best_memories'] as String : null,
      worstMemories: map['worst_memories'] != null
          ? map['worst_memories'] as String
          : null,
      storyRole: map['story_role'] != null ? map['story_role'] as String : null,
      shortTermGoals: map['short_term_goals'] != null
          ? map['short_term_goals'] as String
          : null,
      longTermGoals: map['long_term_goals'] != null
          ? map['long_term_goals'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
