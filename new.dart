import 'package:flutter/material.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: Icon(Icons.menu),
        title: Text("welcome"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),
        ],
      ),
      body: Column(
        children: [
          TextFormField(),
          TextFormField(),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("click")),
          Container(
              height: 100,
              width: 100,
              child: Image(image: AssetImage("assets/abc.jpeg"))),

        ],
      ),
    );
  }
}
