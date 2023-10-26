import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoider_app/view/track_screen/screen/track_screen.dart';

import '../../domain/constants/constants.dart';

class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
           CircleAvatar(
            radius: 70.w ,
            backgroundColor: Colors.blue,
            child:  Icon(Icons.done_outline,size: 40.w,),
           ),
           szdbx,
           const Text('YOUR BOOKING IS CONFIRMED',style: TextStyle(
              fontWeight: FontWeight.bold
           ),),
           szdbx,
           const Text('Tracking ID : VJ54378653'),
           szdbx,
           ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            minimumSize: MaterialStateProperty.all(Size(100.w,35.h))
          ),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                 return const TrackScreen();
              }));
            },
             child: const Text('Track',style: TextStyle(
              color: Colors.white
             ),)
             )
            // Icon(Icons.check_circle,color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}