import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';

class Lens extends StatefulWidget {
  const Lens({super.key});

  @override
  State<Lens> createState() => _LensState();
}

class _LensState extends State<Lens> {
  double opacity = 1.0;

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
              'lens',
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
                              'asset/images/lens.jpg',
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
                        tabs: [Tab(text: 'Focus'), Tab(text: 'Zoom')],
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
                                      Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              12.0,
                                            ),
                                            child: Image.asset(
                                              'asset/images/gallery/20.JPG',
                                              opacity: AlwaysStoppedAnimation(
                                                opacity,
                                              ),
                                            ),
                                          ),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              12.0,
                                            ),
                                            child: Image.asset(
                                              'asset/images/gallery/19.JPG',
                                              opacity: AlwaysStoppedAnimation(
                                                1.0 - opacity,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'near',
                                              style: TextStyle(
                                                color: AppColors.background,
                                                fontSize: 20,
                                              ),
                                            ),
                                            Slider(
                                              value: opacity,
                                              min: 0.0,
                                              max: 1.0,
                                              onChanged: (value) {
                                                setState(() {
                                                  opacity = value;
                                                });
                                              },
                                              thumbColor: AppColors.highlight,
                                              activeColor: AppColors.accent,
                                              inactiveColor:
                                                  AppColors.background,
                                            ),
                                            Text(
                                              'far',
                                              style: TextStyle(
                                                color: AppColors.background,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Lens focus is the precise adjustment of a camera’s lens elements to ensure that the subject appears sharp and clear. This is achieved by altering the distance between the lens and the camera sensor, aligning light rays to converge correctly. Autofocus systems swiftly adjust focus using contrast detection or phase detection, while manual focus allows the photographer finer control. Proper focusing is essential, for even the most exquisite composition can be marred by an out-of-focus subject.',
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
                                          'asset/images/zoom.png',
                                          scale: 0.5,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            12.0,
                                          ),
                                          child: Image.asset(
                                            'asset/images/zoom_1.png',
                                            scale: 0.5,
                                          ),
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Zooming allows a photographer to change focal length, bringing distant subjects closer or widening the field of view. Optical zoom achieves this by physically adjusting lens elements, maintaining image quality without loss of detail. Digital zoom, on the other hand, merely crops and enlarges the image, akin to resizing in post-processing, often resulting in reduced sharpness.',
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
