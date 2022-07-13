import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset(
          "assets/images/undraw_Mobile_login_re_9ntv.png",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          width: 10, //you may use this or padding by wrapping around text
          height: 10, // used this to put space between the image and text
        ),
        const Text(
          "Welcome",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          width: 10,
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter your username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter the password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(
                width: 10,
                height: 10,
              ),
              ElevatedButton(
                child: const Text("Login"),
                onPressed: () {
                  print("hemlo ");
                },
              )
            ],
          ),
        )
      ]),
    );
  }
}
