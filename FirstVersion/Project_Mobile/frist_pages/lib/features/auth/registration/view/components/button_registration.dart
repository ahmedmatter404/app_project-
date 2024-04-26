import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/login/view/page/login_page.dart';

class ButtonRegistrationWidget extends StatelessWidget {
  const ButtonRegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FilledButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {},
          child: const Text(
            'sign up',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("aleady have an account?",style: TextStyle(color: Colors.white),),
            TextButton(
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(EdgeInsets.all(3))),
                onPressed: () {
                   {
                    Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                      return const LoginPage();
                    }
                    )
                    );
                  }
                },
                child: const Text('log in',
                    style: TextStyle(
                      color: Colors.blue,
                      decorationStyle: TextDecorationStyle.solid,
                    ))),
          ],
        ),
      ],
    );
  }
}
