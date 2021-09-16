import 'dart:async';
import 'dart:convert';

import 'package:flutter_demo/core/demo-app/screens/store/common/mon.dart';
import 'package:http/http.dart';

class DummyProductsService {
  // flutter run -d chrome --web-renderer html // to run the app
  // flutter build web --web-renderer html --release // to generate a production build

  String getImageUrl(String number) {
    return 'https://www.serebii.net/swordshield/pokemon/${number}.png';
  }

  Stream<List<Mon>> getMons() {
    return Stream.fromFuture(get(Uri.parse('https://pokemon-go1.p.rapidapi.com/pokemon_stats.json'), headers: {
      'x-rapidapi-key': '44f3812ad3mshda906fb10591a61p1f2d52jsn712605512bbe',
      'x-rapidapi-host': 'pokemon-go1.p.rapidapi.com',
    })).map((Response e) {
      List<dynamic> decoded = json.decode(e.body) as List<dynamic>;
      List<Mon> list = decoded.map((data) => Mon.fromJson(data)).toList();
      return list;
    }).map((List<Mon> event) {
      Set<String> set = Set();
      List<Mon> filteredList = [];
      // Filter duplicates
      event.forEach((element) {
        if (!set.contains(element.pokemonName)) {
          filteredList.add(element);
          set.add(element.pokemonName);
        }
      });
      return filteredList;
    });
  }
}
