import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen Prototype',
      home: const MyHomePage(title: 'Login Screen'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _LoginScreen();
}

class _LoginScreen extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 100,
            height: 184,
          ),
          Center(
            child: Container(
              width: 300,
              child: TextField(
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'E-mail',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 200,
            child:
            ElevatedButton(onPressed: () {}, child: const Text('Login')),),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 200,
            child:
            ElevatedButton(onPressed: () {},style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.teal)) ,child: const Text('Sign Up')),),
        ],
      ),
    );
  }
}
