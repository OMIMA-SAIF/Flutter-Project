// lib/screens/password_generator_screen.dart
import 'package:flutter/material.dart';
import 'dart:math'; // لإضافة مكتبة الأرقام العشوائية

import 'package:flutter/material.dart';
import 'dart:math'; // لإضافة مكتبة الأرقام العشوائية

class PasswordGeneratorScreen extends StatefulWidget {
  const PasswordGeneratorScreen({super.key});

  @override
  State<PasswordGeneratorScreen> createState() => _PasswordGeneratorScreenState();
}

class _PasswordGeneratorScreenState extends State<PasswordGeneratorScreen> {

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
              activeColor: Colors.greenAccent,
            ),
              activeColor: Colors.blue,
            ),

            
            const SizedBox(height: 10),
            // صناديق التحديد
            _buildCheckbox('Include Uppercase Letters', _includeUppercase, (bool? value) {
              _includeUppercase = value!;
            }),
            _buildCheckbox('Include Lowercase Letters', _includeLowercase, (bool? value) {
              _includeLowercase = value!;
            }),
            _buildCheckbox('Include Numbers', _includeNumbers, (bool? value) {
              _includeNumbers = value!;
            }),
            _buildCheckbox('Include Symbols', _includeSymbols, (bool? value) {
              _includeSymbols = value!;
            }),
            
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _generatePassword,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent[400],
                backgroundColor: Colors.blue[400],
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text('Generate Password',style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }


  Widget _buildCheckbox(String title, bool value, Function(bool?) onChanged) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CheckboxListTile(title: Text(title, style: const TextStyle(color: Colors.grey,fontSize: 20)),
        value: value,
        onChanged: (bool? newValue) {
          setState(() {
            onChanged(newValue);
          });
          _generatePassword();
        },
        activeColor: Colors.greenAccent,
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
}



//end of this page



      


