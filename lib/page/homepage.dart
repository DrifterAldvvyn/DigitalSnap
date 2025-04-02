import 'package:digital_snap/page/composition.dart';
import 'package:digital_snap/page/digital_camera.dart';
import 'package:digital_snap/page/exposure.dart';
import 'package:digital_snap/page/gallery.dart';
import 'package:digital_snap/page/lens.dart';
import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';

class Content {
  final String title;
  final String image;
  final Widget page;

  const Content({required this.title, required this.image, required this.page});
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Content> contents = const [
    Content(
      title: 'Digital Camera',
      image: 'asset/images/digital_camera.jpg',
      page: DigitalCamera(),
    ),
    Content(title: 'Lens', image: 'asset/images/lens.jpg', page: Lens()),
    Content(
      title: 'Exposure',
      image: 'asset/images/exposure.jpg',
      page: Exposure(),
    ),
    Content(
      title: 'Composition',
      image: 'asset/images/composition.jpg',
      page: Composition(),
    ),
    Content(
      title: 'Gallery',
      image: 'asset/images/gallery.jpg',
      page: Gallery(),
    ),
  ];

  int selectedCard = 0;

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
              'snap',
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
                height: 300,
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
                        aspectRatio: 4 / 3,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Hero(
                            tag: 'img',
                            child: Image.asset(
                              contents[selectedCard].image,
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
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Icon(
              Icons.keyboard_arrow_up_rounded,
              color: AppColors.accent,
              size: 60.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 48.0),
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.95,
              child: ListView.builder(
                itemCount: contents.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = index;
                      });
                    },
                    child: Card(
                      color:
                          selectedCard == index
                              ? AppColors.highlight
                              : AppColors.background,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color:
                              selectedCard == index
                                  ? AppColors.accent
                                  : AppColors.primary,
                          width: 6.0,
                        ),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16.0,
                          bottom: 16.0,
                          left: 32.0,
                          right: 16.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              contents[index].title,
                              style: TextStyle(
                                fontSize: 30,
                                color:
                                    selectedCard == index
                                        ? AppColors.background
                                        : AppColors.accent,
                              ),
                            ),
                            Container(
                              width: 4.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                color:
                                    selectedCard == index
                                        ? AppColors.accent
                                        : AppColors.primary,
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8.0),
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: AppColors.accent,
              size: 60.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => contents[selectedCard].page,
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: AppColors.highlight,
                  side: BorderSide(color: AppColors.primary, width: 4.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: Icon(Icons.keyboard_double_arrow_right_rounded, color: AppColors.background, size: 40,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
