import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:playsports/ui/onboarding/onboard.dart';
import 'package:playsports/ui/onboarding/onboard2.dart';

import 'onboard1.dart';

class OnboardMain extends StatefulWidget {
  @override
  _OnboardMainState createState() => _OnboardMainState();
}

class _OnboardMainState extends State<OnboardMain> {
  CarouselSliderController carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
      children: [
        Onboard(carouselController),
        Onboard1(carouselController),
        Onboard2()
      ],
      // enableAutoSlider: true,
      scrollPhysics: NeverScrollableScrollPhysics(),
      controller: carouselController,
      slideTransform: CubeTransform(),

    ));
  }
}
