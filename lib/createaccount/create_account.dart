
import 'package:flutter/material.dart';
import 'package:resume_builder_new/loginscreen/login_screen.dart';

import '../home/home.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key, key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180,
                ),
                Text("Hi !", style: TextStyle(color: Colors.black, fontSize: 30),),
                Text("We got you covered ! Fill in", style: TextStyle(color: Colors.grey, fontSize: 20),),
                SizedBox(height: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                    TextField(
                      decoration: new InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "John Doe"
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                    TextField(
                      decoration: new InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "example@mail.com"
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                    TextField(
                      obscureText: true,
                      decoration: new InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "Abcd@123",
                          suffixIcon: Icon(Icons.remove_red_eye_outlined)
                      ),
                    )
                  ],
                ),

                SizedBox(
                  height: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Confirm Password", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                    TextField(
                      obscureText: false,
                      decoration: new InputDecoration(
                          contentPadding:
                          EdgeInsets.only(left: 0, bottom: 11, top: 11, right: 15),
                          hintText: "Rembember them",
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.centerRight,
                  child: Text("Don't Remember?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20, top: 20),
                      alignment: Alignment.center,
                      color: Colors.deepPurple,
                      width: double.infinity,
                      height: 60,
                      child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not new?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),),
                    SizedBox(width: 5,),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                        },
                        child: Text("Login", style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold, fontSize: 20),))
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
