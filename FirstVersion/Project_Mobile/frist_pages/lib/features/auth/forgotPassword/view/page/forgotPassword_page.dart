import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/forgotPassword/view/components/forgot_password_widget.dart';
import 'package:frist_pages/features/auth/forgotPassword/view/components/button_forgot_widget.dart';

class ForgotPasswordPage
 extends StatelessWidget {
  const ForgotPasswordPage
  ({super.key});
  


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Stack(

        
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 54, 55, 55),
                image: DecorationImage(
                  image: const AssetImage('Images/background.jpg'), // Adjust path to your image
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  
                ),
              ),
            ),
            const Column(
              children: [
                Expanded(
                  child: ForgotPasswordWidget(),
                ),
                SizedBox(
          height: 100,
          child: ButtonForgotWidget(),
        ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}