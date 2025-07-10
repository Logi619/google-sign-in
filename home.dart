import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  const hello({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("hi"),
        actions: [
          Icon(Icons.camera),
          Icon(Icons.search),

        ],

      ),
      body: Column(
        children: [
              TextFormField(),
              TextFormField(),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text("sign up")),
              SizedBox(height: 20,width: 20,),
              Image(image: AssetImage("assets/asdef.jpeg")),
            ],
          ),



    );


  }
}

