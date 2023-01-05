import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../globals/models/user.dart';

final userProvider = Provider<UserProvider>(
  (ref) => UserProvider(),
);

class UserProvider extends ChangeNotifier {
  final List<User> _users = [
    const User(
      id: "1",
      name: "Robin",
      icon: "assets/icons/profile.png",
    )
  ];

  List<User> get users => [..._users];
}
