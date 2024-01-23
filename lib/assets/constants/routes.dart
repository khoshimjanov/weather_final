// import 'package:flutter/material.dart';


// class RouteGenerator {
//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     var args = settings.arguments;

//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(
//           builder: (context) => const SplashScreen(), //TODO
//         );
       
//       case "/onBoarding":
//         return MaterialPageRoute(builder: (context) => const OnBoarding());
//       case '/home':
//         return MaterialPageRoute(
//           builder: (context) => const HomeScreen(),
//         );
//       case '/login':
//         return MaterialPageRoute(
//           builder: (context) => const LoginScreen(),
//         );
//       case "/ForgotPassword":
//         return MaterialPageRoute(
//             builder: (context) => const ForgotPasswordPage());
//       case "/SignUp":
//         return MaterialPageRoute(builder: (context) => const SignUp());
//       case "/VerificationPage":
//         return MaterialPageRoute(
//             builder: (context) => const VerificationPage());
//       case "/CreatePassword":
//         return MaterialPageRoute(builder: (context) => const CreatePasswort());
//       case "/CreateTaskMenu":
//         return MaterialPageRoute(builder: (context) => const CreateScreen());
//       default:
//         return MaterialPageRoute(
//           builder: (context) => const ErrorPage(),
//         );
//     }
//   }
// }
