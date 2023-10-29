import 'package:flutter/material.dart';
import 'main.dart';
class ReservePg2 extends StatelessWidget {
  const ReservePg2({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Your onTap logic for ReservePg2
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/table3.png',
                    width: 379,
                    height: 450,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.00, 0.50),
                child: Text(
                  'No reservation yet',
                  style: TextStyle(
                    fontFamily: 'Readex Pro',
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: IconButton(
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () async {
                      Navigator.pushNamed(context, '/reservepg3');
                    },
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(context); // Navigate back to reservepg1
                    },
                    child: const Text('Back'),
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


class ReserveThird extends StatelessWidget {
  const ReserveThird({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(28.0, 100.0, 28.0, 100.0),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff151518),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 2.0, 30.0),
                child: const Text(
                  'RESERVE A TABLE',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
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
                  labelText: 'Restaurant Name',
                  labelStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
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
                  labelText: 'YYYY-MM-DD',
                  labelStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
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
                  labelText: 'HH:MM:SS',
                  labelStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
              TextField(
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
                  labelText: 'Number of Seats',
                  labelStyle: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
          const DisplayButton(),
        ],
      ),
    )
      ),
    );
  }
}

class MyInputField extends StatelessWidget {
  final String label;

  const MyInputField(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
      padding: const EdgeInsets.fromLTRB(15.0, 19.0, 15.0, 18.0),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: const Color(0x1eb9b9cd),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}

class DisplayButton extends StatelessWidget {
  const DisplayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the desired screen when the button is pressed.
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ReserveSuccess())); // Replace with your next page.
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(50, 160, 50,0),
        width: double.infinity,
        height: 56.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.red,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: const Center(
          child: Text(
            'Reserve',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
class ReserveSuccess extends StatelessWidget {
  const ReserveSuccess({super.key});

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
                'Reservation Successful',
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
                'You can order your food.',
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
            const SizedBox(height: 30), // Add spacing between the image and the "Menu" button.
            GestureDetector(
              onTap: () async {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const ResortToMenu())); // Navigate to a placeholder page
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
                    'Go to Menu',
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
