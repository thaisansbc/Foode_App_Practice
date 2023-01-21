import 'package:flutter/material.dart';
import 'package:practices_homework/views/login.dart';
import 'package:practices_homework/views/register.dart';
import 'package:practices_homework/views/start_page.dart';
import '../views/get_start.dart';
import '../views/homepage.dart';
import 'package:practices_homework/views/demo_sliver_lesson.dart';
import 'package:practices_homework/views/popular_menu_page.dart';
import 'package:practices_homework/views/popular_restaurant_page.dart';
import 'package:practices_homework/views/home_page.dart';
import 'package:practices_homework/views/payment_method.dart';
import 'package:practices_homework/views/upload_profile.dart';

Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case StartPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const StartPage(),
      );
    case HomePages.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePages(
          arguments: args as Map<String, dynamic>,
        ),
      );
    case GetStartedPage.routeName:
      // return MaterialPageRoute(
      //   builder: (context) => GetStartedPage(
      //     arguments: args as GetStartedPageArguments,
      //   ),
      // );
      return MaterialPageRoute(
        builder: (context) => const GetStartedPage(),
      );
    case LoginForm.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginForm(),
      );
    case RegisterForm.routeName:
      return MaterialPageRoute(
        builder: (context) => const RegisterForm(),
      );
    case PopularListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularListPage(),
      );
    case PopularMenuListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularMenuListPage(),
      );
    case PopularRestaurantListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularRestaurantListPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case PaymentMethod.routeName:
      return MaterialPageRoute(
        builder: (context) => const PaymentMethod(),
      );
    case UploadProfile.routeName:
      return MaterialPageRoute(
        builder: (context) => const UploadProfile(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
