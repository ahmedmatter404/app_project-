import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';

void main() {
  MaterialApp materialApp = const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RegistrationPage(),
  );

  runApp(materialApp);
}
