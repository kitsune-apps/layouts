import 'package:flutter/material.dart';
import 'package:layouts/layouts.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExampleHomePage(),
    );
  }
}

class ExampleHomePage extends StatelessWidget {
  const ExampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layouts Example'),
      ),
      backgroundColor: Colors.amber,
      body: ResponsiveCenter(
        maxContentWidth: 900,
        child: Container(
          color: Colors.amberAccent,
          child: const Center(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
