import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = 'dcf042f1086a93fb870f24df74d335d8';
  final String _language = 'es-ES';

  MoviesProvider() {
    print('MoviesProvider Inicializado');
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});
    print(url);
    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    print(response.body);

    final Map<String, dynamic> decodedData = json.decode(response.body);

    print(decodedData);
  }
}
