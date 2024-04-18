import 'package:flutter/material.dart';
import 'package:frist_pages/core/utils/extension.dart';
import 'package:frist_pages/features/auth/registration/view/components/button_registration.dart';
import 'package:frist_pages/features/auth/registration/view/components/regisration_data_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.backgroundColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: context.backgroundColor,
          body: SingleChildScrollView(
            child: SizedBox(
              height: context.height - 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.jpg",
                    height: 200,
                  ),
                  Expanded(
                    child: RegistrationDataWidget(),
                  ),
                  const SizedBox(
                    height: 100,
                    child: ButtonRegistrationWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
