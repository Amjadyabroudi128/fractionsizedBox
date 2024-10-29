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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    Color myContainer = Colors.purple;
    Color smalContainer = Colors.yellow;
    return Scaffold(
      body: Container(
        color: myContainer,
        child: Center(
          child: fractionSB(smalContainer: smalContainer),
        )
      ),
    );
  }
}

class fractionSB extends StatelessWidget {
  const fractionSB({
    super.key,
    required this.smalContainer,
  });

  final Color smalContainer;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9, // 90 percent of the parent widget
      heightFactor: 0.4, // 40 percent of the parent widget
      child: Container(
        color: smalContainer,
      ),
    );
  }
}
