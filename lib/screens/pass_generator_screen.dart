import 'package:flutter/material.dart';
import 'dart:math'; // لإضافة مكتبة الأرقام العشوائية

class PasswordGeneratorScreen extends StatelessWidget {
  const PasswordGeneratorScreen({super.key});

  @override
  State<PasswordGeneratorScreen> createState() => _PasswordGeneratorScreenState();
}


 class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {
  String _generatedPassword = '';
  double _passwordLength = 12;
  bool _includeUppercase = true;
  bool _includeLowercase = true;
  bool _includeNumbers = true;
  bool _includeSymbols = false;
    


   void _generatePassword() {
    setState(() {
      String charSet = '';
      if (_includeUppercase) charSet += 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      if (_includeLowercase) charSet += 'abcdefghijklmnopqrstuvwxyz';
      if (_includeNumbers) charSet += '0123456789';
      if (_includeSymbols) charSet += '!@#\$%^&*()_+{}[]:;<>,.?/~';


    if (charSet.isEmpty) {
          _generatedPassword = 'Select at least one option.';
          return;
        }

        String tempPassword = '';
      Random random = Random();
      for (int i = 0; i < _passwordLength.round(); i++) {
        tempPassword += charSet[random.nextInt(charSet.length)];
      }
      _generatedPassword = tempPassword;
    });
  }