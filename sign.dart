import 'package:flutter/material.dart';

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(child: Text("welcome")),
        actions: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(Icons.maximize),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(Icons.minimize),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Icon(Icons.close),
         ),
        ],
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("click")),
          SizedBox(height: 30,width: 20,),
          Image(image: AssetImage("assets/abc.jpeg")),
        ],
      ),


    );
  }
}
