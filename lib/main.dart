import 'package:flutter/material.dart';
import 'youtube/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Youtube Player Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: YoutubePage(),
    );
  }
}

class YoutubePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Youtube Player in Flutter"),
      ),
      body: Container(
        child: YoutubePlayer(
          controller: _controller,
        ),
      ),
    );
  }
}

YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: 'dQw4w9WgXcQ',
  flags: YoutubePlayerFlags(
    autoPlay: true,
    mute: false,
  ),
);
