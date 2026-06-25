import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muflix/providers/auth_provider.dart';
import 'package:muflix/widgets/glass_card.dart';

class AuthScreen extends ConsumerWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(AppSpacing.marginPage),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Muflix',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                            color: AppColors.primaryContainer,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Curated cinema for the discerning enthusiast.',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.secondary.withOpacity(0.8),
                          ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    GlassCard(
                      padding: const EdgeInsets.all(32),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                ref.read(authProvider.notifier).continueAsGuest();
                                context.go('/home');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.primaryContainer,
                                foregroundColor: AppColors.onPrimaryContainer,
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                elevation: 0,
                              ),
                              child: const Text(
                                'Continue as Guest',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.7,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              const Expanded(
                                child: Divider(color: Colors.white10),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16),
                                child: Text(
                                  'OR',
                                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                        color: AppColors.onSecondaryContainer.withOpacity(0.5),
                                      ),
                                ),
                              ),
                              const Expanded(
                                child: Divider(color: Colors.white10),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: AppColors.onSurface,
                                backgroundColor: Colors.white.withOpacity(0.05),
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                side: const BorderSide(color: Colors.white10),
                              ),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 0.7,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Create Account',
                              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                                    color: AppColors.secondary.withOpacity(0.7),
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      'By continuing, you agree to Muflix\'s Terms of Service and Privacy Policy.',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: AppColors.onSecondaryContainer.withOpacity(0.4),
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}