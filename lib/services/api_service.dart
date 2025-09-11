import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:movies/models/movie.dart';

abstract class ApiService /* <T> */ {
  // T getByKey(String key);

  static const String _apiKey = '8d41a84e1f2be24ea41202b3c7d2bf51';
  static const String _baseUrl = "https://api.themoviedb.org/3";

  static Future<List<Movie>> fetchData(String link) async {
    final url = Uri.parse('$_baseUrl/$link?api_key=$_apiKey&language=fr-FR');

    try {
      // List data = [];
      // bool isLoading = true;

      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = json.decoder(response.body);
        final List results = data["results"];

        log('Data reçu : ${jsonEncode(results[0])}', name: 'fetched data');
        // isLoading = false;

        // return data;
        return results.map((json) => Movie.fromJson(json)).toList();
      } else {
        throw Exception('Erreur lors du chargement des données');
      }
    } catch (e) {
      throw Exception('Erreur lors du chargement des données : $e');
    }
  }
}
