import 'package:flutter/material.dart';
import 'package:TPO_Cell/screen/SingUP.dart';
import 'package:TPO_Cell/screen/home.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/login.dart';

void main() {
  runApp(wipro_screen());
}

class wipro_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wipro Info',
      home: Scaffold(
       appBar: AppBar(
        title: const Text('Explore Wipro'),
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
                'assets/images/2.png', // Assuming the wipro logo file is named 'wipro_logo.png' and is stored in the 'assets' folder
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Wipro Limited is an Indian multinational corporation that provides information technology, consulting, and business process services. The company is headquartered in Bangalore and has over 245,000 employees serving clients in 65 countries. Wipro is Indias third-largest IT company and makes about 80% of its sales outside of India.  ',
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
