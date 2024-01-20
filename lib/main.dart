import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
    title: "My nth App",
    home: HomePage(),
  ));
}

// TO create Stateful Page - type "stf"
// TO create Stateless Page - type "stl"

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        TextField(),
        ElevatedButton(onPressed: (){
          print('Button Clicked');
        }, child: Text("Click Me"))
      ]),
    );
  }
}
