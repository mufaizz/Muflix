import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muflix/models/mock_data.dart';
import 'package:muflix/providers/movie_provider.dart';
import 'package:muflix/widgets/movie_card.dart';

class DetailScreen extends ConsumerWidget {
  final String movieId;
  const DetailScreen({super.key, required this.movieId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(movieProvider);
    final movie = movies.firstWhere((m) => m.id == movieId, orElse: () => movies.first);
    final cast = movie.cast;
    final similar = movies.where((m) => m.id != movie.id).take(4).toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            pinned: true,
            backgroundColor: AppColors.background,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => context.pop(),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    movie.backdropUrl,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, AppColors.background],
                        stops: [0.5, 1],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: AppSpacing.marginPage,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            movie.posterUrl,
                            width: 80,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              movie.title,
                              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Color(0xFFFFD700),
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  movie.rating.toString(),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '•',
                                  style: TextStyle(color: AppColors.onSecondaryContainer),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  movie.runtime,
                                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        color: AppColors.onSecondaryContainer,
                                      ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  '•',
                                  style: TextStyle(color: AppColors.onSecondaryContainer),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  movie.year,
                                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        color: AppColors.onSecondaryContainer,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.marginPage),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.play_arrow, size: 20),
                          label: const Text('Play Now'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryContainer,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                            elevation: 0,
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add, size: 20),
                          label: const Text('Watchlist'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.white,
                            side: BorderSide.none,
                            backgroundColor: Colors.white.withOpacity(0.05),
                            padding: const EdgeInsets.symmetric(vertical: 14),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    children: movie.genres.map((g) => _genreChip(g)).toList(),
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  Text(
                    movie.overview,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.secondary,
                          height: 1.5,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.sectionGap),
                  Text(
                    'Cast',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: cast.length,
                      separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.gutterCard),
                      itemBuilder: (context, index) {
                        final actor = cast[index];
                        return Column(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(actor.imageUrl),
                              onBackgroundImageError: (_, __) => const Icon(Icons.person),
                            ),
                            const SizedBox(height: 4),
                            SizedBox(
                              width: 80,
                              child: Text(
                                actor.name,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sectionGap),
                  Text(
                    'Similar Movies',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: similar.length,
                      separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.gutterCard),
                      itemBuilder: (context, index) {
                        final m = similar[index];
                        return MovieCard(
                          movie: m,
                          width: 120,
                          height: 180,
                          onTap: () => context.go('/detail/${m.id}'),
                          vertical: true,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 80),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 0),
    );
  }

  Widget _genreChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
      ),
    );
  }
}