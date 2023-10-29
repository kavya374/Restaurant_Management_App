import 'package:flutter/material.dart';
class ReservePg1 extends StatelessWidget {
  const ReservePg1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/table3.png',
                  width: 401,
                  height: 750,
                  fit: BoxFit.fill,
                ),
              ),
              const Align(
                alignment: AlignmentDirectional(0.00, 0.70),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                  child: Text(
                    'RESERVE A TABLE',
                    style: TextStyle(
                      fontFamily: 'Readex Pro',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 200, 20, 20),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () async {
                      Navigator.pushNamed(context, '/reservepg2');
                    },
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.00, 1.00),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 20),
                  child: ElevatedButton(
                    onPressed: () async {
                      Navigator.pop(
                          context); // Navigate back to tablereservation
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
