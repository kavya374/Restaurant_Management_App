// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class OrdermenuFirst extends StatelessWidget {
  OrdermenuFirst({super.key});
  final List<String> pageOptions = [
    'Page1',
    'Page2',
    'Page3',
    'Page4',
    'Page5', // Add more page options as needed
  ];

 

  String getRandomPage() {
    final int randomIndex =
        DateTime.now().microsecondsSinceEpoch % pageOptions.length;
    return pageOptions[randomIndex];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/orderff.png', // Replace with the image path
                width: 300,
                height: 400,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Text(
                'ORDER FOOD',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Make your day special',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final currentPageName = getRandomPage();
                  String nextPageName;
                  do {
                    nextPageName = getRandomPage();
                  } while (nextPageName == currentPageName);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PageContent(pageName: nextPageName)),
                  );
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffc91616),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Icon(
                  Icons.double_arrow,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageContent extends StatelessWidget {
  final String pageName;

  const PageContent({super.key, required this.pageName});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose your Order',
      theme: ThemeData(
        primaryColor: Colors.red[900], // Red app bar
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose your Order'),
        backgroundColor: const Color.fromARGB(255, 143, 22, 14), // Red app bar
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press, e.g., navigate to the previous screen
          },
        ),
      ),
      backgroundColor:const Color(0xff151518), // Black background
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            MenuItem('Starters\n', 'Start your meal with these delicious appetizers.',Color(0xff1eb9b9cd),'assets/images/starter.png'),
            MenuItem('Main Course\n', 'Delicious main courses for your taste buds.', Color(0xff1eb9b9cd),'assets/images/maincourse.png'),
            MenuItem('Desserts\n', 'Sweet treats to end your meal on a high note.',Color(0xff1eb9b9cd),'assets/images/dessert.png'),
            MenuItem('Beverages\n', 'Refresh yourself with our beverages.', Color(0xff1eb9b9cd),'assets/images/starter.png'),
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