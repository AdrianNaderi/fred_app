import 'package:flutter/material.dart';

import '../../globals/models/user.dart';

class UserProvider extends ChangeNotifier {
  final List<User> _users = [
    const User(
      id: "1",
      name: "Robin",
    )
  ];

  List<User> get users => [..._users];
}
