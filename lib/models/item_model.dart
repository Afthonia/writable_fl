import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemModel {
  int id;
  int bookID;
  String name;
  String? description;

  // item
  String? purpose;
  String? specialAbilitiesProperties;
  String? collection;
  String? production;
  String? composition;
  String? value;
  String? rarity;
  String? occurrence;
  String? detectionMethods;
  String? armaments;
  String? defense;
  String? otherEquipment;

  // history
  String? history;
  String? origin;
  String? notableOwners;

  ItemModel({
    required this.id,
    required this.bookID,
    required this.name,
    this.description,
    this.purpose,
    this.specialAbilitiesProperties,
    this.collection,
    this.production,
    this.composition,
    this.value,
    this.rarity,
    this.occurrence,
    this.detectionMethods,
    this.armaments,
    this.defense,
    this.otherEquipment,
    this.history,
    this.origin,
    this.notableOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'bookID': bookID,
      'name': name,
      'description': description,
      'purpose': purpose,
      'special_abilities_properties': specialAbilitiesProperties,
      'collection': collection,
      'production': production,
      'composition': composition,
      'value': value,
      'rarity': rarity,
      'occurence': occurrence,
      'detection_methods': detectionMethods,
      'armaments': armaments,
      'defense': defense,
      'other_equipment': otherEquipment,
      'history': history,
      'origin': origin,
      'notable_owners': notableOwners,
    };
  }

  factory ItemModel.fromMap(Map<String, dynamic> map) {
    return ItemModel(
      id: map['id'] as int,
      bookID: map['bookID'] as int,
      name: map['name'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      purpose: map['purpose'] != null ? map['purpose'] as String : null,
      specialAbilitiesProperties: map['special_abilities_properties'] != null
          ? map['special_abilities_properties'] as String
          : null,
      collection:
          map['collection'] != null ? map['collection'] as String : null,
      production:
          map['production'] != null ? map['production'] as String : null,
      composition:
          map['composition'] != null ? map['composition'] as String : null,
      value: map['value'] != null ? map['value'] as String : null,
      rarity: map['rarity'] != null ? map['rarity'] as String : null,
      occurrence: map['occurence'] != null ? map['occurence'] as String : null,
      detectionMethods: map['detection_methods'] != null
          ? map['detection_methods'] as String
          : null,
      armaments: map['armaments'] != null ? map['armaments'] as String : null,
      defense: map['defense'] != null ? map['defense'] as String : null,
      otherEquipment: map['other_equipment'] != null
          ? map['other_equipment'] as String
          : null,
      history: map['history'] != null ? map['history'] as String : null,
      origin: map['origin'] != null ? map['origin'] as String : null,
      notableOwners: map['notable_owners'] != null
          ? map['notable_owners'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemModel.fromJson(String source) =>
      ItemModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
