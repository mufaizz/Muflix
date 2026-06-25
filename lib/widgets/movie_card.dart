import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:muflix/models/movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final double width;
  final double height;
  final VoidCallback onTap;
  final double? progress;
  final bool vertical;
  final bool featured;

  const MovieCard({
    super.key,
    required this.movie,
    required this.width,
    required this.height,
    required this.onTap,
    this.progress,
    this.vertical = false,
    this.featured = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.surfaceContainer,
          border: Border.all(color: Colors.white10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            fit: StackFit.expand,
            children: [
              CachedNetworkImage(
                imageUrl: vertical ? movie.posterUrl : movie.backdropUrl,
                fit: BoxFit.cover,
                placeholder: (_, __) => Container(color: AppColors.surfaceContainer),
                errorWidget: (_, __, ___) => Container(color: AppColors.surfaceContainer),
              ),
              if (featured)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.primaryContainer,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'TRENDING',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (progress != null)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: AppColors.surfaceVariant,
                    color: AppColors.primaryContainer,
                    minHeight: 4,
                  ),
                ),
              if (vertical)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
                      ),
                    ),
                    child: Text(
                      movie.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}