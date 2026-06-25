import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:muflix/routes/app_router.dart';
import 'package:muflix/theme/app_theme.dart';

class MuflixApp extends ConsumerWidget {
  const MuflixApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      title: 'Muflix',
      theme: appTheme,
      routerConfig: router,
    );
  }
}