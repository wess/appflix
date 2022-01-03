//
// onboarding.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 01/03/2022
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:appflix/providers/entry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class OnboardingScreen extends StatefulWidget {

 const  OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 70.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: const Text(
            'Appflix',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  labelText: 'Email or phone number',
                  floatingLabelStyle: TextStyle(color: Colors.black),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                obscureText: true,
                autofocus: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey,
                  labelText: 'Password',
                  floatingLabelStyle: TextStyle(color: Colors.black),
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(height: 20.0),
              MaterialButton(
                child: const Text(
                  "Sign in",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 40.0),
              MaterialButton(
                child: const Text(
                  "Forgot your password?",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
        ),
      )
    );
  }
}


