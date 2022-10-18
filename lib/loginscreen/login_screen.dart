
import 'package:flutter/material.dart';
import 'package:resume_builder_new/createaccount/create_account.dart';
import 'package:resume_builder_new/home/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key, key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
                SizedBox(height: 320,),
                Text("Welcome !", style: TextStyle(color: Colors.black, fontSize: 30),),
                Text("Sign in to continue ", style: TextStyle(color: Colors.grey, fontSize: 20),),
                SizedBox(height: 20,),
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
                        color: Colors.blue,
                        width: double.infinity,
                        height: 60,
                        child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),)
                    ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New user?", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15),),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount()));
                      },
                        child: Text("Sign Up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 20),))
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
