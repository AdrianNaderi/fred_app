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
      friends: ["2", "3"],
    ),
    const User(
      id: "2",
      name: "Rebin",
      icon: "assets/icons/profile.png",
      friends: ["1", "3"],
    ),
    const User(
      id: "3",
      name: "Adrian",
      icon: "assets/icons/profile.png",
      friends: ["1", "2"],
    ),
  ];

  List<User> get users => [..._users];
}
