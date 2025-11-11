import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/forgot_password_otp_verify_screen.dart';
import 'package:task_manager_project/ui/screens/sign_in_screen.dart';
import 'package:task_manager_project/ui/widgets/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  static const String name = '/reset-password';

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding:  EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 100),
                  Text(
                    'Reset Password',
                    style: Theme.of(context).textTheme.titleLarge
                  ),
                  SizedBox(height:10),
                  Text(
                    'Minimum length of password should more then 8 letters',
                    style: Theme.of(context).textTheme.labelMedium
                  ),
                   SizedBox(height: 20),
                  TextFormField(decoration: InputDecoration(hintText: 'New Password')),
                  SizedBox(height: 10),
                  TextFormField(decoration: InputDecoration(hintText: 'Confirm Password')),
                  SizedBox(height: 20),

                  FilledButton(
                    onPressed: _onTapConfirmButton,
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                   SizedBox(height: 25),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "Have an account? ",
                        children: [
                          TextSpan(
                            style: TextStyle(color: Colors.green),
                            text: 'Sign Ip',
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignInButton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pushNamedAndRemoveUntil(context, SignInScreen.name, (predicate)=> false);
  }
  void _onTapConfirmButton() {

  }
}
