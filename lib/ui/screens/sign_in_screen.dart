import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Text(
                'Get started with',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              TextFormField(decoration: InputDecoration(hintText: 'Password')),
              SizedBox(height: 8),
              FilledButton(
                onPressed: _onTapSignInButton,
                child: Icon(Icons.arrow_circle_right_outlined, size: 25),
              ),
              SizedBox(height: 25),
              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: _onTapForgetButton,
                      child: Text('Forget Password?',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        text: "Don't have an account? ",
                        children: [
                          TextSpan(
                            style: TextStyle(color: Colors.green),
                            text: 'Sign Up',
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignUpButton
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
    );
  }
}

void _onTapSignInButton(){}
void _onTapForgetButton(){}
void _onTapSignUpButton(){

}
