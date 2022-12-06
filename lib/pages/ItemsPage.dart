import 'package:appshopping/utils/constant.dart';
import 'package:appshopping/widgets/Item_Bottom_NavBar.dart';
import 'package:appshopping/widgets/ItemsAppbar.dart';
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemsPage extends StatelessWidget {
  List<Color> Clrs_o = const [
    Color(0xFF570861),
    Color(0xFF182030),
    Color(0xFFC0C0C0),
    Color(0xFFF6E0C9),
  ];
  List<String> Size_of_iphone = ['128 GB', '256 GB', '512 GB', '1TB'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackgroundContentColor,
      body: ListView(
        children: [
          const ItemsAppbar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'assets/images/1.png',
              height: 300,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 15),
                      child: Row(
                        children: const [
                          Text(
                            'Iphone 14 Pro Max',
                            style: TextStyle(
                              color: sMainColor,
                              fontFamily: 'Prompt',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 20,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => const Icon(
                              Icons.favorite,
                              color: Color(0xFFDA62EA),
                            ),
                            onRatingUpdate: (index) {},
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: sBackgroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.minus,
                                  size: 18,
                                ),
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: const Text(
                                  '01',
                                  style: TextStyle(
                                    fontFamily: 'Prompt',
                                    fontSize: 16,
                                    color: sMainColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: sBackgroundColor,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 3,
                                      blurRadius: 10,
                                      offset: Offset(0, 3),
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  CupertinoIcons.plus,
                                  size: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'The 6.1 and 6.7-inch iPhone 14 Pro models look like the iPhone 13 Pro models with flat edges, stainless steel enclosure, a textured matte glass back, IP68 water resistance, and a Ceramic Shield-protected display, but the camera bumps are larger to accommodate new lenses, and the display has also changed.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontFamily: 'Prompt',
                          fontSize: 14,
                          color: Color(0xFF630070),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            'Size:',
                            style: TextStyle(
                              color: sMainColor,
                              fontFamily: 'Prompt',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 0; i <= 3; i++)
                                Container(
                                  width: 60,
                                  height: 40,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ]),
                                  child: Text(
                                    Size_of_iphone[i],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Prompt',
                                      color: sMainColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Row(
                        children: [
                          const Text(
                            'Color:',
                            style: TextStyle(
                              color: sMainColor,
                              fontFamily: 'Prompt',
                              fontSize: 15,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              for (int i = 0; i <= 3; i++)
                                Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  decoration: BoxDecoration(
                                      color: Clrs_o[i],
                                      borderRadius: BorderRadius.circular(30),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 8,
                                        ),
                                      ]),
                                ),
                            ],
                          )
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
      bottomNavigationBar: const ItemBottomNavBar(),
    );
  }
}
