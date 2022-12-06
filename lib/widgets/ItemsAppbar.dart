import 'package:appshopping/utils/constant.dart';
import 'package:flutter/material.dart';

class ItemsAppbar extends StatelessWidget {
  const ItemsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: sBackgroundColor,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: sMainColor,
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            const Text(
              "ព័ត៌មានលម្អិតពីផលិតផល",
              style: TextStyle(
                fontFamily: 'KhmerOSbattambang',
                fontSize: 20,
                color: sMainColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.red,
            )
          ],
        ));
  }
}
