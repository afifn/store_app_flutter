import 'package:flutter/material.dart';
import 'package:store_app/pages/widget/product_card.dart';
import 'package:store_app/pages/widget/product_list.dart';
import 'package:store_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, Afif',
                    style: primaryTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                  ),
                  Text(
                    '@afifny',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 54,
              width: 54,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_profile.png',
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Skin Type',
                  style: primaryTextStyle.copyWith(
                      fontSize: 13, fontWeight: medium),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.transparent,
                    border: Border.all(color: subtitleColor)),
                child: Text(
                  'Sunscreen',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: light),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Serum',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: light),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Moisturizer',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: light),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.transparent,
                  border: Border.all(color: subtitleColor),
                ),
                child: Text(
                  'Hiking',
                  style: subtitleTextStyle.copyWith(
                      fontSize: 13, fontWeight: light),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget popular() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'Popular Products',
                style: primaryTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  Row(
                    children: const [
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                      ProductCard(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget newArrival() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: defaultMargin),
              child: Text(
                'New Arrivals',
                style: primaryTextStyle.copyWith(
                  fontSize: 22,
                  fontWeight: semiBold,
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Column(
              children: const [
                ProductList(),
                ProductList(),
                ProductList(),
                ProductList(),
                ProductList(),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: ListView(
        children: [
          header(),
          categories(),
          popular(),
          newArrival(),
        ],
      ),
    );
  }
}
