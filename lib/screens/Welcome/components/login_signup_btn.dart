import 'package:flutter/material.dart';
import '../../../utils/constants.dart';
import '../../Login/login_screen.dart';
import '../../Signup/signup_screen.dart';

class LoginAndSignupBtn extends StatelessWidget {
  const LoginAndSignupBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: "login_btn",
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_createRouteForTeacher());
            },
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // <-- Radius
                )),
            child: Text(
              "TEACHER".toUpperCase(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(_createRouteForStudent());
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryLightBgColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // <-- Radius
              )),
          child: Text(
            "STUDENT".toUpperCase(),
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
        ),
      ],
    );
  }
}

Route _createRouteForTeacher() {
  return PageRouteBuilder(
    pageBuilder: (context, Animation<double> animation,
            Animation<double> secondaryAnimation) =>
        const LoginScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

Route _createRouteForStudent() {
  return PageRouteBuilder(
    pageBuilder: (context, Animation<double> animation,
            Animation<double> secondaryAnimation) =>
        const SignUpScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

@override
bool get maintainState => true;

@override
Duration get transitionDuration => const Duration(milliseconds: 5000);
