import 'package:flutter/material.dart';

import '../../sign_up_screen/screen/sign_up_screen.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Background Container
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
                colors: [
                  Color(0xFFDAE4EB),
                  Colors.white,
                ],
              )),
            ),

            // Content
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.2,
                  ),
                  Center(
                    child: SizedBox(
                      height: screenHeight * 0.55,
                      width: screenWidth * 0.95,
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(13)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(blurRadius: 3, color: Colors.grey)
                            ]),
                        child: Column(
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15),
                                ),
                                color: Color(0xFF339BE7),
                              ),
                              height: screenHeight * 0.3,
                              width: double.infinity,
                              child: Image.asset(
                                'lib/assets/loginImg.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            Container(
                              color: Colors.white,
                              width: screenWidth * 0.9,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: screenHeight * 0.03,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.9,
                                    height: screenHeight * 0.07,
                                    child: const TextField(
                                      maxLength: 10,
                                      decoration: InputDecoration(
                                          prefixText: '+91 ',
                                          border: OutlineInputBorder(),
                                          labelText: 'Mobile Number',
                                          counterText: ''),
                                      keyboardType: TextInputType.phone,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.03),
                            SizedBox(
                              width: screenWidth * 0.9,
                              height: screenHeight * 0.07,
                              child: ElevatedButton(
                                child: const Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Create an account',
                        style: TextStyle(color: Colors.black26),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()),
                          );
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
