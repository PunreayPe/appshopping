import 'package:appshopping/utils/constant.dart';
import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: const EdgeInsets.only(left: 15, top: 10, right: 11),
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
              color: sBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: sMainColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      '-40%',
                      style: TextStyle(
                        color: sBackgroundColor,
                        fontFamily: 'Prompt',
                        fontSize: 13,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    'assets/images/$i.png',
                    height: 120,
                    width: 120,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 6),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Product name',
                  style: TextStyle(
                    fontFamily: 'KhmerOSbattambang',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: sMainColor,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'ការពិពណ៌នាអំពីផលិតផល',
                  style: TextStyle(
                    fontSize: 12,
                    color: sMainColor,
                    fontFamily: 'KhmerOSbattambang',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 6,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '\$1000',
                      style: TextStyle(
                          color: sMainColor,
                          fontSize: 16,
                          fontFamily: 'Prompt',
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: sMainColor,
                    )
                  ],
                ),
              ),
            ]),
          ),
      ],
    );
  }
}
