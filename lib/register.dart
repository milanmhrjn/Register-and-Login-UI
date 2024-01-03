import 'package:flutter/material.dart';
import 'package:loginui/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.orange.shade900,
            Colors.orange.shade800,
            Colors.orange.shade400
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Padding(
                padding: EdgeInsets.all(40),
                child: Column(
                  children: [
                    Text("Create Account",
                        style: TextStyle(color: Colors.white, fontSize: 40))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60))),
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(225, 95, 27, .3),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(children: [
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Your Full Name",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none),
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Enter Email",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none),
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none),
                            )),
                        Container(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Confirm Password",
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                  ),
                                  border: InputBorder.none),
                            )),
                      ]),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Row(children: [
                        Checkbox(
                            activeColor: Colors.orange.shade900,
                            overlayColor:
                                MaterialStatePropertyAll(Colors.transparent),
                            value: isChecked,
                            onChanged: (Bool) {
                              setState(() {
                                isChecked = Bool;
                              });
                            }),
                        Text('I agree to the terms and conditions'),
                      ]),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Row(children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ButtonStyle(
                              padding:
                                  MaterialStatePropertyAll(EdgeInsets.all(15)),
                              shadowColor:
                                  MaterialStatePropertyAll(Colors.transparent),
                              backgroundColor: MaterialStatePropertyAll(
                                  Colors.orange.shade900),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ))),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(children: [
                        Padding(padding: EdgeInsets.all(10)),
                        Text("Already have an account?"),
                        TextButton(
                            style: ButtonStyle(
                                elevation: MaterialStatePropertyAll(0),
                                foregroundColor: MaterialStatePropertyAll(null),
                                backgroundColor: MaterialStatePropertyAll(null),
                                overlayColor: MaterialStatePropertyAll(null)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Login(),
                                  ));
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.orange.shade900),
                            ))
                      ]),
                    )
                  ]),
                ),
              )),
            ],
          )),
    );
  }
}
