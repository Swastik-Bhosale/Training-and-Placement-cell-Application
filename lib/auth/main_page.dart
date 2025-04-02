import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:TPO_Cell/auth/auth_page.dart';
import 'package:TPO_Cell/screen/home.dart';

class Main_Page extends StatelessWidget {
  const Main_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Home_Screen(imageUrl: 'urlImages[index]',);
          } else {
            return Auth_Page();
          }
        },
      ),
    );
  }
}
