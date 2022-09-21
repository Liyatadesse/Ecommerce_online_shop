import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';
class productTitleWithImage extends StatelessWidget {
  const productTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic Hand Bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: kDefaultPaddin / 2,
          ),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(text: 'price\n'),
                TextSpan(
                    text: '\$${product.price}',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                            )
                            )
              ])),
              SizedBox(
                width: kDefaultPaddin,
              ),
              Expanded(
                child: Image.asset(product.image, fit: BoxFit.fill),
              ),
            ],
          )
        ],
      ),
    );
  }
}
