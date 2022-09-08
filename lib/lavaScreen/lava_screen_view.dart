import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'lava_screen_controller.dart';
// import 'package:night_light/appStyle/app_color.dart';
// import 'package:night_light/appStyle/app_dimension.dart';
// import 'package:night_light/appStyle/assets_images.dart';
// import 'package:night_light/pages/splash/splash_page_controller.dart';
class LavaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LavaScreenController>(builder: (controller) {
      return GestureDetector(
        onTap: (){
          Get.offNamedUntil('homePage', (route) => false);
        },
        child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  color: Colors.indigo,
                ),
              ),
              Positioned.fill(
                child: FloatingBubbles(
                  noOfBubbles: 45,
                  colorsOfBubbles: [
                    Colors.green.withAlpha(30),
                    Colors.yellow,
                  ],
                  sizeFactor: 0.16,
                  duration: 120, // 120 seconds.
                  opacity: 70,
                  paintingStyle: PaintingStyle.stroke,
                  strokeWidth: 13,
                  shape: BubbleShape.circle, // circle is the default. No need to explicitly mention if its a circle.
                ),
              )
            ]
        ),
      );
    });
 }
}

