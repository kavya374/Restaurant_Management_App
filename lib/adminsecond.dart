import 'package:flutter/material.dart';
//ADMIN-> UPDATES

class AdminSecond extends StatelessWidget {
  const AdminSecond({super.key});

  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your specific value for fem
    double ffem = 1.0; // Replace with your specific value for ffem

    /*return Scaffold(
      backgroundColor: const Color(0xff151518),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 39 * fem, 0 * fem, 0 * fem),
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
                  'UPDATE ITEM',
                  style: TextStyle(
                    fontSize: 30 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 30 * fem, 112 * fem),
                width: double.infinity,
                height: 3 * fem,
                decoration: const BoxDecoration(
                  color: Color(0x89ffffff),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 12 * fem),
                width: double.infinity,
                height: 47 * fem,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 21 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 181 * fem,
                          height: 25 * fem,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Item name/number',
                              hintStyle: TextStyle(
                                color: Color(0xffcccccc),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                    hintText: 'New Ingredients used',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 222 * fem),
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
                    hintText: 'New price',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/



    return Scaffold(
      backgroundColor: const Color(0xff151518),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 39 * fem, 0 * fem, 0 * fem),
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
                  'UPDATE ITEM',
                  style: TextStyle(
                    fontSize: 30 * ffem,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 30 * fem, 112 * fem),
                width: double.infinity,
                height: 3 * fem,
                decoration: const BoxDecoration(
                  color: Color(0x89ffffff),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 12 * fem),
                width: double.infinity,
                height: 47 * fem,
                decoration: BoxDecoration(
                  color: const Color(0x5ed9d9d9),
                  borderRadius: BorderRadius.circular(44 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 21 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 181 * fem,
                          height: 25 * fem,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffffffff),
                            ),
                            decoration: const InputDecoration(
                              hintText: 'Item name/number',
                              hintStyle: TextStyle(
                                color: Color(0xffcccccc),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
                    hintText: 'New Ingredients used',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(15 * fem, 0 * fem, 16 * fem, 222 * fem),
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
                    hintText: 'New price',
                    hintStyle: TextStyle(
                      color: Color(0xffcccccc),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10 * fem), // Adjusted margin
                width: double.infinity,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your update functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red, // Change the button color to red
                      minimumSize: const Size(180, 50), // Adjust the button size
                    ),
                    child: Text(
                      'Update',
                      style: TextStyle(
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffffffff),
                      ),
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
/*class AdminSecond extends StatelessWidget {
  const AdminSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff151518),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(11, 20, 0, 26),
              child: Text(
                'Employee Management',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w400,
                  height: 1.25,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Navigate to Staff Info page
                Navigator.push(context, MaterialPageRoute(builder: (context) => const StaffInfoPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc91616),
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Container(
                width: 193,
                height: 38,
                alignment: Alignment.center,
                child: const Text(
                  'Staff Info',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to Add page
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc91616),
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Container(
                width: 193,
                height: 38,
                alignment: Alignment.center,
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to Remove page
                Navigator.push(context, MaterialPageRoute(builder: (context) => const RemovePage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc91616),
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Container(
                width: 193,
                height: 38,
                alignment: Alignment.center,
                child: const Text(
                  'Remove',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to Feedback page
                Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedbackPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffc91616),
                padding: const EdgeInsets.all(0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Container(
                width: 193,
                height: 38,
                alignment: Alignment.center,
                child: const Text(
                  'Feedback',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // Add other containers and columns here
          ],
        ),
      ),
    );
  }
}

class StaffInfoPage extends StatelessWidget {
  const StaffInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the Staff Info page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staff Info Page'),
      ),
      body: const Center(
        child: Text('Staff Info content goes here'),
      ),
    );
  }
}

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the Add page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Page'),
      ),
      body: const Center(
        child: Text('Add content goes here'),
      ),
    );
  }
}

class RemovePage extends StatelessWidget {
  const RemovePage({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the Remove page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remove Page'),
      ),
      body: const Center(
        child: Text('Remove content goes here'),
      ),
    );
  }
}

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    // This is the Feedback page
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Page'),
      ),
      body: const Center(
        child: Text('Feedback content goes here'),
      ),
    );
  }
}*/