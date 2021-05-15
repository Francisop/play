import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Onboard2 extends StatefulWidget {
  @override
  _Onboard2State createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: CachedNetworkImage(
              height: MediaQuery.of(context).size.height * 0.50,
              imageUrl:
                  'https://playsport.fun/static/media/place-owners.4cffef43.png',
              errorWidget: (context, url, error) => Icon(Icons.error),
              // imageUrl:
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Everybody wins",
                style: TextStyle(fontSize: 30.0,color: Colors.pink),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Venues owners can turn their vacant facilities into money makers (similar to Airbnb)",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.green[900],
                                style: BorderStyle.solid)),
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Create Account',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15.0),
                          ),
                        )),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.25,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.pink[900],
                              style: BorderStyle.solid)),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'login',
                          style: TextStyle(color: Colors.white, fontSize: 15.0),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
