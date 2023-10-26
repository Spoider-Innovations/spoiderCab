import 'package:flutter/material.dart';



class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
              )), // Set
            ),

            // Content
            Column(
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
                            ),
                            height: screenHeight * 0.3,
                            width: double.infinity,
                            child: Image.asset(
                              'lib/assets/SignUpImg.png',
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
                                    decoration: InputDecoration(
                                      counterText: '',
                                      prefixText: '+91 ',
                                      border: OutlineInputBorder(),
                                      labelText: 'Mobile Number',
                                    ),
                                    keyboardType: TextInputType.phone,
                                    maxLength: 10,
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
                      'Already have an account?',
                      style: TextStyle(color: Colors.black26),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const LoginScreen()),
                        // );
                        // Navigator.push(context, route)
                      },
                      child: const Text(
                        'SignIn',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
