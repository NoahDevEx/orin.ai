import 'package:flutter/material.dart';
import 'package:myapp/Features/Download/downloadpage.dart';
import 'package:myapp/Features/Home/hompage.dart';
import 'package:myapp/Features/Library/librarypage.dart';
import 'package:myapp/Features/Login/login.dart';
import 'package:myapp/Features/Onboarding_1/onboarding_one.dart';
import 'package:myapp/Features/Onboarding_2/onboarding_two.dart';
import 'package:myapp/Features/Search/searchpage.dart';
import 'package:myapp/Features/Signup/signup.dart';
import 'package:myapp/Features/Splash/splash.dart';
import 'package:myapp/Features/Theme/theme.dart';
import 'package:myapp/Features/UserProfile/profilepage.dart';
import 'package:myapp/Features/routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Orin extends StatefulWidget {
  const Orin({super.key});

  @override
  State<Orin> createState() => _OrinState();
}

class _OrinState extends State<Orin> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      child: MaterialApp(
        theme: darkMode,
        debugShowCheckedModeBanner: false,
        home: Splash(),
        initialRoute: 'Splash',
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case 'Splash':
              return pageRoute(Splash());
            case 'Onboarding_One':
              return pageRoute(Onboarding_One());
            case 'Onboarding_Two':
              return pageRoute(Onboarding_Two());
             case 'Login':
              return pageRoute(Login());
                case 'Signup':
              return pageRoute(Signup());
                 case 'HomePage':
              return pageRoute(HomePage());
                case 'LibraryPage':
              return pageRoute(Librarypage());
                case 'DownloadPage':
              return pageRoute(Downloadpage());
                case 'ProfilePage':
              return pageRoute(Profilepage());
                case 'SearchPage':
              return pageRoute(Searchpage());
          }
          return null;
        },
      ),
    );
  }
}
