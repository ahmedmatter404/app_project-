import 'package:flutter/material.dart';
// import 'package:frist_pages/features/auth/login/view/page/login_page.dart';
import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';

class ButtonForgotWidget extends StatelessWidget {
  const ButtonForgotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (v) {
              return const RegistrationPage();
            }
            )
            );
          },
          child: const Text(
            'Send Code',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
