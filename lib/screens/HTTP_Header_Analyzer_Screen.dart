// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

  class HTTPHeaderAnalyzerScreen extends StatelessWidget {
  const HTTPHeaderAnalyzerScreen({super.key});

  @override
  State<HttpHeaderAnalyzerPage> createState() => _HttpHeaderAnalyzerPageState();
  Map<String, String>? _headers;
  bool _isLoading = false;
  String? _errorMessage;
  if (url.isEmpty) {
  setState(() {
  _errorMessage = 'Please Enter a Valid link';
  _isLoading = false;
  });
  return;
  }
  try {
  final response = await http.get(Uri.parse(url));
  setState(() {
  _headers = response.headers;
  _isLoading = false;
  });
  }
  catch (e) {
  setState(() {
  _errorMessage = 'An error occurred , please make sure the link is correct and yor are connected to Internet';
  _isLoading = false;
  });
  }
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