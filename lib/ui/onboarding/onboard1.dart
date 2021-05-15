import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';

class Onboard1 extends StatefulWidget {
    CarouselSliderController carouselController;
    Onboard1(this.carouselController);
  @override
  _Onboard1State createState() => _Onboard1State();
}

class _Onboard1State extends State<Onboard1> {
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
              height: MediaQuery.of(context).size.height *0.50,
              imageUrl:
                  'https://playsport.fun/static/media/instructors.57e516ec.png',
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
                'Limitless choices',
                style: TextStyle(fontSize: 30.0, color: Colors.green),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10.0),
              child: Text(
                'Instructors can open classes without limitations and choose ideal locations',
                style: TextStyle(fontSize: 20.0),
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
                    color: Colors.green,
                    child: IconButton(
                        icon: Icon(Icons.arrow_right_alt), onPressed: () {widget.carouselController.nextPage();})),
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
