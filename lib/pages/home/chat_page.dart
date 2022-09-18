import 'package:flutter/material.dart';
import 'package:store_app/pages/widget/chat_tail.dart';
import 'package:store_app/theme.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        elevation: 0,
      );
    }

    Widget emptyContent() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_headset.png',
                height: 80,
                width: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Opss no message yet?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                'You have never done a transaction',
                style: subtitleTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 24,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(fontSize: 16),
                ),
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
          child: Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              children: const [
                ChatTail(),
              ],
            ),
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
