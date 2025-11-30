import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';
import '../colors.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.topCenter,
            radius: 1.8,
            colors: [Colors.white, AppColors.bgLight],
            stops: [0.3, 1.0],
          ),
        ),

        width: double.maxFinite,
        height: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.secondary,
              ),
              child: Image.asset('assets/cutlery.png'),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Welcome Back!",
                style: TextStyle(
                  fontFamily: 'VendSans',
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4),
              child: Text(
                "Log in to your account",
                style: TextStyle(
                  fontFamily: 'VendSans',
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            Form(
              key: GlobalKey(),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  CustomInputField(
                    hintText: 'Username',
                    prefixIcon: Icons.person_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  CustomInputField(
                    hintText: 'Password',
                    prefixIcon: Icons.lock_outlined,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        backgroundColor: AppColors.buttonColor,
                        foregroundColor: Colors.white,
                      ),
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 18, // text size
                          fontWeight: FontWeight.w500, // optional
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Don't have an account?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: AppColors.textPrimary,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: AppColors.buttonColor,
                  ),
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
