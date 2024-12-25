import 'package:flutter/material.dart';
import 'package:store/consts/consts.dart';
import 'package:velocity_x/velocity_x.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: 'Cart is Empty!'.text.size(18).fontFamily(semibold).color(darkFontGrey).makeCentered(),
    );
  }
}
