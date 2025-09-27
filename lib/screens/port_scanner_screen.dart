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
