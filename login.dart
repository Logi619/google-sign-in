import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:googlesignin/Homepage.dart';
import 'package:googlesignin/signuppage.dart';





class Logon extends StatefulWidget {
  const Logon({super.key});

  @override
  State<Logon> createState() => _LogonState();
}

class _LogonState extends State<Logon> {



  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future<void> Login() async
  {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text);

    Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepage()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: email,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Enter the mail id"), ),
          )
          ,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(controller: password,
            decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: "Enter the password"),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Login();
            }, child: Text("login")),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Signupp()));

            }, child: Text("Signup")),
          ),
        ],
      ),
    );
  }
}
