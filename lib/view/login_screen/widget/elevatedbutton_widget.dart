import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoider_app/view/home_screen/screen/home_screen.dart';

class ElavtedButtonWidget extends StatelessWidget {
  const ElavtedButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        minimumSize: MaterialStateProperty.all(Size(320.w, 35.h))
      ),
      
      onPressed: (){
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context){
            return const HomeScreen();
          }), (route) => false);
      },
       child: const Text('Next',style: TextStyle(color: Colors.white),)
       );
  }
}