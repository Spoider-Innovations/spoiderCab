import 'package:flutter/material.dart';

import '../../sign_up_screen/screen/sign_up_screen.dart';

class EnableLocationScreen extends StatelessWidget {
  const EnableLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.25],
            colors: [
              Color(0xFFDAE4EB),
              Colors.white,
            ],
          )), // Set the background color to grey
          child: Column(
            children: <Widget>[
              SizedBox(
                height: screenHeight * 0.18,
              ),
              SizedBox(
                height: screenHeight * 0.4,
                width: screenWidth * 0.7,
                child: Image.asset('lib/assets/LocationImg.png'),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              const Text('Enable Your Location',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              const Text('Choose your location to start find',
                  style: TextStyle(fontSize: 12)),
              const Text('the request around you.',
                  style: TextStyle(fontSize: 12)),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                height: screenHeight * 0.045,
                width: screenWidth * 0.5,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()),
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              side:
                                  const BorderSide(color: Color(0xFF339BE7))))),
                  child: const Text(
                    'USE MY LOCATION',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.white),
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
