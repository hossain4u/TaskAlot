import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                spacing: 8,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'Join With Us',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 15),
                  TextFormField(decoration: InputDecoration(hintText: 'Fast Name')),
                  TextFormField(decoration: InputDecoration(hintText: 'Last Name')),
                  TextFormField(decoration: InputDecoration(hintText: 'Mobile')),
                  TextFormField(decoration: InputDecoration(hintText: 'Email')),
                  TextFormField(decoration: InputDecoration(hintText: 'Password')),
                  SizedBox(height: 8),
                  FilledButton(
                    onPressed: _onTapSignUpButton,
                    child: Icon(Icons.arrow_circle_right_outlined, size: 25),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Column(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            text: "Already have an account? ",
                            children: [
                              TextSpan(
                                style: TextStyle(color: Colors.green),
                                text: 'Sign In',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapSignInButton
                              ),
                            ],
                          ),
                        ),
                      ],
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
  void _onTapSignInButton(){
    Navigator.pop(context);
  }
  void _onTapSignUpButton(){

  }
}


