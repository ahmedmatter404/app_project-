import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/auth/regesteration/view/components/Button_widget.dart';
import 'package:flutter_application_1/features/auth/regesteration/view/components/required_data.dart';

class regestration_page extends StatelessWidget {
  const regestration_page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
        body:  required_data(),
        bottomNavigationBar: SizedBox(
          child: Button_Widget(),
          height: 150,
        ),
      )  );
  }
}
