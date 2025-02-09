import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Hackathon App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        scaffoldBackgroundColor: Color(0xFF111111)
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('4DIGIT TEST')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Привет!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HackathonScreen()),
                );
              },
              child: const Text('Открыть',
              style: TextStyle(
                color: Color(0xFF111111)
              ),),
            ),
          ],
        ),
      ),
    );
  }
}

class HackathonScreen extends StatefulWidget {
  const HackathonScreen({super.key});

  @override
  State<HackathonScreen> createState() => _HackathonScreenState();
}

class _HackathonScreenState extends State<HackathonScreen> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('О Хакатоне')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'МПИТ финал 2025',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text('Дата: в апреле', style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 10),
            const Text('Описание: Разработка приложений за 3 дня', style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 20),
            Text('Лайков: $likes', style: const TextStyle(fontSize: 18, color: Colors.white)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  likes++;
                });
              },
              child: const Text('лайк++', style: TextStyle(color: Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}
