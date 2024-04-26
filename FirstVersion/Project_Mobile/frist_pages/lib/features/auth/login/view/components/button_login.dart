import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';
// import 'package:frist_pages/features/auth/forgotPassword/view/page/forgotPassword_page.dart';


class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(style : const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.lightBlue)),
            onPressed: () {


    }, child: const Text('Confirm')) ,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("Don't have account ? ",style: TextStyle(color: Colors.white),) ,
            TextButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                      return const RegistrationPage ();
                    }
                    )
                    );

            },
            style: const ButtonStyle(
              padding: MaterialStatePropertyAll(EdgeInsets.all(3))
            ), child: const Text("Sign up" ,
            style: TextStyle(
              color: Colors.blue ,
              decorationStyle: TextDecorationStyle.solid ,
              decoration: TextDecoration.underline ,
              decorationThickness: 3 ,
            ),) ,)
          ],
        )
      ],
    );
  }
}