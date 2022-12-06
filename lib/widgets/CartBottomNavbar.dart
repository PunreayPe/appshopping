import 'package:appshopping/utils/constant.dart';
import 'package:flutter/material.dart';

class CartBottomNavbar extends StatelessWidget {
  const CartBottomNavbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        height: 150,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'សរុប៖',
                    style: TextStyle(
                      color: sMainColor,
                      fontSize: 18,
                      fontFamily: 'KhmerOSbattambang',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$5000',
                    style: TextStyle(
                      color: sMainColor,
                      fontFamily: 'Prompt',
                      // fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  color: sMainColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Text(
                  'Check Out',
                  style: TextStyle(
                    color: sBackgroundColor,
                    fontFamily: 'Prompt',
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
