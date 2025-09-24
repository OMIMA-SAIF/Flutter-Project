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
  setState(() {
  if (openPorts.isNotEmpty) {
  _scanResult = 'Open ports found: ${openPorts.join(', ')}';
  } else {
  _scanResult = 'No open ports found in the specified range.';
  }
  _isScanning = false;
  });
  }
  for (int port = startPort; port <= endPort; port++) {
  try {
  final socket = await Socket.connect(ipAddress, port, timeout: const Duration(milliseconds: 200));
  openPorts.add(port);
  socket.destroy(); // Close the connection
  } catch (e) {
  // Port is likely closed
  }
  }
  TextField(
  controller: _ipController,
  decoration: const InputDecoration(
  labelText: 'IP Address or Domain',
  border: OutlineInputBorder(),
  ),
  keyboardType: TextInputType.url,
  ),
  @override
  void dispose() {
  _ipController.dispose();
  _startPortController.dispose();
  _endPortController.dispose();
  super.dispose();
  }
  ),
  const SizedBox(height: 20),

  body: Padding(
  padding: const EdgeInsets.all(20.0),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: [
  if (ipAddress.isEmpty) {
  setState(() {
  _scanResult = 'Please enter a valid IP address or domain.';
  _isScanning = false;
  });
  return;
  }
  Expanded(
  child: TextField(
  controller: _endPortController,
  decoration: const InputDecoration(
  labelText: 'End Port',labelStyle: TextStyle(fontSize: 20),
  border: OutlineInputBorder(),
  ),
  keyboardType: TextInputType.number,
  ),
  ),

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