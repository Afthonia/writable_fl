// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SpeciesModel {
  int id;
  int bookID;
  String name;
  String? description;

  // species
  String? lifespan;
  String? height;
  String? weight;
  String? diet;
  String? skillsAbilities;
  String? weakness;
  String? viewOnMortals;

  // appearance
  String? physicalDescription;
  String? mentalDescription;

  // lifestyle
  String? commonLocations;
  String? habitats;
  String? reproduction;
  String? growthStages;
  String? majorStages;
  String? majorEthnicGroups;

  // background
  String? origin;
  String? history;
  String? religiousConnections;
  String? commonCulturalInfluences;

  SpeciesModel({
    required this.id,
    required this.bookID,
    required this.name,
    this.description,
    this.lifespan,
    this.height,
    this.weight,
    this.diet,
    this.skillsAbilities,
    this.weakness,
    this.viewOnMortals,
    this.physicalDescription,
    this.mentalDescription,
    this.commonLocations,
    this.habitats,
    this.reproduction,
    this.growthStages,
    this.majorStages,
    this.majorEthnicGroups,
    this.origin,
    this.history,
    this.religiousConnections,
    this.commonCulturalInfluences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'bookID': bookID,
      'name': name,
      'description': description,
      'lifespan': lifespan,
      'height': height,
      'weight': weight,
      'diet': diet,
      'skills_abilities': skillsAbilities,
      'weakness': weakness,
      'view_on_mortals': viewOnMortals,
      'physical_description': physicalDescription,
      'mental_description': mentalDescription,
      'common_locations': commonLocations,
      'habitats': habitats,
      'reproduction': reproduction,
      'growth_stages': growthStages,
      'major_stages': majorStages,
      'major_ethnic_groups': majorEthnicGroups,
      'origin': origin,
      'history': history,
      'religious_connections': religiousConnections,
      'common_cultural_influences': commonCulturalInfluences,
    };
  }

  factory SpeciesModel.fromMap(Map<String, dynamic> map) {
    return SpeciesModel(
      id: map['id'] as int,
      bookID: map['bookID'] as int,
      name: map['name'] as String,
      description:
          map['description'] != null ? map['description'] as String : null,
      lifespan: map['lifespan'] != null ? map['lifespan'] as String : null,
      height: map['height'] != null ? map['height'] as String : null,
      weight: map['weight'] != null ? map['weight'] as String : null,
      diet: map['diet'] != null ? map['diet'] as String : null,
      skillsAbilities: map['skills_abilities'] != null
          ? map['skills_abilities'] as String
          : null,
      weakness: map['weakness'] != null ? map['weakness'] as String : null,
      viewOnMortals: map['view_on_mortals'] != null
          ? map['view_on_mortals'] as String
          : null,
      physicalDescription: map['physical_description'] != null
          ? map['physical_description'] as String
          : null,
      mentalDescription: map['mental_description'] != null
          ? map['mental_description'] as String
          : null,
      commonLocations: map['common_locations'] != null
          ? map['common_locations'] as String
          : null,
      habitats: map['habitats'] != null ? map['habitats'] as String : null,
      reproduction:
          map['reproduction'] != null ? map['reproduction'] as String : null,
      growthStages:
          map['growth_stages'] != null ? map['growth_stages'] as String : null,
      majorStages:
          map['major_stages'] != null ? map['major_stages'] as String : null,
      majorEthnicGroups: map['major_ethnic_groups'] != null
          ? map['major_ethnic_groups'] as String
          : null,
      origin: map['origin'] != null ? map['origin'] as String : null,
      history: map['history'] != null ? map['history'] as String : null,
      religiousConnections: map['religious_connections'] != null
          ? map['religious_connections'] as String
          : null,
      commonCulturalInfluences: map['common_cultural_influences'] != null
          ? map['common_cultural_influences'] as String
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SpeciesModel.fromJson(String source) =>
      SpeciesModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
