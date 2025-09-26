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


    @override
  void initState() {
    super.initState();
    _generatePassword();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Generator'),
        backgroundColor: Colors.transparent,
      ),
       body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // حقل عرض كلمة المرور
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.grey[850],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(
                _generatedPassword,
                style: const TextStyle(fontSize: 25, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            
            const SizedBox(height: 40),
            // شريط طول كلمة المرور
            Text(
              'Password Length: ${_passwordLength.round()}',
              style: const TextStyle(color: Colors.grey, fontSize: 19),
            ),
            const SizedBox(height: 30),

             Slider(
              value: _passwordLength,
              min: 8,
              max: 20,
              divisions: 12,
              onChanged: (newValue) {
                setState(() {
                  _passwordLength = newValue;
                });
                _generatePassword();
              },
              activeColor: Colors.blue,
            ),


