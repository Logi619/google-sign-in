import 'package:flutter/material.dart';

class roll extends StatelessWidget {
  const roll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
        title: Center(child: Text("hello")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.mail),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.face),
          ),

        ],
      ),
      body: Column(
        children: [
          TextField(),
          TextField(),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text("sign in")),
          SizedBox(height: 20, width: 20,),
          Container(
              height: 80,
              width: 80,
              child: Image(image: AssetImage("assets/asd.jpg"))),
        ],
      ),
    );
  }
}
