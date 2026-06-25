import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  void continueAsGuest() {
    state = true;
    Hive.box('muflix').put('guest', true);
  }

  void signOut() {
    state = false;
    Hive.box('muflix').delete('guest');
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, bool>((ref) {
  final isGuest = Hive.box('muflix').get('guest', defaultValue: false) as bool;
  return AuthNotifier()..state = isGuest;
});