


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:spoider_app/view/getstarted_screen/get_started_screen.dart';
import 'package:spoider_app/view/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     checkFirstTime();
    super.initState();
  }
Future<void> checkFirstTime() async{
 SharedPreferences pref  = await SharedPreferences.getInstance();
 bool isFirstTime = pref.getBool('firstTime') ?? true;

 Future.delayed(const Duration(seconds: 2),(){
    if(isFirstTime){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const GetStartedScreen()));
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomeScreen()));
    }
 });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 180,
              width: 180,
              child: Image.asset(
                'lib/assets/Group 87.png',
                fit: BoxFit.cover,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
