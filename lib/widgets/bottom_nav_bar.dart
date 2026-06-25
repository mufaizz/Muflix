import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  const BottomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.marginPage, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, AppColors.background.withOpacity(0.8)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home, 'Home', 0),
          _navItem(Icons.search, 'Search', 1),
          _navItem(Icons.grid_view, 'Categories', 2),
          _navItem(Icons.video_library, 'Library', 3),
          _navItem(Icons.person, 'Profile', 4),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    final isActive = index == currentIndex;
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.primaryContainer : AppColors.onSecondaryContainer,
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: isActive ? AppColors.primaryContainer : AppColors.onSecondaryContainer,
                ),
          ),
        ],
      ),
    );
  }
}