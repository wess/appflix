//
// previews.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 01/03/2022
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:appflix/data/entry.dart';
import 'package:appflix/providers/entry.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Previews extends StatelessWidget {
  final String title;
  
  const Previews({Key? key, required this.title});

  @override
  Widget build(BuildContext context) {
    var entries = context.watch<EntryProvider>().entries;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text(
            'Previews',
            style: const TextStyle(
              color: Colors.white, 
              fontWeight: FontWeight.bold, 
              fontSize: 20.0
            ),
          ),
        ),
        Container(
          height: 165.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                final Entry entry = entries[index];

                return GestureDetector(
                  onTap: () => print(entry.name),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(entry.thumbnailImageId),
                              fit: BoxFit.cover,
                            ),
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.white.withAlpha(40), width: 4.0)),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Colors.black87,
                                Colors.black45,
                                Colors.transparent
                              ],
                              stops: [
                                0,
                                0.25,
                                1
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white.withAlpha(40), width: 4.0),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: SizedBox(
                          height: 60,
                          child: Image.asset(entry.thumbnailImageId),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }
}
