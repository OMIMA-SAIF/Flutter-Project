// lib/models/tool.dart

import 'package:flutter/material.dart';

class Tool {
  final String title;
  final String description;
  final IconData icon;

  const Tool({
    required this.title,
    required this.description,
    required this.icon,
  });
}