import 'package:flutter/material.dart';

import 'update_profile.dart';
import 'sign_in.dart';
import 'sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/update': (context) => UpdateProfile(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Row(
        children: [
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                    fullscreenDialog: true,
                  ));
            },
            icon: const Icon(Icons.add),
            label: Text('Signin'),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                    fullscreenDialog: true,
                  ));
            },
            icon: const Icon(Icons.add),
            label: Text('SignUp'),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdateProfile(),
                    fullscreenDialog: true,
                  ));
            },
            icon: const Icon(Icons.add),
            label: Text('Profile'),
          ),
        ],
      ),
    );
  }
}

//Added some comment