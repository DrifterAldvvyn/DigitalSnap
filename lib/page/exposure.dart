import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';

class Exposure extends StatefulWidget {
  const Exposure({super.key});

  @override
  State<Exposure> createState() => _ExposureState();
}

class _ExposureState extends State<Exposure> {
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
              'exposure',
              style: TextStyle(
                fontFamily: 'Gtek',
                fontSize: 35,
                color: AppColors.accent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 270,
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
                      SizedBox(
                        width: 350,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 90,
                              child: AspectRatio(
                                aspectRatio: 350 / 90,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Hero(
                                    tag: 'img',
                                    child: Image.asset(
                                      'asset/images/exposure.jpg',
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Exposure is the amount of light reaching the camera sensor, determining image brightness. Achieving proper exposure requires balancing three parameters.',
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.text,
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
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DefaultTabController(
              length: 3,
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
                        tabs: [
                          Tab(text: 'Shutter Speed'),
                          Tab(text: 'Aperture'),
                          Tab(text: 'ISO'),
                        ],
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
                                          'asset/images/gallery/12.JPG',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Shutter speed controls the duration of light being capture. Faster speed freeze motion into clear image, slower speed creates blur with moving objects.',
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
                                          'asset/images/gallery/08.JPG',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Aperture controls the amount of light hitting the sensor. Wider gives the background more blur, narrower keeps more in focus.',
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
                                          'asset/images/gallery/16.JPG',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'ISO controls the sensitivity of the sensor. Higher ISO introduces more noise, lower keeps the image clean.',
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
