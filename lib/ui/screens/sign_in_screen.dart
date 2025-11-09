import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'sign_up_screen.dart';
import 'package:task_manager_project/ui/widgets/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'Get started with',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 15),
                   TextFormField(
                    decoration: InputDecoration(hintText: 'Email'),
                  ),
                   TextFormField(
                    decoration: InputDecoration(hintText: 'Password'),
                    obscureText: true,
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    onPressed: _onTapSignInButton,
                    child: const Icon(Icons.arrow_circle_right_outlined, size: 25),
                  ),
                  const SizedBox(height: 25),
                  Center(
                    child: Column(
                      children: [
                        TextButton(
                          onPressed: _onTapForgetButton,
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            text: "Don't have an account? ",
                            children: [
                              TextSpan(
                                style: const TextStyle(color: Colors.green),
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _onTapSignUpButton,
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
  void _onTapSignInButton() {
  }
  void _onTapForgetButton() {
  }
  void _onTapSignUpButton() {
    Navigator.pushNamed(context, SignUpScreen.name);
  }
}
