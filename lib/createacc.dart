// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'main.dart';

class CreateAcc extends StatelessWidget {
  const CreateAcc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(28.0, 30.0, 22.0, 30.0),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff151518),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20.0), // Space before the fields
              const Text(
                'Create Account',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const MyInputField(label: 'Full name'),
              const MyInputField(label: 'Email'),
              const MyInputField(label: 'Phone number'),
              const MyInputField(label: 'Password'),
              GestureDetector(
                onTap: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResortToMenu(),
                    ),
                  ); // Navigate to a placeholder page
                },
                child: Container(
                  margin: const EdgeInsets.fromLTRB(31.0, 150, 32.0, 11.0),
                  width: double.infinity,
                  height: 56.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: const Color(0xff1eb9b9cd),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: const Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(8.0, 150, 0, 0),
                child: RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                      ),
                      TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffc91616),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyInputField extends StatelessWidget {
  final String label;

  const MyInputField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 16.0,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: const BorderSide(color: Colors.black),
        ),
        filled: true,
        fillColor: const Color(0x1eb9b9cd),
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
