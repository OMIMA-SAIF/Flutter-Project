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
