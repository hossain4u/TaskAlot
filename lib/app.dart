import 'package:flutter/material.dart';
import 'package:task_manager_project/ui/screens/splash_screen.dart';

class TaskAlotTaskManager extends StatelessWidget {
  const TaskAlotTaskManager({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}
