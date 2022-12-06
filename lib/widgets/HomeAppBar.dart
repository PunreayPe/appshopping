import 'package:appshopping/utils/constant.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: sBackgroundColor,
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: sMainColor,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'ឆ្កែដ័រអនឡាញសប',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'KhmerOSbattambang',
                color: sMainColor,
              ),
            ),
          ),
          const Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: const EdgeInsets.all(6),
            badgeContent: const Text(
              "5",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "cartPage");
              },
              child: const Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: sMainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
