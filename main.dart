import 'package:flutter/material.dart';

/* Import the material design Library, it provides widgets the material.dart is part of a FLUTTER SDK and implements in google material design guidelines for UI * */

void main() {
  runApp(const MyApp()); //flutter app function initialize the app that attached on the root widget (main screen) to the screen.
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Anime'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://static0.gamerantimages.com/wordpress/wp-content/uploads/2023/09/jujutsu-kaisen.jpg',
              width: 250,
              height: 350,
            ),

            Container(
              padding: const EdgeInsets.all(8),
              child: const Text(
                'Jujutsu Kaisen',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),

            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text(
                "JUJUTSU KAISEN is a serialized manga series with story and artwork by Gege Akutami and published in Weekly Shonen Jump. An anime adaptation came shortly after, with animation handled by Studio MAPPA. Currently there are multiple seasons with Season 1 (24 episodes) being followed by the highly acclaimed prequel movie JUJUTSU KAISEN 0, and then Season 2 in July 2023. The series is available subbed and dubbed.",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

