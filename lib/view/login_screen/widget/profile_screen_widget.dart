import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'elevatedbutton_widget.dart';

class ProfileScreenWidget extends StatelessWidget {
  const ProfileScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
    children: [
      Container(
        width: double.infinity,
              height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.1, 0.25],
        colors: [
          Color(0xFFDAE4EB),
          Colors.white,
        ],
      ),
      ),
    ),
    Positioned(
    child: Center(
    child: Container(
      width: 330 . w,
      height: 310 . h,
      
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
    BoxShadow(
    color: Colors.black.withOpacity(0.1), // Shadow color
    spreadRadius: 2, // Spread radius of the shadow
    blurRadius: 5, // Blur radius of the shadow
    offset: const Offset(0, 2), // Offset of the shadow (horizontal, vertical)
    ),
    ],
        borderRadius: BorderRadius.circular(10)
      ),
     child: Column(
      children: [
        Container(
          width: 330.w,
          height: 200.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:const DecorationImage(image: AssetImage('lib/assets/loginImg.png',),fit: BoxFit.cover)
          ),
         
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 40.h,
            child: TextField(
              
               decoration: InputDecoration(
              labelText: 'Enter Mobile Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0), // Set the border radius
                borderSide: const BorderSide(color: Colors.blue),  // Set the border color
              ),
            ),
            keyboardType: TextInputType.number,
            ),
          ),
        ),
        const ElavtedButtonWidget()
      ],
     ),
    ),
    )
    )
    ],
    );
  }
}

