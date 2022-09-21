
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop/screens/details/components/cart_counter.dart';

class favBtn extends StatelessWidget {
  const favBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          decoration: BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
