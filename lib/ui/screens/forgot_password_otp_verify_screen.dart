import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager_project/ui/screens/reset_password_screen.dart';
import 'package:task_manager_project/ui/screens/sign_in_screen.dart';
import 'package:task_manager_project/ui/widgets/screen_background.dart';

class ForgotPasswordOtpVerifyScreen extends StatefulWidget {
  const ForgotPasswordOtpVerifyScreen({super.key});

  static const String name = '/forgot-password-otp-verify';

  @override
  State<ForgotPasswordOtpVerifyScreen> createState() =>
      _ForgotPasswordOtpVerifyScreenState();
}

class _ForgotPasswordOtpVerifyScreenState
    extends State<ForgotPasswordOtpVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'OTP Verification',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'A 6 digits verification OTP has been sand your email address',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(height: 20),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 60,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      activeColor: Colors.white,
                      selectedFillColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    appContext: context,
                  ),
                  SizedBox(height: 20),

                  FilledButton(
                    onPressed: _onTapSubmitButton,
                    child: Text(
                      'Verify',
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

  void _onTapSubmitButton() {
    Navigator.pushNamed(context, ResetPasswordScreen.name);
  }
}
