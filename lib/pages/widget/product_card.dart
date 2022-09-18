import 'package:flutter/material.dart';
import 'package:store_app/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 215,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        color: const Color(0xffECEDEF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/product_3.jpeg',
            width: 215,
            height: 120,
            fit: BoxFit.cover,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Serum',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'NOURI VERSION 2.0',
                  style: titleTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  '\$25,5',
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
