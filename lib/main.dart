import 'package:flutter/material.dart';
import 'package:mad_proj/prioritize_tasks_screen.dart';
import 'package:mad_proj/set_deadlines_screen.dart';
import 'package:mad_proj/signup_screen.dart';
import 'package:mad_proj/update_assignment_screen.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter_complete_guide/firebase_options.dart';
import 'add_assignment_screen.dart';
import 'delete_assignment_screen.dart';
import 'firebase_options.dart';
import 'login_screen.dart';
//
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(AssignmentManagerApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(AssignmentManagerApp());
}
// void main() {
//   runApp(AssignmentManagerApp());
// }

class AssignmentManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/signup': (context) => SignUpScreen(),
        '/add': (context) => AddAssignmentScreen(),
        '/set-deadlines': (context) => SetDeadlinesScreen(),
        '/prioritize': (context) => PrioritizeTasksScreen(),
        '/update': (context) => UpdateAssignmentScreen(),
        '/delete': (context) => DeleteAssignmentScreen(),
        // '/pending': (context) => ViewPendingAssignmentsScreen(),
      },
    );
  }
}
