import 'package:demoapp/signup_page.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

bool validateForm(){
  if (!EmailValidator.validate(emailController.text)) {
    print("Wrong Email");
    return false;
  } else if (passwordController.text.length < 6) {
    print("Wrong Password");
    return false;
  } else {
    return true;
  }
}

bool loginFunc(){
  if (validateForm()) {
    print("Login Success");
    return true;
  } else {
    return false;
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 30, right: 30),
          children: [
            Lottie.asset("assets/lottie/login_animation.json"),
            Container(
              height: 30,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            Container(
              height: 30,
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
              ),
            ),
            Container(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              loginFunc();
            }, child: Text("Login Now")),
            Container(
              height: 30,
            ),
            Text("Don't have an account?", textAlign: TextAlign.center),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            }, 
            child: Text("Sign Up"),
            style: ButtonStyle(
              elevation: MaterialStatePropertyAll(0)),
            )
          ],
        ),
      ),
    );
  }
}