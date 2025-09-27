// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HTTPHeaderAnalyzerScreen extends StatelessWidget {
  const HTTPHeaderAnalyzerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('APK Analyzer'),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'This is the HTTP Header Analyzer page.',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}