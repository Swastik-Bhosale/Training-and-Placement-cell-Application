import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:TPO_Cell/const/colors.dart';
import 'package:TPO_Cell/screen/SingUP.dart';
import 'package:TPO_Cell/screen/home.dart';
import 'package:TPO_Cell/screen/info.dart';
import 'package:TPO_Cell/screen/login.dart';

class maxpackage extends StatefulWidget {
  const maxpackage({Key? key}) : super(key: key);

  @override
  State<maxpackage> createState() => _maxpackageState();
}

class _maxpackageState extends State<maxpackage> {
  int _current = 0;
  dynamic _selectedIndex = {};

  CarouselController _carouselController = CarouselController();

  List<dynamic> _products = [
    {
      'title': 'Ganesh Bhise \nGoogle',
      'image': 'assets/images/gana.png',
      'description': '55 LPA'
    },
    {
      'title': 'Aryan Dhokale \nMicrosoft',
      'image': 'assets/images/aryan.png',
      'description': '48 LPA'
    },
    {
      'title': 'Yash Bhosale \nJ.P.Morgan',
      'image': 'assets/images/yash.png',
      'description': '50 LPA'
    },
   {
      'title': 'Swastik Bhosale \nAmazon',
      'image': 'assets/images/swastik.png',
      'description': '1CR'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: _selectedIndex.isNotEmpty
          ? FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.arrow_forward_ios),
            )
          : null,
     appBar: AppBar(
        title: const Text('Top MNCS'),
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
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LogIN_Screen(() {})),
                ); // Closes the drawer
              },
            ),
            ListTile(
              title: const Text('SignUp'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp_Screen(() {})),
                ); // Closes the drawer
              },
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Home_Screen(
                            imageUrl: '',
                          )),
                ); // Closes the drawer
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              child: CarouselSlider(
                carouselController: _carouselController,
                options: CarouselOptions(
                  height: 450.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.70,
                  enlargeCenterPage: true,
                  pageSnapping: true,
                  autoPlay: true, // Add this line for autoplay
                  autoPlayInterval: Duration(seconds: 2), // Adjust the interval as needed
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: _products.map((movie) {
                  return Builder(
                    builder: (BuildContext context) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            if (_selectedIndex == movie) {
                              _selectedIndex = {};
                            } else {
                              _selectedIndex = movie;
                            }
                          });
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: _selectedIndex == movie
                                ? Border.all(
                                    color: Colors.blue.shade500, width: 3)
                                : null,
                            boxShadow: _selectedIndex == movie
                                ? [
                                    BoxShadow(
                                        color: Colors.blue.shade100,
                                        blurRadius: 30,
                                        offset: Offset(0, 10))
                                  ]
                                : [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 20,
                                        offset: Offset(0, 5))
                                  ],
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  height: 320,
                                  margin: EdgeInsets.only(top: 10),
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    movie['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie['title'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  movie['description'],
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 34),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to home screen
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) => SliderP(),
                  ),
                );
              },
              child: Text('Go to Top Mncs',style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(200, 60)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
