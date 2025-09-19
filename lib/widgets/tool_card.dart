import 'package:flutter/material.dart';
import 'package:project/models/tool.dart';
import 'package:project/screens/pass_generator_screen.dart';
import 'package:project/screens/port_scanner_screen.dart';
import 'package:project/screens/HTTP_Header_Analyzer_Screen.dart';
import 'package:project/screens/APK_Analyzer_screen.dart';

class ToolCard extends StatelessWidget {
  final Tool tool;
  const ToolCard({
  super.key,
  required this.tool,
  )};
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
  elevation: 5,
  child: InkWell(
  onTap: () {
  if (tool.title == 'Password Generator') {
  Navigator.push(
  context,
  MaterialPageRoute(
  builder: (context) => const PasswordGeneratorScreen(),
  ),
  );
  }
  else if (tool.title == 'Port Scanner') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PortScannerScreen(),
      ),
    );
  }

  else if (tool.title == 'APK Analyzer') {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const APKAnalyzerScreen(),
      ),
    );
  }
  },

  );
  }
}
