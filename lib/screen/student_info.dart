// import 'package:flutter/material.dart';
// import 'package:TPO_Cell/screen/SingUP.dart';
// import 'package:TPO_Cell/screen/home.dart';
// import 'package:TPO_Cell/screen/info.dart';
// import 'package:TPO_Cell/screen/login.dart';
// import 'package:TPO_Cell/screen/top_students.dart';


// class studentinfo extends StatefulWidget {
//   const studentinfo({super.key});

//   @override
//   State<studentinfo> createState() => _studentinfoState();
// }

// class _studentinfoState extends State<studentinfo> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController mobileController = TextEditingController();
//   TextEditingController addressController = TextEditingController();
//   TextEditingController yearController = TextEditingController();
//   TextEditingController branchController= TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Student Info'),
//         centerTitle: true,
//         backgroundColor: const Color(0xFFF5860C),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.pinkAccent,
//               ),
//               child: Text(
//                 'Hi!!!',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 24,
//                 ),
//               ),
//             ),
//             ListTile(
//               title: const Text('Login'),
//               onTap: () {
//                 // Navigate to the home page or perform any action
//                 Navigator.pop(context); // Closes the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => LogIN_Screen(() {})),
//                 ); // Closes the drawer
//               },
//             ),
//             ListTile(
//               title: const Text('SignUp'),
//               onTap: () {
//                 // Navigate to the profile page or perform any action
//                 Navigator.pop(context); // Closes the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignUp_Screen(() {})),
//                 ); // Closes the drawer
//               },
//             ),
//             ListTile(
//               title: const Text('Home'),
//               onTap: () {
//                 // Navigate to the profile page or perform any action
//                 Navigator.pop(context); // Closes the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const Home_Screen(
//                             imageUrl: '',
//                           )),
//                 ); // Closes the drawer
//               },
//             ),
//             ListTile(
//               title: const Text('Top MNCs'),
//               onTap: () {
//                 // Navigate to the profile page or perform any action
//                 Navigator.pop(context); // Closes the drawer
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SliderP()),
//                 ); // Closes the drawer
//               },
//             ), // Add more ListTile widgets for additional pages
//           ],
//         ),
//       ),
//       //for the form to be in center
//       backgroundColor: Colors.white70,
//       body: Center(
//         child: Container(
//           padding: const EdgeInsets.all(20),
//           child: ListView(
//             shrinkWrap: true,
//             children: [
//               const Text('Name'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Name',
//                 ),
//               ),

//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Email'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: emailController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Email',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text('Year of Study'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: branchController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Current Year',
//                 ),
//               ),
//               const SizedBox(height: 10),
//               const Text('Branch Name'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: yearController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Your Branch Name',
//                 ),
//               ),
//               //some space between email and mobile
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Mobile'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: mobileController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Mobile',
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text('Address'),
//               const SizedBox(
//                 height: 5,
//               ),
//               TextField(
//                 controller: addressController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   hintText: 'Enter Address',
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               //create button for register
//               ElevatedButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return AlertDialog(
//                         title: Text("Submitted Successful"),
//                         content: Text("You have successfully registered."),
//                         actions: <Widget>[
//                           TextButton(
//                             onPressed: () {
//                               // Navigate to home screen
//                               Navigator.of(context).pushReplacement(
//                                 MaterialPageRoute(
//                                   builder: (BuildContext context) =>maxpackage()
//                                 ),
//                               );
//                             },
//                             child: Text("OK"),
//                           ),
//                         ],
//                       );
//                     },
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor:
//                       Colors.black, // Change the background color here
//                 ),
//                 child: Text(
//                   'Submit',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:TPO_Cell/screen/SingUP.dart';
import 'package:TPO_Cell/screen/home.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/login.dart';
import 'package:TPO_Cell/screen/top_students.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class studentinfo extends StatefulWidget {
  const studentinfo({super.key});

  @override
  State<studentinfo> createState() => _studentinfoState();
}

class _studentinfoState extends State<studentinfo> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  TextEditingController branchController = TextEditingController();

  FirebaseFirestore firestore =
      FirebaseFirestore.instance; // Firestore instance

  @override
  void initState() {
    super.initState();
    fetchStudentData(); // Fetch data when the widget initializes
  }

  void fetchStudentData() async {
    try {
      // Fetch the document with the user's UID as the document ID
      DocumentSnapshot document =
          await firestore.collection('studentData').doc('auth').get();

      if (document.exists) {
        // If document exists, set the text controllers with the retrieved data
        setState(() {
          nameController.text = document['name'];
          emailController.text = document['email'];
          mobileController.text = document['mobile'];
          addressController.text = document['address'];
          yearController.text = document['year'];
          branchController.text = document['branch'];
        });
      }
    } catch (e) {
      print('Error fetching data: $e');
    }
  }

  void saveStudentData() async {
    try {
      // Save data to Firestore
      await firestore.collection('studentData').doc('auth').set({
        'name': nameController.text,
        'email': emailController.text,
        'mobile': mobileController.text,
        'address': addressController.text,
        'year': yearController.text,
        'branch': branchController.text,
      });
    } catch (e) {
      print('Error saving data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Info'),
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
                            imageUrl: '',
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
          ],
        ),
      ),
      //for the form to be in center
      backgroundColor: Colors.white70,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              const Text('Name'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Name',
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              const Text('Email'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
              const SizedBox(height: 10),
              const Text('Year of Study'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: branchController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Current Year',
                ),
              ),
              const SizedBox(height: 10),
              const Text('Branch Name'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: yearController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Branch Name',
                ),
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Mobile'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: mobileController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Mobile',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Address'),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Address',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  saveStudentData(); // Call function to save data
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Submitted Successful"),
                        content: Text("You have successfully registered."),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                               Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>maxpackage()
                                ),
                               );
                            },
                            child: Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
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