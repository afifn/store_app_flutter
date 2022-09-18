import 'package:flutter/material.dart';
import 'package:store_app/theme.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/product_2.jpeg',
              fit: BoxFit.cover,
              height: 120,
              width: 120,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Moisturizer',
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Sinn Purete natural & organics',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(fontWeight: medium),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
