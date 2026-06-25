import 'cast.dart';

class Movie {
  final String id;
  final String title;
  final String overview;
  final String posterUrl;
  final String backdropUrl;
  final double rating;
  final String runtime;
  final String year;
  final List<String> genres;
  final List<Cast> cast;

  Movie({
    required this.id,
    required this.title,
    required this.overview,
    required this.posterUrl,
    required this.backdropUrl,
    required this.rating,
    required this.runtime,
    required this.year,
    required this.genres,
    required this.cast,
  });
}