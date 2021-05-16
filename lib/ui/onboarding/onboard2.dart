import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:playsports/ui/auth/register.dart';

class Onboard2 extends StatefulWidget {
  CarouselSliderController carouselController;
  Onboard2(this.carouselController);
  @override
  _Onboard2State createState() => _Onboard2State();
}

class _Onboard2State extends State<Onboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            widget.carouselController.previousPage();
          },
        ),
        actions: [TextButton(onPressed: () {}, child: Text('Skip'))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Everybody Wins",
                style: TextStyle(fontSize: 35.0, color: Colors.orange),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                "Venues owners can turn their vacant facilities into money makers (similar to Airbnb).",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
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
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12)),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Register()));
                      },
                      child: Text(
                        'Get started',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
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
