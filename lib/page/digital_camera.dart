import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';

class DigitalCamera extends StatefulWidget {
  const DigitalCamera({super.key});

  @override
  State<DigitalCamera> createState() => _DigitalCameraState();
}

class _DigitalCameraState extends State<DigitalCamera> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 72.0, left: 32.0),
            child: Text(
              'digital',
              style: TextStyle(
                fontFamily: 'Gtek',
                fontSize: 35,
                color: AppColors.accent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Text(
              'camera',
              style: TextStyle(
                fontFamily: 'Gtek',
                fontSize: 35,
                color: AppColors.accent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 300,
                        width: 6,
                        decoration: BoxDecoration(
                          color: AppColors.highlight,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      AspectRatio(
                        aspectRatio: 2.1 / 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Hero(
                            tag: 'img',
                            child: Image.asset(
                              'asset/images/digital_camera.jpg',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DefaultTabController(
              length: 2,
              child: SizedBox(
                height: 480,
                child: Column(
                  children: [
                    Container(
                      height: kToolbarHeight,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.accent),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: TabBar(
                        padding: EdgeInsets.all(4.0),
                        labelColor: AppColors.background,
                        unselectedLabelColor: AppColors.accent,
                        dividerColor: Colors.transparent,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: AppColors.accent,
                        ),
                        tabs: [Tab(text: 'Digital Image'), Tab(text: 'Sensor')],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          12.0,
                                        ),
                                        child: Image.asset(
                                          'asset/images/pixel.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Unlike film cameras, digital cameras convert light into digital data. Light is captured and split into tiny picture elements called "pixels", each recording light intensity.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'For color images, pixels store red, green, and blue values.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Combined, these pixels reconstruct the image. Higher pixel counts, measured as resolution (width x height), yield sharper details.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.text,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          12.0,
                                        ),
                                        child: Image.asset(
                                          'asset/images/sensor.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'A digital camera sensor is the heart of the device, responsible for capturing light and converting it into a digital image. It consists of millions of tiny photosites (or pixels) that detect light intensity and color. When light strikes these photosites, the sensor translates it into electrical signals, which are then processed into a digital photograph. The two main types of sensors—CMOS and CCD—differ in their technology and efficiency, but both serve the same purpose: transforming light into stunning visual memories.',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.text,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
