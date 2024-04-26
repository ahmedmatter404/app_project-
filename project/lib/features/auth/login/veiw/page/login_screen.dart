import 'package:flutter/material.dart';
import 'package:project/features/auth/login/veiw/components/login_data.dart';
import 'package:project/features/auth/login/veiw/components/buttom.dart';

class Login extends StatelessWidget {
 // const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('image/789.jpg'), // Adjust path to your image
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Login_data(),
                ),
                SizedBox(
                  height: 100,
                  child: Button(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
