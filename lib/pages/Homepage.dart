import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';
import '../widgets/CategoriesWidget.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const HomeAppBar(),
          Container(
            // height: 500,
            padding: const EdgeInsets.only(
              top: 15,
            ),
            decoration: const BoxDecoration(
                color: sBackgroundContentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(children: [
              //Search Box
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                    color: sBackgroundColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(children: [
                  Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "ស្វែករកនៅទីនេះ...",
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.camera_alt,
                    size: 27,
                    color: sMainColor,
                  )
                ]),
              ),
              //Categories
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: const Text(
                  "ប្រភេទផលិតផល",
                  style: TextStyle(
                    fontFamily: 'KhmerOSbattambang',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: sMainColor,
                  ),
                ),
              ),
              //Categories Widget
              const CategoriesWidget(),
              // Items
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: const Text(
                  'លក់ដាច់បំផុត',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'KhmerOSbattambang',
                    fontWeight: FontWeight.bold,
                    color: sMainColor,
                  ),
                ),
              ),
              //ItemsWidget
               ItemsWidget(),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        color: sMainColor,
        height: 70,
        items: const [
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: sBackgroundColor,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: sBackgroundColor,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: sBackgroundColor,
          ),
        ],
      ),
    );
  }
}
