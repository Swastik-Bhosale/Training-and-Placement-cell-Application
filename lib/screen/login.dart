// import 'package:flutter/material.dart';
// import 'package:TPO_Cell/const/colors.dart';
// import 'package:TPO_Cell/data/auth_data.dart';

// class LogIN_Screen extends StatefulWidget {
//   final VoidCallback show;
//   LogIN_Screen(this.show, {Key? key}) : super(key: key);

//   @override
//   State<LogIN_Screen> createState() => _LogIN_ScreenState();
// }

// class _LogIN_ScreenState extends State<LogIN_Screen> {
//   FocusNode _focusNode1 = FocusNode();
//   FocusNode _focusNode2 = FocusNode();

//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _focusNode1.dispose();
//     _focusNode2.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _focusNode1.addListener(() {
//       setState(() {});
//     });
//     _focusNode2.addListener(() {
//       setState(() {});
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: backgroundColors,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               SizedBox(height: 20),
//               image(),
//               SizedBox(height: 50),
//               textfield(emailController, _focusNode1, 'Email', Icons.email),
//               SizedBox(height: 10),
//               textfield(passwordController, _focusNode2, 'Password', Icons.lock),
//               SizedBox(height: 8),
//               account(),
//               SizedBox(height: 20),
//               loginButton(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget account() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Text(
//             "Don't have an account?",
//             style: TextStyle(color: Colors.grey[700], fontSize: 14),
//           ),
//           SizedBox(width: 5),
//           GestureDetector(
//             onTap: widget.show,
//             child: Text(
//               'Sign UP',
//               style: TextStyle(
//                   color: Colors.blue,
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget loginButton() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: GestureDetector(
//         onTap: () {
//           // Perform login action
//           AuthenticationRemote().login(emailController.text, passwordController.text);
//         },
//         child: Container(
//           alignment: Alignment.center,
//           width: double.infinity,
//           height: 50,
//           decoration: BoxDecoration(
//             color: custom_green,
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Text(
//             'LogIn',
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 23,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget textfield(TextEditingController controller, FocusNode focusNode, String hintText, IconData icon) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: TextField(
//           controller: controller,
//           focusNode: focusNode,
//           style: TextStyle(fontSize: 18, color: Colors.black),
//           decoration: InputDecoration(
//               prefixIcon: Icon(
//                 icon,
//                 color: focusNode.hasFocus ? custom_green : Color(0xffc5c5c5),
//               ),
//               contentPadding:
//                   EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//               hintText: hintText,
//               enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(
//                   color: Color(0xffc5c5c5),
//                   width: 2.0,
//                 ),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide(
//                   color: custom_green,
//                   width: 2.0,
//                 ),
//               )),
//         ),
//       ),
//     );
//   }

//   Widget image() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         width: double.infinity,
//         height: 300,
//         decoration: BoxDecoration(
//           color: backgroundColors,
//           image: DecorationImage(
//             image: AssetImage('images/7.png'),
//             fit: BoxFit.fitWidth,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:TPO_Cell/const/colors.dart';
import 'package:TPO_Cell/data/auth_data.dart';
import 'package:TPO_Cell/screen/home.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/student_info.dart';

class LogIN_Screen extends StatefulWidget {
  final VoidCallback show;
  LogIN_Screen(this.show, {Key? key}) : super(key: key);

  @override
  State<LogIN_Screen> createState() => _LogIN_ScreenState();
}

class _LogIN_ScreenState extends State<LogIN_Screen> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    _focusNode1.dispose();
    _focusNode2.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {});
    });
    _focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColors,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              image(),
              SizedBox(height: 50),
              textfield(emailController, _focusNode1, 'Email', Icons.email),
              SizedBox(height: 10),
              textfield(passwordController, _focusNode2, 'Password', Icons.lock),
              SizedBox(height: 8),
              account(),
              SizedBox(height: 20),
              loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget account() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Don't have an account?",
            style: TextStyle(color: Colors.grey[700], fontSize: 14),
          ),
          SizedBox(width: 5),
          GestureDetector(
            onTap: widget.show,
            child: Text(
              'Sign UP',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
  Widget loginButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GestureDetector(
        onTap: () {
          // Perform login action
          AuthenticationRemote()
              .login(emailController.text, passwordController.text)
              .then((User?user) {
            if (user!=null) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => studentinfo()),
              );
            } else {
              // Show an error message if login fails
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Login failed. Please check your credentials.'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          });
        },
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            color: custom_green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'LogIn',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget textfield(TextEditingController controller, FocusNode focusNode, String hintText, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextField(
          controller: controller,
          focusNode: focusNode,
          style: TextStyle(fontSize: 18, color: Colors.black),
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: focusNode.hasFocus ? custom_green : Color(0xffc5c5c5),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xffc5c5c5),
                  width: 2.0,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: custom_green,
                  width: 2.0,
                ),
              )),
        ),
      ),
    );
  }

  Widget image() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: backgroundColors,
          image: DecorationImage(
            image: AssetImage('assets/images/7.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
