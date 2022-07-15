import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 23, 30, 1.0),

      //AppBar
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 23, 30, 1.0),
        title: Row(
          children: [
            Text(
              "Back",
              style: TextStyle(
                color: Color.fromRGBO(74, 163, 243, 1.0),
                fontSize: 20,
              ),
            ),
            Image.asset(
              'assets/images/amazonlogo.png',
              height: 20,
            ),
            Icon(Icons.refresh),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
      ),

      //--------------------------------------//
      //bodyPart//

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        //color: Color.fromRGBO(17, 23, 30, 1.0),
         // child: Center(
            child: SingleChildScrollView(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
               // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                //first part //

                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Name",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Your Email Address",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Create a password",
                        hintStyle: TextStyle(
                          color: Colors.black,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  //first end---------------------------------//

                  //info icon part//
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Color.fromRGBO(70, 124, 155, 1.0),
                        ),
                        Text(
                          "Passwords must be at least 6 characters",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //info end-----------------------------//

                  FlatButton(
                    onPressed: () {
                      print("Create your Amazon account button tapped");
                    },

                    //padding: EdgeInsets.symmetric(horizontal: 50),
                    color: Color.fromRGBO(55, 119, 170, 1.0),
                    child: Text(
                      "Create your Amazon account",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "By creating an account, you agree to the Prime Video Terms of Use and license agreements which can be found on the Amazon website.",
                    style: TextStyle(
                        color: Color.fromRGBO(120, 135, 147, 1.0), fontSize: 15),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  Center(
                    child: Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white, fontSize: 16,),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: FlatButton(
                      color: Color.fromRGBO(69, 81, 99, 1.0),
                      //color: Colors.white,
                      //padding: EdgeInsets.symmetric(horizontal: 100),
                      child: Text(
                        "Sign-In now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      onPressed: () {
                        print("Sing In button tapped");
                      },
                    ),
                  ),

                  SizedBox(height: 130,),

                    Container(
                      child: Center(
                        child: Row(
                          children: [
                            Icon(Icons.copyright, color: Color.fromRGBO(120, 135, 147, 1.0),
                            ),
                            Text(
                                " 1996-2021. Amazon.com, Inc. or its affiliates",
                                style: TextStyle(
                                    color: Color.fromRGBO(120, 135, 147, 1.0),
                                    fontSize: 14),
                              ),

                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
         ),
    );
  }
}
