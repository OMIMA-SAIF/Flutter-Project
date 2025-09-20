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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'stra Tools',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
          ),
        ),
        centerTitle: true,

        actions: [
          IconButton(
            icon: Icon(Icons.settings, color: Colors.greenAccent[400]),
            onPressed: () {
              // ...
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 2.5,
                ),
                itemCount: tools.length,
                itemBuilder: (context, index) {
                  return ToolCard(tool: tools[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'For educational and ethical purposes only.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}