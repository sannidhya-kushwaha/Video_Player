import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Video Player'),
        ),
        body: Center(
          child: BetterPlayer.network(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
            betterPlayerConfiguration: BetterPlayerConfiguration(
              aspectRatio: 1,
              looping: true,
              autoPlay: true,
              fit: BoxFit.contain,
              // startAt: Duration(seconds: 5),
            ),
          ),
        ),
      ),
    );
  }
}
