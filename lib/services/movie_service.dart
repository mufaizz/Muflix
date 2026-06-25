import 'package:muflix/models/mock_data.dart';
import 'package:muflix/models/movie.dart';

class MovieService {
  Future<List<Movie>> fetchMovies() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return mockMovies;
  }
}