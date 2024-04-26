import 'package:flutter/material.dart';
import 'package:frist_pages/features/auth/login/view/page/login_page.dart';
import 'package:frist_pages/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';
// import 'package:frist_pages/features/auth/registration/view/page/regisration_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBoarding = sharedPreferences.getBool('onboarding') ?? false;

  MaterialApp materialApp = MaterialApp(
    debugShowCheckedModeBanner: false,
    // home:  onBording?    const OnBoardingPage() : const OnBoardingPage(),
    // home: onBording ?  const RegistrationPage() : const OnBoardingPage(),
    onGenerateRoute:MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => onBoarding?MyRoutes.initRoutes: MyRoutes.firstRoutes ,
  );

  runApp(materialApp);
}

class MyRoutes {
  static List<Route> initRoutes = [
    // MaterialPageRoute<dynamic>(
    //   builder: (BuildContext context) => const OnBoardingPage(),
    // ),
  
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const RegistrationPage(),
    )
  
  ];
    static List<Route> firstRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const OnBoardingPage(),
    ),
  
  ];
static  Route<dynamic> onGenerateRoute(RouteSettings setting) {

    switch (setting.name) {
      case 'LoginPage':
    final List nameData = setting.arguments as List;
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => LoginPage( firstName:  nameData [0] as String, lastName:  nameData [1] as String,),
        );
      case 'Signup':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const RegistrationPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnBoardingPage(),
        );
    }
  }
}
