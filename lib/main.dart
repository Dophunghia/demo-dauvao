import 'dart:ui';
import 'package:demo_daura/utils/image_path.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: blur(),
    );
  }
}

Widget blur() {
  return Container(
    color: Colors.white,
    child: Stack(children: [
      Positioned(
        top: 180,
        left: 0,
        right: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: Container(
                  height: 120,
                  margin: const EdgeInsets.only(top: 120),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue.shade200,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 65, sigmaY: 65),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(110, 70, 70, 0),
          child: Image.asset(
            ImagesPath.swift,
          ),
        ),
      )
    ]),
  );
}
