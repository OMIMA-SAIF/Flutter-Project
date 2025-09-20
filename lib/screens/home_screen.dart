import 'package:flutter/material.dart';
import 'package:project/models/tool.dart';
import 'package:project/widgets/tool_card.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final List<Tool> tools = const [
    Tool(
      title: 'Password Generator',
      description: 'Create strong and random passwords.',
      icon: Icons.lock_outline,
    ),
    Tool(
      title: 'Port Scanner',
      description: 'Scan open ports on a specific IP.',
      icon: Icons.network_check_outlined,
    ),
    Tool(
      title: 'APK Analyzer',
      description: 'View app permissions and details.',
      icon: Icons.android_outlined,
    ),
    Tool(
      title: 'HTTP Header Analyzer',
      description: 'Analyze a website\'s headers.',
      icon: Icons.code,
    ),
  ];
}