import 'package:flutter/material.dart';

class Mon {
  late int baseAttack;
  late int baseDefense;
  late int baseStamina;
  late String form;
  late int pokemonId;
  late String pokemonName;
  late Image image;

  Mon({
    required this.baseAttack,
    required this.baseDefense,
    required this.baseStamina,
    required this.form,
    required this.pokemonId,
    required this.pokemonName,
  });

  Mon.fromJson(dynamic json) {
    baseAttack = json["base_attack"] as int;
    baseDefense = json["base_defense"] as int;
    baseStamina = json["base_stamina"] as int;
    form = json["form"] as String;
    pokemonId = json["pokemon_id"] as int;
    pokemonName = json["pokemon_name"] as String;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["base_attack"] = baseAttack;
    map["base_defense"] = baseDefense;
    map["base_stamina"] = baseStamina;
    map["form"] = form;
    map["pokemon_id"] = pokemonId;
    map["pokemon_name"] = pokemonName;
    return map;
  }

  String formatNumber() {
    if (pokemonId < 10) {
      return '00$pokemonId';
    } else if (pokemonId < 100) {
      return '0$pokemonId';
    } else {
      return pokemonId.toString();
    }
  }
}
