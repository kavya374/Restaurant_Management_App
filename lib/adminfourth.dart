import 'package:flutter/material.dart';
import 'adminfirst.dart';
//ADMIN-> MENU-> ADD

class AdminFourth extends StatelessWidget {
  const AdminFourth({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your specific value for fem
    double ffem = 1.0; // Replace with your specific value for ffem

    return Scaffold(
      backgroundColor: const Color(0xff151518),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.fromLTRB(20 * fem, 39 * fem, 20 * fem, 20 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff151518),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(28 * fem, 0 * fem, 0 * fem, 21 * fem),
                child: Text(
                  'ADD ITEM',
                  style: TextStyle(
                    fontSize: 30 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 30 * fem, 53 * fem),
                width: double.infinity,
                height: 3 * fem,
                decoration: const BoxDecoration(
                  color: Color(0x89ffffff),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 25* fem, 12 * fem),
                padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 30 * fem, 13 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Item name',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 12 * fem),
                padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Item number',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 21 * fem),
                padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 9 * fem),
                width: double.infinity,
                height: 196 * fem,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Ingredients used',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 12 * fem),
                padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Price',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 104 * fem),
                padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 13 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: TextFormField(
                  style: TextStyle(
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                  decoration: const InputDecoration(
                    hintText: 'Rating',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
               Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 150 * fem),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/AddSuccess');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, // Red color for the button
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 20 * ffem,
                    ),
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
class AddSuccess extends StatelessWidget {
  const AddSuccess({super.key});

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
                'Added Successfully',
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
              margin: const EdgeInsets.only(bottom: 16),
              width: 225 * fem,
              height: 199 * fem,
              child: Image.asset('assets/images/success.jpg'),
            ),
            const SizedBox(height: 30), // Add spacing between the image and the "Menu" button.
            GestureDetector(
              onTap: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MenuManagementPage())); // Navigate to a placeholder page
            },
              child: Container(
                width: double.infinity,
                height: 56.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Center(
                  child: Text(
                    'Go to Admin Menu',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
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
