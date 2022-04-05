import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  MoviesProvider() {
    print('MoviesProvider Inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('GetOnDisplayMovies');
  }
}
