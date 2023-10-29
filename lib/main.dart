// ignore_for_file: use_full_hex_values_for_flutter_colors
//import 'package:flutter/widgets.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'adminfourth.dart';
import 'adminthird.dart';
import 'userlogin.dart'; 
import 'reservefirst.dart';
import 'reservesecond.dart';
import 'outletfirst.dart';
import 'ordermenufirst.dart';
import 'adminfirst.dart';
import 'adminsecond.dart';
import 'createacc.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/resorttomenu': (context) => const ResortToMenu(),
        '/tablereservation': (context) => const TableReservation(),
        '/Catering': (context) => const Catering(),
        '/loginpage': (context) => const LoginPage(),
        '/reservepg1': (context) => const ReservePg1(),
        '/reservepg2': (context) => const ReservePg2(),
        '/Dineintro':(context)=>const Dineintro(),
        '/RegistrationForm':(context)=>const RegistrationForm(),
        '/OrdermenuFirst':(context)=>OrdermenuFirst(),
        '/AdminLogin':(context)=>const AdminLogin(),
        '/AdminFirst':(context)=>const AdminFirst(),
        '/AdminSecond':(context)=>const AdminSecond(),
        '/UserLogin':(context)=>const UserLogin(),
        '/CreateAcc':(context)=>const CreateAcc(),
        '/MySuccessPage':(context)=>const MySuccessPage(),
        '/reservepg3':(context)=>const ReserveThird(),
        '/reservesuccess':(context)=>const ReserveSuccess(),
        '/AdminThird':(context)=>const AdminThird(),
        '/AdminFourth':(context)=>const AdminFourth(),
        '/AddSuccess':(context)=>const AddSuccess(),
        '/DeleteSuccess':(context)=>const DeleteSuccess(),
        '/OfflineSuccess':(context)=>const OfflineSuccess(),
        '/ChooseRestaurant':(context)=>const ChooseRestaurant(),
        
        
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/loginpage');
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  'assets/images/logo.jpg',
                  width: 400,
                  height: 580,
                  fit: BoxFit.contain,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/loginpage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900], // Change to your desired color
                ),
                child: const Text('WELCOME'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//MENU AD



class ResortToMenu extends StatelessWidget {
  const ResortToMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: Scaffold(
       backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/menu1.jpg',
                  width: 253,
                  height: 202,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/menu2.jpg',
                  width: 248,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Resort to the menu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Want to try something new this festival?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Positioned(
              left: 20,  // Adjust the right value to position the "Skip" button
              bottom: 20, // Adjust the bottom value to position the "Skip" button
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context,'/tablereservation'); // Navigate back to tablereservation
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900], // Change to your desired color
                ),
                child: const Text('Skip'),
              ),
            ),
            Positioned(
              right: 20,  // Adjust the left value to position the icon
              bottom: 20, // Adjust the bottom value to position the icon
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () async {
                  Navigator.pushNamed(context, '/ChooseRestaurant');
                },
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}

//MENU-> CHOOSE RESTRO-> ORDER
class ChooseRestaurant extends StatelessWidget {
  const ChooseRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose Restaurant',
      home: const RestaurantSelectionScreen(),
      theme: ThemeData(
        primaryColor: Colors.red[900], // Red app bar
      ),
    );
  }
}

class RestaurantSelectionScreen extends StatefulWidget {
  const RestaurantSelectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RestaurantSelectionScreenState createState() =>
      _RestaurantSelectionScreenState();
}

class _RestaurantSelectionScreenState extends State<RestaurantSelectionScreen> {
  String? selectedRestaurant;
  final Map<String, String> restaurantContents = {
    'restaurant1': 'Contents for Restaurant 1',
    'restaurant2': 'Contents for Restaurant 2',
    'restaurant3': 'Contents for Restaurant 3',
    // Add more restaurants and their respective contents
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select a Restaurant'),
        backgroundColor: Colors.red[900], // Red app bar
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: DropdownButton<String>(
                  value: selectedRestaurant,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedRestaurant = newValue;
                      // Do not navigate here; use the buttons on the next page
                    });
                  },
                  items: restaurantContents.keys
                      .map((String restaurant) {
                        return DropdownMenuItem<String>(
                          value: restaurant,
                          child: Text(
                            restaurant,
                            style: const TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 254, 254)),
                          ),
                        );
                      })
                      .toList(),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (selectedRestaurant != null) {
                navigateToMenuPage(selectedRestaurant);
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[900], // Red button
              minimumSize: const Size(150, 60), // Full width button
            ),
            child: const Text('Go to Menu'),
          ),
        ],
      ),
      backgroundColor: Colors.black, // Black background
    );
  }

  void navigateToMenuPage(String? restaurant) {
    if (restaurant != null) {
      Navigator.of(context as BuildContext).push(
        MaterialPageRoute(
          builder: (context) => Theme(
            data: Theme.of(context),
            child: MenuApp(selectedRestaurant),
          ),
        ),
      );
    }
  }
}

class MenuApp extends StatelessWidget {
  final String? selectedRestaurant;

  const MenuApp(this.selectedRestaurant, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Menu'),
        backgroundColor: const Color.fromARGB(255, 143, 22, 14), // Red app bar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () async{
                  Navigator.pushNamed(context,'/resorttomenu'); // Navigate back to tablereservation
          },
        ),
      ),
      backgroundColor: const Color(0xff151518), // Black background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            MenuItem('Starters\n', 'Start your meal with these delicious appetizers.', Color(0xff1eb9b9cd), 'assets/images/starter.png'),
            MenuItem('Main Course\n', 'Delicious main courses for your taste buds.', Color(0xff1eb9b9cd), 'assets/images/maincourse.png'),
            MenuItem('Desserts\n', 'Sweet treats to end your meal on a high note.', Color(0xff1eb9b9cd), 'assets/images/dessert.png'),
            MenuItem('Beverages\n', 'Refresh yourself with our beverages.', Color(0xff1eb9b9cd), 'assets/images/dessert.png'),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final String description;
  final Color cardColor;
  final String imagePath; // Add an image path parameter

  const MenuItem(this.title, this.description, this.cardColor, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor, // Grey color for the cards
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          // Handle item selection
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(16.0), // Adjust padding
              leading: Image.asset(imagePath, width: 48, height: 48), // Use the provided image path
              title: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 242, 207, 207), // White text for title
                ),
              ),
              subtitle: Text(
                description,
                style: const TextStyle(
                  color: Colors.white, // White text for description
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//ORDER INTRO:
class Dineintro extends StatelessWidget {
  const Dineintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        color: const Color(0xff151518),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/offline.jpg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async{
                  Navigator.pushNamed(context,'/OfflineSuccess');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616), // Button background color
                  fixedSize: const Size(200, 50), // Button size
                ),
                child: const Text(
                  'Offline Dine-in',
                  style: TextStyle(
                    fontFamily: 'Inder',
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Image.asset(
                'assets/images/online.jpg',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context,'/OrdermenuFirst'); // Navigate back to tablereservation
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  fixedSize: const Size(200, 50),
                ),
                child: const Text(
                  'Online Dine-in',
                  style: TextStyle(
                    fontFamily: 'Inder',
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff),
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
class OfflineSuccess extends StatelessWidget {
  const OfflineSuccess({super.key});

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
                'Alright!',
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
                'Till you reach your favorite restaurant, Why not view the menu section?',
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
              child: Image.asset('assets/images/offlinewait.png'),
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

//RESERVATION AD


class TableReservation extends StatelessWidget {
  const TableReservation({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/reservepg1');
      },
      child: Scaffold(
         backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/table1.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'assets/images/table2.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Reserve a table',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                
                const Text(
                  'Tired of having to wait? Make a table reservation right away.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 20,  // Adjust the left value to position the icon
              bottom: 20, // Adjust the bottom value to position the icon
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () async {
                  Navigator.pushNamed(context, '/reservepg1');
                },
              ),
            ),
            Positioned(
              left: 20,  // Adjust the right value to position the "Skip" button
              bottom: 20, // Adjust the bottom value to position the "Skip" button
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, '/Catering');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900], // Change to your desired color
                ),
                child: const Text('Skip'),
              ),
        
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//ORDERS AD

class Catering extends StatelessWidget {
  const Catering({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Your onTap logic for ReservePg1
      },
      child: Scaffold(
        backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/catering1.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/catering2.jpg',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Place Dine-in Orders',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  'Now you can easily order your favorite meal, Lets Go!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            Positioned(
              right: 20,  // Adjust the left value to position the icon
              bottom: 20, // Adjust the bottom value to position the icon
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () async {
                  Navigator.pushNamed(context, '/Dineintro');
                },
              ),
            ),
            Positioned(
              left: 20,  // Adjust the right value to position the "Skip" button
              bottom: 20, // Adjust the bottom value to position the "Skip" button
              child: ElevatedButton(
                onPressed: () async {
                  Navigator.pushNamed(context, '/loginpage');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[900], // Change to your desired color
                ),
                child: const Text('Skip'),
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}


//USER-ADMIN-INTERFACE-SELECT

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Your onTap logic for LoginPage
        Navigator.pushNamed(context, '/welcomeback');
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 1.00),
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/user.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/UserLogin');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('Customer'),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 1.00),
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/admin.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/AdminLogin');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('Admin'),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.00, 1.00),
                  child: Container(
                    width: 120,
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/interface.jpg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () async{
                  Navigator.pushNamed(context, '/RegistrationForm');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text('Outlet'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//ADMIN LOGIN
class AdminLogin extends StatelessWidget {
  const AdminLogin({super.key});

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
  margin: const EdgeInsets.fromLTRB(31.0,170, 32.0, 0),
  child: GestureDetector(
    onTap: () {
      // Navigate to the menu page when "LOGIN" is tapped
      Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminFirst())); // Replace with your menu page.
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
              ],
          ),
        ),
      ),
      ),
    );
  }
}









