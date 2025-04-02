import 'package:flutter/material.dart';
import 'package:TPO_Cell/screen/SingUP.dart';
import 'package:TPO_Cell/screen/home.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/login.dart';

void main() {
  runApp(tcsscreen());
}

class tcsscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      title: 'TCS Info',
      home: Scaffold(
          appBar: AppBar(
        title: const Text('Explore TCS'),
        centerTitle: true,
      backgroundColor: const Color(0xFFF5860C),  
      ),
       drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Text(
                'Hi!!!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Login'),
              onTap: () {
                // Navigate to the home page or perform any action
                Navigator.pop(context); // Closes the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIN_Screen(() { })),
                ); // Closes the drawer
              },
            ),
            ListTile(
              title: const Text('SignUp'),
              onTap: () {
                // Navigate to the profile page or perform any action
                Navigator.pop(context); // Closes the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp_Screen(() { })),
                ); // Closes the drawer
              },
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Navigate to the profile page or perform any action
                Navigator.pop(context); // Closes the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home_Screen(imageUrl: '',)),
                ); // Closes the drawer
              },
            ),
            ListTile(
              title: const Text('Top MNCs'),
              onTap: () {
                // Navigate to the profile page or perform any action
                Navigator.pop(context); // Closes the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SliderP()),
                ); // Closes the drawer
              },
            ), // Add more ListTile widgets for additional pages
          ],
        ),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/1.png', // Assuming the TCS logo file is named 'tcs_logo.png' and is stored in the 'assets' folder
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Tata Consultancy Services (TCS) is an Indian multinational IT services and consulting company that is part of the Tata Group. TCS has over 614,000 consultants in 55 countries and has been working with some of the worlds largest businesses for over 55 years. TCS offers a range of services and solutions, including business, technology, and engineering. TCSs delivery model, Location Independent Agile, is considered a benchmark for software development excellence.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
