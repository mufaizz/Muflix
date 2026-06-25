import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:muflix/models/mock_data.dart';
import 'package:muflix/models/movie.dart';
import 'package:muflix/services/movie_service.dart';

final movieServiceProvider = Provider<MovieService>((ref) => MovieService());

final movieProvider = FutureProvider<List<Movie>>((ref) async {
  final service = ref.read(movieServiceProvider);
  return service.fetchMovies();
});