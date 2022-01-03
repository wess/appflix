//
// user.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 01/03/2022
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:appflix/types/meta.dart';

class User {
  final String id;
  final String name;
  final int status;
  final String email;
  final bool emailVerification;
  final Meta prefs;

  User({
    required this.id,
    required this.name,
    required this.status,
    required this.email,
    required this.emailVerification,
    Meta? prefs,
  }) : this.prefs = prefs ?? Meta();

  static User fromJson(Map<String, dynamic> data) {
    return User(
      id: data['\$id'],
      name: data['name'],
      status: data['status'],
      email: data['email'],
      emailVerification: data['email_verification'],
      prefs: Meta.fromJson(data['prefs']),
    );
  }
}