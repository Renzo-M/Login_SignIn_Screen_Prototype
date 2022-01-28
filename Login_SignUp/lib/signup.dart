import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Center(
            child: Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundColor: Colors.white,
                ),
                Positioned(
                  bottom: 5,
                  left: 80,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_a_photo_outlined),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 315,
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fillColor: Colors.grey,
                filled: true,
                labelText: 'Username',
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 315,
            child: TextField(
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                fillColor: Colors.grey,
                filled: true,
                labelText: 'Email',
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: 315,
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
          SizedBox(
            height: 30,
          ),
          Container(
            width: 315,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue)),
              child: const Text('Sign Up'),
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
                  'Already Have an account?',
                  style: TextStyle(color: Colors.white70),
                ),
              ),
              InkWell(

                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.blue),

                ),
              onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
