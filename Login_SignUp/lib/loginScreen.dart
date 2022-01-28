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
      home: const MyLoginPage(title: 'Login Screen'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyLoginPage> createState() => _LoginScreen();
}

class _LoginScreen extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children: [
          SizedBox(
            height: 177,
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
                  fillColor: Colors.grey,
                  filled: true,
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
                  fillColor: Colors.grey,
                  filled: true,
                  labelText: 'Password',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 315,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blue)),
              child: const Text('Log in'),
            ),
          ),
          SizedBox(
            height: 64,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'Dont have an account?',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              InkWell(

                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.blue),

                ),
                onTap: () {},
              ),
            ],
          ),],
      ),
    );
  }
}
