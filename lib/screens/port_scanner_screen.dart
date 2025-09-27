// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'dart:io';

class PortScannerScreen extends StatelessWidget {
  const PortScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Port Scanner'),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text(
          'This is the Port Scanner page.',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}