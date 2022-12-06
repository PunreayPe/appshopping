import 'package:appshopping/utils/constant.dart';
import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: sBackgroundColor,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              //go back to previus page
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: sMainColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'ការបញ្ជាទិញ',
              style: TextStyle(
                fontFamily: 'KhmerOSbattambang',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: sMainColor,
              ),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.more_vert,
            size: 30,
            color: sMainColor,
          )
        ],
      ),
    );
  }
}
