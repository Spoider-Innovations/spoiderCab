import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../login_screen/screen/login_screen.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
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
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return const LoginScreen();
        }));
      },
       child: const Text('Next',style: TextStyle(color: Colors.white),)
       );
  }
}