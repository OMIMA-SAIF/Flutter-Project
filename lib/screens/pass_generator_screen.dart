import 'package:flutter/material.dart';
import 'dart:math'; // لإضافة مكتبة الأرقام العشوائية

class PasswordGeneratorScreen extends StatelessWidget {
  const PasswordGeneratorScreen({super.key});

  @override
  State<PasswordGeneratorScreen> createState() => _PasswordGeneratorScreenState();
}
      body: const Center(
        child: Text(
          'This is the Password Generator page.',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    
