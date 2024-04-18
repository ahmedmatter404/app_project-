import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/login/view/components/button_login.dart';
import 'package:frist_pages/features/auth/login/view/components/login_data_widget.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

 // const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
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
            const Column(
              children: [
                Expanded(
                  child: LoginDataWidget(),
                ),
                SizedBox(
                  height: 100,
                  child: ButtonLogin(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}