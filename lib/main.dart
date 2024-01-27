import "package:email_validator/email_validator.dart";
import "package:flutter/material.dart";

import "login_page.dart";

void main() {
  runApp(MaterialApp(
    title: "My nth App",
    home: LoginPage(),
  ));
}

// TO create Stateful Page - type "stf"
// TO create Stateless Page - type "stl"

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true, // By default in IOS Sim
        title: Text("My First Page", style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Text("Hello"),
        Container(
          height: 30,
        ),
        Image.network("https://cdn.pixabay.com/photo/2023/12/07/22/24/cherry-blossoms-8436420_1280.jpg"),
        Text("Hello"),
        TextField(
          controller: _controller,
        ),
        ElevatedButton(onPressed: (){
          print(_controller.text);
        }, child: Text("Click Me"))
      ]),
    );
  }
}

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final TextEditingController _controller = TextEditingController();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Login Page"),
//       ),
//       body: Column(children: [
//         Container(
//           height: 200,
//         ),
//         Text("Email"),
//         TextField(
//           controller: _controller,
//         ),
//         Container(
//           height: 30,
//         ),
//         Text("Password"),
//         TextField(
//           //Password Field
//         ),
//         Container(
//           height: 80,
//         ),
//         ElevatedButton(onPressed: (){
//           String email = _controller.text;
//           final bool isValid = EmailValidator.validate(email);
//           if (condition) {
            
//           }
//         }, child: Text("Submit"))
//       ],)
//     );
//   }
// }


