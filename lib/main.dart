import 'package:flutter/material.dart';
import 'package:flutter_basic_01/screens/first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // BuildContext 모든 위젯이 가지고 있는 고유의 아이디 값
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: FirstScreen(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text('Text Button')),
            Padding(padding: EdgeInsets.all(20)),
            ElevatedButton(onPressed: () {}, child: Text('Elevate Button')),
            Padding(padding: EdgeInsets.all(20)),
            OutlinedButton(onPressed: () {}, child: Text('Outline Button')),
            Padding(padding: EdgeInsets.all(20)),
            IconButton(onPressed: () {}, icon: Icon(Icons.star)),
          ],
        )
      )
    );
  }


}