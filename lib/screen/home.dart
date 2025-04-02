import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:TPO_Cell/const/colors.dart';
import 'package:TPO_Cell/model/notes_model.dart';
import 'package:TPO_Cell/screen/SingUP.dart';
import 'package:TPO_Cell/screen/add_note_screen.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/login.dart';
import 'package:TPO_Cell/screen/student_info.dart';
import 'package:TPO_Cell/screen/top_students.dart';
import 'package:TPO_Cell/screen/tpo_login.dart';
import 'package:TPO_Cell/widgets/stream_note.dart';

class Home_Screen extends StatefulWidget {
  final String imageUrl;
  const Home_Screen({super.key, required this.imageUrl});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

bool show = true;

class _Home_ScreenState extends State<Home_Screen> {
  late Note _note;

  @override
  void initState() {
    super.initState();
    _note = Note(
        '1', // id
        'Subtitle', // subtitle
        '12:00 PM', // time
        1, // image
        'Title', // title
        false,
        '14/02/24' // isDon
        ); // Initialize _note variable
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comapany Updates'),
        centerTitle: true,
        backgroundColor: const Color(0xFFF5860C),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _handleLogout(
                context), // Call the logout function on button press
          ),
        ],
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
                  MaterialPageRoute(builder: (context) => LogIN_Screen(() {})),
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
                  MaterialPageRoute(builder: (context) => SignUp_Screen(() {})),
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
                  MaterialPageRoute(
                      builder: (context) => const Home_Screen(
                            imageUrl: 'urlImages[index]',
                          )),
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
                  MaterialPageRoute(builder: (context) => SliderP()),
                ); // Closes the drawer
              },
            ), // Add more ListTile widgets for additional pages
            ListTile(
              title: const Text('Fill Info'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => studentinfo()),
                );
              },
            ),
            ListTile(
              title: const Text('Placed Students'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => maxpackage()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: backgroundColors,
      floatingActionButton: Visibility(
        visible: show,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => tpologin(_note, key: UniqueKey()),
            ));
          },
          backgroundColor: custom_green,
          child: Icon(Icons.add, size: 30),
        ),
      ),
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                show = true;
              });
            }
            if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                show = false;
              });
            }
            return true;
          },
          child: Column(
            children: [
              Stream_note(false),
              Text(
                'Logged In Successfully',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.bold),
              ),
              Stream_note(true),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _handleLogout(BuildContext context) async {
  try {
    await FirebaseAuth.instance.signOut();
    // Navigate to the login screen
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LogIN_Screen(() {})));
  } catch (e) {
    print('Error logging out: $e');
  }
}
