import 'package:flutter/material.dart';
import 'package:TPO_Cell/screen/SingUP.dart';
import 'package:TPO_Cell/screen/home.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/login.dart';

void main() {
  runApp(persistent_screen());
}

class persistent_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Persistent Info',
      home: Scaffold(
       appBar: AppBar(
        title: const Text('Explore Persistant'),
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
                'assets/images/3.png', // Assuming the persistent logo file is named 'persistent_logo.png' and is stored in the 'assets' folder
                width: 150,
                height: 150,
              ),
              SizedBox(height: 20),
              Text(
                'persistent is an Indian multinational information technology company that provides consulting, outsourcing, and technology services. Founded in Pune in 1981, persistent is headquartered in Bangalore and has over 317,000 employees. persistent is the second-largest IT company in India by revenue, and is ranked among the worlds top three IT services brands and top 150 most valued brands. ',
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
