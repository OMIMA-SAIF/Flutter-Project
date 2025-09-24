// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'dart:io';

class PortScannerScreen extends StatelessWidget {
  const PortScannerScreen({super.key});

  class PortScannerScreen extends StatefulWidget {
  const PortScannerScreen({super.key});

  @override
  State<PortScannerScreen> createState() => _PortScannerScreenState();
  }
  class _PortScannerScreenState extends State<PortScannerScreen> {
  final TextEditingController _ipController = TextEditingController();
  final TextEditingController _startPortController = TextEditingController(text: '1');
  final TextEditingController _endPortController = TextEditingController(text: '1024');
  String _scanResult = 'Enter an IP and a port range to start scanning.';
  bool _isScanning = false;
  final String ipAddress = _ipController.text;
  final int startPort = int.tryParse(_startPortController.text) ?? 1;
  final int endPort = int.tryParse(_endPortController.text) ?? 1024;
  final List<int> openPorts = [];

  Future<void> _scanPorts() async {
  setState(() {
  _scanResult = 'Scanning ports...';
  _isScanning = true;
  });
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