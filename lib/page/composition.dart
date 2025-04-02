import 'package:flutter/material.dart';
import 'package:digital_snap/color.dart';

class Composition extends StatefulWidget {
  const Composition({super.key});

  @override
  State<Composition> createState() => _CompositionState();
}

class _CompositionState extends State<Composition> {
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
              'composition',
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
                              'asset/images/composition.jpg',
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
                        tabs: [Tab(text: 'Rule of Thirds'), Tab(text: 'Other')],
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
                                          'asset/images/rule_of_thirds.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'The Rule of Thirds divides the frame into a 3×3 grid, with key subjects placed along the lines or at their intersections. This creates balance and visual interest, making images more naturally appealing than simply centering the subject.',
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
                                          'asset/images/framing.png',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 16.0,
                                        ),
                                        child: Text(
                                          'Beyond the Rule of Thirds, techniques like leading lines guide the eye, symmetry creates balance, and framing encloses the subject. Negative space adds simplicity, the Golden Ratio refines composition, and filling the frame enhances impact. Diagonals and triangles add dynamism, turning ordinary shots into striking visuals!',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: AppColors.text,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            12.0,
                                          ),
                                          child: Image.asset(
                                            'asset/images/framing_1.png',
                                          ),
                                        ),
                                      ),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          12.0,
                                        ),
                                        child: Image.asset(
                                          'asset/images/framing_2.jpg',
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
