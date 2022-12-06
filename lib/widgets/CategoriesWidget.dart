import 'package:flutter/material.dart';

import 'package:appshopping/utils/constant.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);
  //function
  // void product_title() {
  //   List<String> _product = [
  //     "Iphone 14 Pro Max,Apple Watch Ultra,Huawei Mate 50 Pro"
  //   ];
  //   for (int i = 0; i < 2; i++) {
  //     print(_product[i]);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/$i.png',
                    width: 40,
                    height: 40,
                  ),
                  const Text(
                    'ឈ្មោះផលិតផល',
                    style: TextStyle(
                      color: sMainColor,
                      fontSize: 14,
                      fontFamily: 'KhmerOSbattambang',
                      // fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
