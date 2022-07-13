import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeLoginButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
      changeLoginButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeLoginButton = false;
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username can't be empty";
                      }
                      return null;
                    },
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password can't be empty";
                      } else if (value.length < 6) {
                        return "Password length should be more than 4";
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    width: 10,
                    height: 20,
                  ),

                  Material(
                    color: Colors.deepPurple,
                    borderRadius:
                        BorderRadius.circular(changeLoginButton ? 50 : 20),
                    child: InkWell(
                      splashColor: Colors.yellowAccent,
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        width: changeLoginButton ? 40 : 100,
                        height: 40,
                        //  color: Colors.deepPurple,  //this is put inside the decoration
                        alignment: Alignment.center,
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
        ),
      ),
    );
  }
}
