// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'dart:io';

class PortScannerScreen extends StatelessWidget {
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

  Future<void> _scanPorts() async {
    setState(() {
      _scanResult = 'Scanning ports...';
      _isScanning = true;
    });