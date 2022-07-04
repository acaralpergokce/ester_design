import 'package:ester_design/pages/explore.dart';
import 'package:ester_design/pages/messages.dart';
import 'package:flutter/material.dart';
import 'pages/groups.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ester Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Ester Demo Ana Sayfa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int mevcutSayfa = 0;
  final ekranlar = [
    Groups(),
    Messages(),
    Explore(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: mevcutSayfa,
        children: ekranlar,
      ), // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 32,
          selectedItemColor: Colors.black,
          currentIndex: mevcutSayfa,
          onTap: (index) => setState(() => mevcutSayfa = index),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.add_rounded), label: 'Gruplar'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Mesajlarım'),
            BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Keşfet')
          ]),
    );
  }
}
