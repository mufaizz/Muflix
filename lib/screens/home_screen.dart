import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muflix/models/mock_data.dart';
import 'package:muflix/providers/movie_provider.dart';
import 'package:muflix/widgets/bottom_nav_bar.dart';
import 'package:muflix/widgets/movie_card.dart';
import 'package:muflix/widgets/section_header.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(movieProvider);
    final featured = movies.isNotEmpty ? movies.first : null;
    final continueWatching = movies.take(3).toList();
    final forYou = movies.skip(1).take(4).toList();
    final trending = movies.skip(2).take(5).toList();
    final newReleases = movies.skip(3).take(2).toList();

    return Scaffold(
      backgroundColor: AppColors.background,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HeroSection(featured: featured),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.marginPage),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  SectionHeader(
                    title: 'Continue Watching',
                    onSeeAll: () {},
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  SizedBox(
                    height: 160,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: continueWatching.length,
                      separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.gutterCard),
                      itemBuilder: (context, index) {
                        final movie = continueWatching[index];
                        return MovieCard(
                          movie: movie,
                          width: 280,
                          height: 160,
                          onTap: () => context.go('/detail/${movie.id}'),
                          progress: 0.5 + (index * 0.2),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sectionGap),
                  SectionHeader(
                    title: 'For You',
                    onSeeAll: () {},
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.9,
                      crossAxisSpacing: AppSpacing.gutterCard,
                      mainAxisSpacing: AppSpacing.gutterCard,
                    ),
                    itemCount: forYou.length,
                    itemBuilder: (context, index) {
                      final movie = forYou[index];
                      return MovieCard(
                        movie: movie,
                        width: double.infinity,
                        height: double.infinity,
                        onTap: () => context.go('/detail/${movie.id}'),
                        featured: index == 0,
                      );
                    },
                  ),
                  const SizedBox(height: AppSpacing.sectionGap),
                  SectionHeader(
                    title: 'Trending Now',
                    onSeeAll: () {},
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  SizedBox(
                    height: 240,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: trending.length,
                      separatorBuilder: (_, __) => const SizedBox(width: AppSpacing.gutterCard),
                      itemBuilder: (context, index) {
                        final movie = trending[index];
                        return MovieCard(
                          movie: movie,
                          width: 140,
                          height: 240,
                          onTap: () => context.go('/detail/${movie.id}'),
                          vertical: true,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: AppSpacing.sectionGap),
                  SectionHeader(
                    title: 'New Releases',
                    onSeeAll: () {},
                  ),
                  const SizedBox(height: AppSpacing.stackMd),
                  ...newReleases.map((movie) => Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.stackMd),
                    child: NewReleaseCard(movie: movie, onTap: () => context.go('/detail/${movie.id}')),
                  )),
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
}

class HeroSection extends StatelessWidget {
  final Movie? featured;
  const HeroSection({super.key, this.featured});

  @override
  Widget build(BuildContext context) {
    if (featured == null) return const SizedBox.shrink();
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(featured!.backdropUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, AppColors.background],
              stops: [0.6, 1],
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          left: AppSpacing.marginPage,
          right: AppSpacing.marginPage,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Original Series',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: AppColors.onSurfaceVariant,
                      letterSpacing: 2,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                featured!.title.toUpperCase(),
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontSize: 48,
                      fontWeight: FontWeight.w800,
                      color: AppColors.onPrimaryContainer,
                    ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow, size: 20),
                    label: const Text('Play'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryContainer,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 0,
                    ),
                  ),
                  const SizedBox(width: 12),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.info_outline, size: 20),
                    label: const Text('More Info'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: BorderSide.none,
                      backgroundColor: Colors.white.withOpacity(0.1),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NewReleaseCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;
  const NewReleaseCard({super.key, required this.movie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white10),
        ),
        child: Row(
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
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'New Series',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: AppColors.primaryContainer,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    movie.title,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    movie.overview,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.secondary,
                          fontSize: 13,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _chip('4K ULTRA HD'),
                      const SizedBox(width: 8),
                      _chip('5.1 AUDIO'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 10,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}