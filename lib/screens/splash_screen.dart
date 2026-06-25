import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muflix/utils/constants.dart';
import 'package:muflix/widgets/custom_loading.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeLogo;
  late Animation<double> _fadeBar;
  late Animation<double> _fadeCredit;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    _fadeLogo = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0, 0.4)),
    );
    _fadeBar = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 0.7)),
    );
    _fadeCredit = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.7, 0.9)),
    );
    _controller.forward();
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 500), () {
          if (mounted) context.go('/auth');
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.8,
                colors: [Color(0xFF1A1A1A), Color(0xFF0A0A0A)],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeTransition(
                  opacity: _fadeLogo,
                  child: Text(
                    'Muflix',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: AppColors.primaryContainer,
                          shadows: [
                            Shadow(
                              color: AppColors.primaryContainer.withOpacity(0.4),
                              blurRadius: 40,
                            ),
                          ],
                        ),
                  ),
                ),
                const SizedBox(height: 24),
                FadeTransition(
                  opacity: _fadeBar,
                  child: const CustomLoading(
                    width: 140,
                    height: 2,
                    color: AppColors.primaryContainer,
                  ),
                ),
                const SizedBox(height: 32),
                FadeTransition(
                  opacity: _fadeCredit,
                  child: Text(
                    'MUFAIZ',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: AppColors.onSecondaryContainer.withOpacity(0.5),
                          letterSpacing: 4,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}