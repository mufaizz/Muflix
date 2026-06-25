import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;

  const SectionHeader({super.key, required this.title, required this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
        ),
        TextButton(
          onPressed: onSeeAll,
          child: Text(
            'View All',
            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: AppColors.primaryContainer,
                ),
          ),
        ),
      ],
    );
  }
}