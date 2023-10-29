import 'package:flutter/material.dart';

import 'adminfourth.dart';
import 'adminsecond.dart';
import 'adminthird.dart';


class AdminFirst extends StatelessWidget {
  const AdminFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff151518),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: const [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryButton('Employee', EmployeePage()),
                  CategoryButton('Finance', FinancePage()),
                  CategoryButton('Menu Updates', MenuManagementPage()),
                  CategoryButton('Order and Tables',AdminThird()),
                  CategoryButton('Stocks', StocksPage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final Widget page;

  const CategoryButton(this.title, this.page, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: 193,
        height: 38,
        decoration: BoxDecoration(
          color: const Color(0xffc91616),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontFamily: 'Inder',
              fontSize: 22,
              fontWeight: FontWeight.w400,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}

class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

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
}

class FinancePage extends StatelessWidget {
  const FinancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xff151518), // Black background color
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 100.0), // Adjust the top padding as needed
              child: Text(
                'Finance Management',
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.w400,
                  height: 1.25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to "Total Expenditure" page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const TotalExpenditurePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffc91616),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Total Expenditure',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to "Bills" page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const BillsPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffc91616),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text(
                    'Bills',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class BillsPage extends StatelessWidget {
  const BillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bills Page'),
      ),
      body: const Center(
        child: Text('Bills content goes here'),
      ),
    );
  }
}

class TotalExpenditurePage extends StatelessWidget {
  const TotalExpenditurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total Expenditure Page'),
      ),
      body: const Center(
        child: Text('Total Expenditure content goes here'),
      ),
    );
  }
}



class MenuManagementPage extends StatelessWidget {
  const MenuManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xff151518), // Black background color
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Navigate to Menu Page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Container(
                  width: 193,
                  height: 38,
                  alignment: Alignment.center,
                  child: const Text(
                    'Menu',
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
                  // Navigate to Add Page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminFourth()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
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
                  // Navigate to Update Page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminSecond()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Container(
                  width: 193,
                  height: 38,
                  alignment: Alignment.center,
                  child: const Text(
                    'Update',
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
                  // Navigate to Delete Page
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DeletePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Container(
                  width: 193,
                  height: 38,
                  alignment: Alignment.center,
                  child: const Text(
                    'Delete',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      height: 1.25,
                      color: Colors.white,
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

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Info Page'),
      ),
      body: const Center(
        child: Text('Menu Info content goes here'),
      ),
    );
  }
}

class DeletePage extends StatelessWidget {
  const DeletePage({super.key});
  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your specific value for fem
    double ffem = 1.0; // Replace with your specific value for ffem

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16 * fem),
                  width: double.infinity,
                  height: 200 * fem,
                  child: Image.asset(
                    'assets/images/deleteimg.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 16 * fem),
                  child: Text(
                    'DELETE ITEM',
                    style: TextStyle(
                      fontSize: 30 * ffem,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 26 * fem),
                  width: double.infinity,
                  height: 3 * fem,
                  decoration: const BoxDecoration(
                    color: Color(0x89ffffff),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10 * fem), // Adjusted margin
                  padding: EdgeInsets.fromLTRB(21 * fem, 9 * fem, 21 * fem, 9 * fem), // Reduced padding
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0x5ed9d9d9),
                    borderRadius: BorderRadius.circular(44 * fem),
                  ),
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 18 * ffem, // Reduced font size
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10 * fem),
                      width: 120 * fem,
                      height: 47 * fem,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(44 * fem),
                      ),
                      child: ElevatedButton(
                        onPressed: () async{
                          Navigator.pushNamed(context, '/DeleteSuccess');
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                        child: Text(
                          'Delete',
                          style: TextStyle(
                            fontSize: 20 * ffem,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10 * fem),
                      width: 120 * fem,
                      height: 47 * fem,
                      decoration: BoxDecoration(
                        color: Colors.red, // Change the color to red
                        borderRadius: BorderRadius.circular(44 * fem),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your cancel functionality here
                        },
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red), // Change button color to red
                        child: Text(
                          'Cancel',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class DeleteSuccess extends StatelessWidget {
  const DeleteSuccess({super.key});

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
                'Deleted Successfully',
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

//ADMIN->STOCKS

class StocksPage extends StatelessWidget {
  const StocksPage({super.key});
  @override
  Widget build(BuildContext context) {
    double fem = 1.0; // Replace with your specific value for fem
    double ffem = 1.0; // Replace with your specific value for ffem

    return Scaffold(
      backgroundColor: const Color(0xff151518),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                navigateToPage(context, "Stock");
              },
              child: Container(
                width: 193 * fem,
                height: 38 * fem,
                margin: EdgeInsets.only(bottom: 16 * fem),
                decoration: BoxDecoration(
                  color: const Color(0xffc91616),
                  borderRadius: BorderRadius.circular(4 * fem),
                ),
                child: Center(
                  child: Text(
                    'Stock',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                navigateToPage(context, "Used");
              },
              child: Container(
                width: 193 * fem,
                height: 38 * fem,
                margin: EdgeInsets.only(bottom: 16 * fem),
                decoration: BoxDecoration(
                  color: const Color(0xffc91616),
                  borderRadius: BorderRadius.circular(4 * fem),
                ),
                child: Center(
                  child: Text(
                    'Used',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                navigateToPage(context, "Wastage");
              },
              child: Container(
                width: 193 * fem,
                height: 38 * fem,
                margin: EdgeInsets.only(bottom: 16 * fem),
                decoration: BoxDecoration(
                  color: const Color(0xffc91616),
                  borderRadius: BorderRadius.circular(4 * fem),
                ),
                child: Center(
                  child: Text(
                    'Wastage',
                    textAlign: TextAlign.center,
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
    );
  }

  void navigateToPage(BuildContext context, String pageTitle) {
    // You can implement your navigation logic here
    // For example, use Navigator to push a new route with the given pageTitle
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return NextPage(pageTitle);
        },
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  final String pageTitle;

  const NextPage(this.pageTitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Center(
        child: Text('You clicked the $pageTitle button.'),
      ),
    );
  }
}