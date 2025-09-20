import 'package:flutter/material.dart';
class APKAnalyzerScreen extends StatelessWidget {
  const APKAnalyzerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Header Analyzer'),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'This is the Password Generator page.',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );

  }
}