//
// account.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 01/03/2022
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:appflix/api/client.dart';
import 'package:appflix/data/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AccountProvider extends ChangeNotifier {
  User? _current;
  User? get current => _current;

  Future<void> register(String email, String password, String? name) async {
    final result = await ApiClient.account.create(
      userId: 'unique()',
      email: email, 
      password: password, 
      name: name
    );

    print("Account Result: $result");
  }

  Future<void> login(String email, String password) async {
    final result = await ApiClient.account.createSession(email: email, password: password);

    print("Account Result: $result");
  }
}