import 'package:flutter/material.dart';
import 'package:flutter_f_rms/main.dart';
import 'createacc.dart';

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.fromLTRB(28.0, 102.0, 22.0, 42.0),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xff151518),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 2.0, 4.0),
                  child: const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 31.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 7.0, 85.0),
                  child: const Text(
                    'Please login to your account',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
  padding: const EdgeInsets.fromLTRB(15.0, 19.0, 15.0, 18.0),
  width: double.infinity,
  decoration: BoxDecoration(
    border: Border.all(color: const Color(0xff000000)),
    color: const Color(0x1eb9b9cd),
    borderRadius: BorderRadius.circular(20.0),
  ),
  child: TextFormField(
    style: const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    keyboardType: TextInputType.text, // You can change the keyboard type as needed
    decoration: const InputDecoration(
      hintText: 'Email/Phone Number',
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      border: InputBorder.none,
    ),
  ),
),
Container(
  margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
  padding: const EdgeInsets.fromLTRB(14.0, 19.0, 14.0, 18.0),
  width: double.infinity,
  decoration: BoxDecoration(
    border: Border.all(color: const Color(0xff000000)),
    color: const Color(0x1eb9b9cd),
    borderRadius: BorderRadius.circular(20.0),
  ),
  child: TextFormField(
    style: const TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    keyboardType: TextInputType.text, // You can change the keyboard type as needed
    obscureText: true, // To hide the password input
    decoration: const InputDecoration(
      hintText: 'Password',
      hintStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
      border: InputBorder.none,
    ),
  ),
),

                Container(
  margin: const EdgeInsets.fromLTRB(31.0, 0, 32.0, 11.0),
  child: GestureDetector(
    onTap: () {
      // Navigate to the menu page when "LOGIN" is tapped
      Navigator.push(context, MaterialPageRoute(builder: (context) => const ResortToMenu())); // Replace with your menu page.
    },
    child: Container(
      width: double.infinity,
      height: 56.0,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff000000)),
        color: const Color(0x1eb9b9cd),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Center(
        child: Text(
          'LOGIN',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ),
    ),
  ),
),

                Container(
                  margin: const EdgeInsets.fromLTRB(8.0, 125, 0, 0),
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Don\'t have an account? ',
                        ),
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffc91616),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to "Sign Up" page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const CreateAcc()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffc91616),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
