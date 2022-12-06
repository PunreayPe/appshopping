import 'package:appshopping/utils/constant.dart';
import 'package:appshopping/widgets/CartAppBar.dart';
import 'package:appshopping/widgets/CartBottomNavbar.dart';
import 'package:appshopping/widgets/CartItemsSample.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CartAppBar(),
          Container(
            height: 700,
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              color: sBackgroundContentColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                const CartItemsSample(),
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  margin: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: sMainColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.add,
                        color: sBackgroundColor,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'បញ្ចូលកូដបញ្ចុះតម្លៃ',
                        style: TextStyle(
                          color: sMainColor,
                          fontFamily: 'KhmerOSbattambang',
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CartBottomNavbar(),
    );
  }
}
