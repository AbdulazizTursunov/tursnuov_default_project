

import 'dart:convert';


import 'package:http/http.dart' as https;
import 'package:tursnuov_default_project/network/universal_repository.dart';

import '../model_api/api_model.dart';


class ApiProvider {
  Future<UniversalRepository> getGamesInfo() async {

    try {
      https.Response response = await https.get(Uri.parse("https://www.freetogame.com/api/games"));
      var data = UniversalRepository(
          data: (jsonDecode(response.body) as List?)
              ?.map((e) => GamesItem.fromJson(e))
              .toList() ??
              []);
      print(data);
      return data;

    } catch (e) {
      print(e.toString());
      return UniversalRepository(error: e.toString());
    }
  }
}
