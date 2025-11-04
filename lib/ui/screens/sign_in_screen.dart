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
              SizedBox(height:70),
              Text(
                'Get started with',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15),
              TextFormField(decoration: InputDecoration(hintText: 'Email')),
              TextFormField(decoration: InputDecoration(hintText: 'Password')),
              SizedBox(height: 8),
              FilledButton(
                onPressed: () {},
                child: Icon(Icons.arrow_circle_right_outlined,size:25,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
