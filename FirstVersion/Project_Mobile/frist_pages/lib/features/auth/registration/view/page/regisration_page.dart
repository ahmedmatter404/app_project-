import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/registration/view/components/regisration_data_widget.dart';
import 'package:frist_pages/features/auth/registration/view/components/button_registration.dart';


class RegistrationPage
 extends StatelessWidget {
  const RegistrationPage
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: const Text("  " ,), backgroundColor:null, ),
        
        body: Stack(
          children: [

            
            Container(
              decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 54, 55, 55),
                
              
                image: DecorationImage(
                  image: const AssetImage('Images/background.jpg'), // Adjust path to your image
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
          //       const Text('Signup' ,
          // style: TextStyle(
          // fontSize: 35.0,
          // fontWeight: FontWeight.bold,
          // color: Colors.white,
          
          
        // ),
        // textAlign: TextAlign.center),
                Expanded(
                  child: RegistrationDataWidget(),
                ),
                const SizedBox(
          height: 100,
          child: ButtonRegistrationWidget(),
        ),

                
              ],
            ),
          ],
        ),
      ),
    );
  }
}