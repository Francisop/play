import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:playsports/style.dart';

class Onboard extends StatefulWidget {
  CarouselSliderController carouselController;
  Onboard(this.carouselController);
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
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
                  'https://playsport.fun/static/media/classes.bed4d9b2.png',
              errorWidget: (context, url, error) => Icon(Icons.error),
              // imageUrl:
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Endless selections',
                style: TextStyle(fontSize: 30.0, color: Colors.orange),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                'Players are surrounded with endless classes at any given time.',
                style: TextStyle(fontSize:20.0),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    width: MediaQuery.of(context).size.width * 0.17,
                    color: Colors.orange,
                    child: IconButton(
                        icon: Icon(Icons.arrow_right_alt),
                        onPressed: () {
                          widget.carouselController.nextPage();
                        })),
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
