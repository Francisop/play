import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.blueGrey[900],
          height: MediaQuery.of(context).size.height,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey[700],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            height: MediaQuery.of(context).size.height * 0.8,
            child: Form(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: ListView(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 60.0,
                        child: Icon(Icons.camera),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Name', prefixIcon: Icon(Icons.person)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'E-mail', prefixIcon: Icon(Icons.mail)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password', prefixIcon: Icon(Icons.lock)),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12)),
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Sign Up',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
