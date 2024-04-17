import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            'Audio Paly',
            style: (TextStyle(color: Colors.black, fontSize: 35.0)),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: Moha(),
      ),
    );
  }
}

class Moha extends StatefulWidget {
  const Moha({super.key});

  @override
  State<Moha> createState() => _MohaState();
}

class _MohaState extends State<Moha> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              playSound1();
            },
            child: const Text('Please Press me')),
        ElevatedButton(
            onPressed: () {
              playSound2();
            },
            child: const Text('Please Press me')),
        ElevatedButton(
            onPressed: () {
              playSound3();
            },
            child: const Text('Please Press me')),
        ElevatedButton(
            onPressed: () {
              playSound4();
            },
            child: const Text('Please Press me')),
      ],
    );
  }

  Future<void> playSound1() async {
    String audioPath = "audio/Dreaming.mp3";
    await player.play(AssetSource(audioPath));
  }

  Future<void> playSound2() async {
    String audioPath = "audio/Dreaming.mp3";
    await player.play(AssetSource(audioPath));
  }

  Future<void> playSound3() async {
    String audioPath = "audio/Dreaming.mp3";
    await player.play(AssetSource(audioPath));
  }

  Future<void> playSound4() async {
    String audioPath = "audio/Dreaming.mp3";
    await player.play(AssetSource(audioPath));
  }
}
