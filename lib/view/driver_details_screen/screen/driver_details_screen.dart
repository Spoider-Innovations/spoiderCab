import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spoider_app/domain/constants/constants.dart';

class DriverDetailsScreen extends StatelessWidget {
  const DriverDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  double h = MediaQuery.of(context).size.height;
    //  double w = MediaQuery.of(context).size.width;

 return Scaffold(
     
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Track Order',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
           icon: const Icon(Icons.arrow_back)
           ),),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                width: double.infinity,
                child: Image.asset('lib/assets/7ca82f32-6f6e-4576-b7ce-2e39daa76620.jpeg',fit: BoxFit.cover,),
              ),
              
            ),
              Positioned(
                bottom:10 .h,
                right: 10.w,
                child: InkWell(
                onTap: (){
                displayBottomSheet(context,);
                },
                 child: const CircleAvatar(
                  radius: 40,
                    backgroundImage: AssetImage('lib/assets/driverimage.webp')
                   ),
                           ),
              )
               
          ],
        ),
    );
  }
 displayBottomSheet(BuildContext context,){
  return showModalBottomSheet(
    context: context,
     builder: (context) => SizedBox(
      width: double.infinity ,
      height:200.h,
      child:  Column(
        children: [
          SizedBox(
            height: 90.h,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                     height: 60.h,
                    width:300.w,
                    child: const Card(
                     child: Padding(
                       padding: EdgeInsets.all(8.0),
                       child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('On Trip',style: TextStyle(color: Colors.blue),),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.emergency,size: 12,color: Colors.red,),
                                Text('Emergency',style: TextStyle(color: Colors.red),),
                              ],
                            ),
                          )
                        ],
                       ),
                     ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50.h,
                  right:1.w,
                  left: 1.w,
                  child: const CircleAvatar(backgroundImage: AssetImage('lib/assets/driverimage.webp',) )
                  )
              ],
            ),
          ),
          const Text('Ravi'),
          const Text('TN - 48 B 87654',style: TextStyle(color: Colors.grey),),
          const Text('94456782358',style: TextStyle(color: Colors.grey),),
          szdbx,
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 100.w,
                height: 30.h,
                child: ElevatedButton(
                  style: ButtonStyle(
                    //  minimumSize: MaterialStateProperty.all(Size(60.w, 30.h)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                    backgroundColor: MaterialStateProperty.all(Colors.grey)
                  ),
                  onPressed: (){},
                   child: const Text('share',style: TextStyle(color: Colors.black))
                   ),
              ),
                 szdbxW,
                 ElevatedButton(
                  
                  style: ButtonStyle(
                     minimumSize: MaterialStateProperty.all(Size(60.w, 30.h)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                  backgroundColor: MaterialStateProperty.all(Colors.blue)
                ),
                  onPressed: (){},
                   child: const Text('End Ride',style: TextStyle(color: Colors.white),)
                   )
            ],
          )
        ],
      ),
     )
     );
 }
   
}