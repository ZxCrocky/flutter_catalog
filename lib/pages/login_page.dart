import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeLoginButton = false;
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
        Text(
          "Welcome $name",
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
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
                height: 20,
              ),

              InkWell(
                onTap: () async {
                  setState(() {
                    changeLoginButton = true;
                  });

                  await Future.delayed(const Duration(seconds: 1));
                  
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeLoginButton ? 40 : 100,
                  height: 40,
                  //  color: Colors.deepPurple,  //this is put inside the decoration
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    //shape: changeLoginButton?BoxShape.circle:BoxShape.rectangle,
                    borderRadius:
                        BorderRadius.circular(changeLoginButton ? 50 : 20),
                  ),
                  child: changeLoginButton
                      ? const Icon(Icons.done, color: Colors.green)
                      : const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w300),
                        ),
                ),
              )

              // ElevatedButton(
              //   child: const Text("Login"),
              //   style: TextButton.styleFrom(minimumSize: const Size(150, 50)),
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              // )
            ],
          ),
        )
      ]),
    );
  }
}
