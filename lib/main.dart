import 'package:fbimages/fb_images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FBAppBarApp());
}

class FBAppBarApp extends StatelessWidget {
  const FBAppBarApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bits',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Bits Images'),
          backgroundColor: Colors.blueGrey,
        ),
        body: const FBImages(),
      ),
    );
  }
}
