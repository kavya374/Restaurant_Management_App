import 'package:flutter/material.dart';
//ADMIN -> ORDER& TABLES

class AdminThird extends StatelessWidget {
  const AdminThird({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your specific value for fem
    double ffem = 1.0; // Replace with your specific value for ffem

    return Scaffold(
      backgroundColor: const Color(0xff151518),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 883 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 24 * fem,
                      top: 112 * fem,
                      child: Align(
                        child: Container(
                          width: 430 * fem,
                          height: 3 * fem,
                          decoration: const BoxDecoration(
                            color: Color(0x89ffffff),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24 * fem,
                      top: 272 * fem,
                      child: Align(
                        child: Container(
                          width: 430 * fem,
                          height: 3 * fem,
                          decoration: const BoxDecoration(
                            color: Color(0x89ffffff),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18 * fem,
                      top: 753 * fem,
                      child: Align(
                        child: Container(
                          width: 430 * fem,
                          height: 3 * fem,
                          decoration: const BoxDecoration(
                            color: Color(0x89ffffff),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 33 * fem,
                      top: 28 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 151 * fem,
                          height: 68 * fem,
                          child: Text(
                            'Orders & Tables',
                            style: TextStyle(
                              fontSize: 27 * ffem,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24 * fem,
                      top: 145 * fem,
                      child: SizedBox(
                        width: 436 * fem,
                        height: 38 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 50 * fem, 0 * fem),
                              width: 150 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xffc91616),
                                borderRadius: BorderRadius.circular(4 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Order Details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 150 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0xffc91616),
                                borderRadius: BorderRadius.circular(4 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Table details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 20 * ffem,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24 * fem,
                      top: 239 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 100 * fem,
                          height: 25 * fem,
                          child: Text(
                            'Order Details',
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25 * fem,
                      top: 720 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 124 * fem,
                          height: 25 * fem,
                          child: Text(
                            'Table Details',
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // The remaining Positioned widgets
                    // These are your additional widgets.
                    Positioned(
                      left: 18 * fem,
                      top: 305 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(23 * fem, 12 * fem, 40 * fem, 18 * fem),
                        width: 333 * fem,
                        height: 80 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0x14ffffff),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                              child: Text(
                                'Bill no.: 22CSE354',
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Time: 9.45 am',
                                style: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18 * fem,
                      top: 401 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(23 * fem, 12 * fem, 40 * fem, 18 * fem),
                        width: 333 * fem,
                        height: 80 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0x14ffffff),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                              child: Text(
                                'Bill no.: 22BHE973',
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Time: 10.50 am',
                                style: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18 * fem,
                      top: 497 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(23 * fem, 12 * fem, 40 * fem, 18 * fem),
                        width: 333 * fem,
                        height: 80 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0x14ffffff),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 6 * fem),
                              child: Text(
                                'Bill no.: 22NJF749',
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Time: 10.52 am',
                                style: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18 * fem,
                      top: 593 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(23 * fem, 12 * fem, 40 * fem, 20 * fem),
                        width: 333 * fem,
                        height: 80 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0x14ffffff),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
                              child: Text(
                                'Bill no.: 22BSJ827',
                                style: TextStyle(
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                            Text(
                              'Time: 12.00 am',
                              style: TextStyle(
                                fontSize: 15 * ffem,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15 * fem,
                      top: 771 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 40 * fem, 11 * fem),
                        width: 333 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0x14ffffff),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Text(
                          'Table no. 11',
                          style: TextStyle(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 18 * fem,
                      top: 827 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20 * fem, 10 * fem, 40 * fem, 11 * fem),
                        width: 333 * fem,
                        height: 40 * fem,
                        decoration: BoxDecoration(
                          color: const Color(0x14ffffff),
                          borderRadius: BorderRadius.circular(24 * fem),
                        ),
                        child: Text(
                          'Table no. 17',
                          style: TextStyle(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ... (other content)
            ],
          ),
        ),
      ),
    );
  }
}