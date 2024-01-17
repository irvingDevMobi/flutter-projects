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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            PianoKey(
              color: Colors.red,
              note: 'note1.wav',
            ),
            PianoKey(
              color: Colors.orange,
              note: 'note2.wav',
            ),
            PianoKey(
              color: Colors.yellow,
              note: 'note3.wav',
            ),
            PianoKey(
              color: Colors.green,
              note: 'note4.wav',
            ),
            PianoKey(
              color: Colors.teal,
              note: 'note5.wav',
            ),
            PianoKey(
              color: Colors.blue,
              note: 'note6.wav',
            ),
            PianoKey(
              color: Colors.purple,
              note: 'note7.wav',
            ),
          ],
        ),
      ),
    );
  }
}

class PianoKey extends StatelessWidget {
  final Color color;
  final String note;

  const PianoKey({
    super.key,
    required this.color,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color, shape: BeveledRectangleBorder()),
        onPressed: () {
          final player = AudioPlayer();
          player.play(AssetSource(note));
        },
        child: const Text(''),
      ),
    );
  }
}
