import 'package:first_project/core/apis/widget/app_button.dart';
import 'package:first_project/core/apis/widget/app_text_field.dart';
import 'package:first_project/core/utils/app_colors.dart';
import 'package:first_project/features/authentication/sign_up.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 80),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.blue,
              ),
              child: Icon(
                Icons.monitor_heart_outlined,
                color: Colors.white,
                size: 38,
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Sport Shop",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: 5),
            Text(
              "Welcome back!please login",
              style: TextStyle(color: Colors.grey),
            ),

            Column(
              children: [
                Padding(padding: EdgeInsets.all(20)),

                app_text_field(hintText: 'student@flutter.dev', text: 'Email'),
                SizedBox(height: 20),
                //Text('data'),
                app_text_field(hintText: 'password123', text: 'Password'),
                const SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                AppButton(name: 'Sign In'),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => SignUp()),
                    );
                    // Navigator
                  },
                  child: Container(
                    margin: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    height: 60,
                    width: 326,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Creat Account',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
