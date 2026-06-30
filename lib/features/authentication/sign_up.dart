import 'package:first_project/core/apis/widget/app_button.dart';
import 'package:first_project/core/apis/widget/app_text_field.dart';
import 'package:first_project/core/utils/app_colors.dart';
import 'package:first_project/features/authentication/loginscreen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),

                app_text_field(hintText: 'John Doe', text: 'Full name'),
                SizedBox(height: 20),
                app_text_field(
                  hintText: 'user@gmail.com',
                  text: 'Email address',
                ),
                SizedBox(height: 20),
                app_text_field(hintText: 'Create a password', text: 'Password'),
                SizedBox(height: 20),
                app_text_field(
                  hintText: 'Repeat your password',
                  text: 'Confirm password',
                ),
                SizedBox(height: 6),
                rowcheck(),
                SizedBox(height: 10),
                AppButton(name: 'Create Account'),
                SizedBox(height: 10),
                haveaccount(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /////////////costom widgets////////////////////////
  //////////////////////////////////////////////////
  Widget haveaccount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Loginscreen()),
              );
              // Navigator.pushNamed(context, '/sett');
            },

            child: Text(
              'Sign In',
              style: TextStyle(color: Color(0xFF2D4A3E), fontSize: 17),
            ),
          ),
        ),
      ],
    );
  }

  Widget rowcheck() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
        Checkbox(
          value: isChecked, // القيمة الحالية
          activeColor: const Color(
            0xFF2D4A3E,
          ), // اللون لما يتعمل عليه صح (نفس أخضر الهيدر عندك)
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!; // تحديث القيمة وإعادة رسم الشاشة
            });
          },
        ),
        SizedBox(width: 5),
        Text.rich(
          TextSpan(
            text: 'I agree to the, ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Terms of Services ',
                style: TextStyle(
                  color: Color(0xFF2D4A3E),
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' and ',
                style: TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: ' Privacy Policy',
                style: TextStyle(
                  color: Color(0xFF2D4A3E),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
