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
  if (_headers != null && _headers!.isNotEmpty)
  Expanded(
  child: ListView.builder(
  itemCount: _headers!.length,
  itemBuilder: (context, index) {
  String key = _headers!.keys.elementAt(index);
  String value = _headers![key]!;
  return Card(
  child: ListTile(
  title: Text(
  key,
  style: const TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue,
  ),
  ),
  subtitle: Text(Uri.decodeComponent(value)),
  ),
  );
  },
  TextField(
  controller: _urlController,
  decoration: const InputDecoration(
  labelText: 'Add Link',labelStyle: TextStyle(color: Colors.white70),
  border: OutlineInputBorder(),
  prefixIcon: Icon(Icons.link),
  ),
  keyboardType: TextInputType.url,
  ),
  ),
  SizedBox(
  width: double.infinity,
  child: ElevatedButton.icon(
  onPressed: _isLoading ? null : _analyzeHeaders,
  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[400],shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
  icon: const Icon(Icons.search),
  label: const Text('Head Analysis',style: TextStyle(fontSize: 16,color: Colors.white70),),
  ),
  ),
  ),
  Expanded(
  child: ListView.builder(
  itemCount: _headers!.length,
  itemBuilder: (context, index) {
  String key = _headers!.keys.elementAt(index);
  String value = _headers![key]!;
  return Card(
  child: ListTile(
  title: Text(
  key,
  style: const TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.blue,
  ),
  ),
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