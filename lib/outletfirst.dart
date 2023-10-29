//OUTLET-REGISTRATION:
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class RegistrationForm extends StatelessWidget {
  const RegistrationForm({super.key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0; // You should set the appropriate value for fem
    const double ffem = 1.0; // You should set the appropriate value for ffem

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff151518),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 50 * fem, 50 * fem, 15 * fem),
              child: Text(
                'Register',
                style: TextStyle(
                  fontFamily: 'Inder',
                  fontSize: 27 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.25 * ffem / fem,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 12 * fem, 12 * fem),
              padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x2dd9d9d9),
                borderRadius: BorderRadius.circular(44 * fem),
              ),
              child: Material(
                color: Colors.transparent,
                child: TextField( // Use TextField instead of Text
                  decoration: InputDecoration(
                    hintText: 'Restaurant name', // Provide a hint
                    hintStyle: TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.25 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 12 * fem, 12 * fem),
              padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x2dd9d9d9),
                borderRadius: BorderRadius.circular(44 * fem),
              ),
              child: Material(
                color: Colors.transparent,
                child: TextField( // Use TextField instead of Text
                  decoration: InputDecoration(
                    hintText: 'Admin name', // Provide a hint
                    hintStyle: TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.25 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 12 * fem, 12 * fem),
              padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x2dd9d9d9),
                borderRadius: BorderRadius.circular(44 * fem),
              ),
              child: Material(
                color: Colors.transparent,
                child: TextField( // Use TextField instead of Text
                  decoration: InputDecoration(
                    hintText: 'Address', // Provide a hint
                    hintStyle: TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.25 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 12 * fem, 13 * fem),
              padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x2dd9d9d9),
                borderRadius: BorderRadius.circular(44 * fem),
              ),
              child: Material(
                color: Colors.transparent,
                child: TextField( // Use TextField instead of Text
                  decoration: InputDecoration(
                    hintText: 'Contact no.', // Provide a hint
                    hintStyle: TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.25 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(19 * fem, 0 * fem, 12 * fem, 100 * fem),
              padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0x2dd9d9d9),
                borderRadius: BorderRadius.circular(44 * fem),
              ),
              child: Material(
                color: Colors.transparent,
                child: TextField( // Use TextField instead of Text
                  decoration: InputDecoration(
                    hintText: 'Password', // Provide a hint
                    hintStyle: TextStyle(
                      fontFamily: 'Inder',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.25 * ffem / fem,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            
            // Register button
            Container(
              margin: const EdgeInsets.fromLTRB(31.0,0, 32.0, 100),
              child: ElevatedButton(
                onPressed: () async{
                    Navigator.pushNamed(context, '/MySuccessPage');
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(163, 228, 7, 7), // Background color of the button
                  elevation: 0, // No elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(44 * fem),
                  ),
                ),
                child: const Text(
                  'Register as Outlet',
                  style: TextStyle(
                    fontFamily: 'Inder',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.25 * ffem / fem,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MySuccessPage extends StatelessWidget {
  const MySuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double fem = 1.0;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 926 * fem,
        color: const Color(0xff151518),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              child: const Text(
                'Registration Successful',
                style: TextStyle(
                  fontFamily: 'Inder',
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'You can now log in as admin.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inder',
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffffffff),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              width: 225 * fem,
              height: 199 * fem,
              child: Image.asset('assets/images/success.jpg'),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(31.0,0, 32.0, 100),
              child: ElevatedButton(
                onPressed: () async{
                    Navigator.pushNamed(context, '/AdminLogin');
                  },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(163, 228, 7, 7), // Background color of the button
                  elevation: 0, // No elevation
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(44 * fem),
                  ),
                ),
                child: const Text(
                  'Admin login',
                  style: TextStyle(
                    fontFamily: 'Inder',
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
