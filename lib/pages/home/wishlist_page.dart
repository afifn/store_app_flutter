import 'package:flutter/material.dart';
import 'package:store_app/pages/widget/favorite_tail.dart';
import 'package:store_app/theme.dart';

class WhishlistPage extends StatelessWidget {
  const WhishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        title: Text(
          'Favorite Skincare',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor1,
        elevation: 0,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_love.png',
                width: 74,
                height: 62,
              ),
              const SizedBox(
                height: 23,
              ),
              Text(
                ' You don\'t have dream Skincare?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'Let\'s find your favorite shoes',
                style: subtitleTextStyle,
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
              vertical: 10,
            ),
            children: const [
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
              FavoriteTail(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            content(),
          ],
        ),
      ),
    );
  }
}
