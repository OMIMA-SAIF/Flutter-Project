// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HTTPHeaderAnalyzerScreen extends StatelessWidget {
  const HTTPHeaderAnalyzerScreen({super.key});

  @override
  State<HttpHeaderAnalyzerPage> createState() => _HttpHeaderAnalyzerPageState();
}


class _HttpHeaderAnalyzerPageState extends State<HttpHeaderAnalyzerPage> {
  final TextEditingController _urlController = TextEditingController();
  Map<String, String>? _headers;
  bool _isLoading = false;
  String? _errorMessage;


   Future<void> _analyzeHeaders() async {
    final String url = _urlController.text.trim();
    setState(() {
      _isLoading = true;
      _errorMessage = null;
      _headers = null;
    });



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
    } catch (e) {
      setState(() {
        _errorMessage = 'An error occurred , please make sure the link is correct and yor are connected to Internet';
        _isLoading = false;
      });
    }
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Header Analyzer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _urlController,
              decoration: const InputDecoration(
                labelText: 'Add Link',labelStyle: TextStyle(color: Colors.white70),
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.link),
              ),
              keyboardType: TextInputType.url,
