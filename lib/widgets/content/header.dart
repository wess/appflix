//
// header.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 01/03/2022
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:appflix/data/entry.dart';
import 'package:appflix/widgets/buttons/icon.dart';
import 'package:flutter/material.dart';

class _PlayButton extends StatelessWidget {
  const _PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.white,
      onPressed: () {
        print('play');
      },
      child: Row(
        children: const [
          Icon(
            Icons.play_arrow,
            size: 30,
          ),
          Text(
            'Play',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}


class ContentHeader extends StatelessWidget {
  final Entry featured;
  
  const ContentHeader({Key? key, required this.featured}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(featured.thumbnailImageId),
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          child: SizedBox(
            width: 250,
            child: Image.asset(
              featured.thumbnailImageId,
            ),
          ),
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                tap: () => print('list'),
              ),
            const _PlayButton(),
              VerticalIconButton(
                icon: Icons.info,
                title: 'Info',
                tap: () => print('list'),
              )
            ],
          ),
        )
      ]
    );
  }
}