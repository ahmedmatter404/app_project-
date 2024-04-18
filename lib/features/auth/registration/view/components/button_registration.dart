import 'package:flutter/material.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/features/auth/login/view/page/login_page.dart';

class ButtonRegistrationWidget extends StatelessWidget {
  const ButtonRegistrationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: context.width - 30,
          height: 50,
          child: FilledButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(context.forgroundColor),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                )),
            onPressed: () {},
            child: const Text(
              'Confirm',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "aleady have an account? ",
              style: TextStyle(color: Colors.black),
            ),
            InkWell(
              onTap: () {
                {
                  Navigator.of(context).push(MaterialPageRoute(builder: (v) {
                    return const LoginPage();
                  }));
                }
              },
              child: Text(
                'login',
                style: TextStyle(
                  color: context.forgroundColor,
                  decorationThickness: 1,
                  decoration: TextDecoration.underline,
                  decorationColor: context.forgroundColor,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
