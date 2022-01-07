//
// main.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 12/29/2021
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:appflix/providers/account.dart';
import 'package:appflix/providers/entry.dart';
import 'package:appflix/screens/navigation.dart';
import 'package:appflix/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => EntryProvider()),
        ChangeNotifierProvider(create: (context) => AccountProvider()),
      ],
      child: Main(),
    )
  );
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appflix',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FutureBuilder(
        future: context.read<AccountProvider>().isValid(),
        builder: (context, snapshot) => context.watch<AccountProvider>().session == null ? const OnboardingScreen() : const NavScreen(),
      )
    );
  }
}