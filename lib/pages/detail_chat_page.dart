import 'package:flutter/material.dart';
import 'package:store_app/pages/widget/chat_bubble.dart';
import 'package:store_app/theme.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bottomInsets = MediaQuery.of(context).viewInsets.bottom;

    header() {
      return PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          backgroundColor: backgroundColor1,
          centerTitle: false,
          elevation: 0,
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/ava.jpg',
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
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
                      'Af Store',
                      style: primaryTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      'Online',
                      style: subtitleTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }

    productPreview() {
      return Container(
        height: 74,
        width: 225,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor5,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: primaryColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/product_1.jpg',
                width: 54,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BUBUB SERUM VISION',
                    style: primaryTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '\$57,15',
                    style: priceTextStyle.copyWith(fontWeight: medium),
                  )
                ],
              ),
            ),
            Image.asset(
              'assets/icon_remove.png',
              width: 22,
            ),
          ],
        ),
      );
    }

    Widget chatField() {
      return Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            productPreview(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: backgroundColor4,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Type message....',
                        hintStyle: subtitleTextStyle,
                      ),
                      style: primaryTextStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(primaryColor),
                    minimumSize: const MaterialStatePropertyAll(Size(45, 45)),
                    shape: MaterialStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  child: const Icon(
                    Icons.send_rounded,
                    size: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: bottomInsets,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: const [
          ChatBubble(
            text: 'Hi, This item is still available?',
            isSender: true,
            hasProduct: true,
          ),
          ChatBubble(
            text: 'Good night, This item is available stock 5 items',
            isSender: false,
          ),
          ChatBubble(
            text: 'Owww, it suits me very well',
            isSender: true,
          ),
          ChatBubble(
            text: 'let\'s buy our product now',
            isSender: false,
          ),
        ],
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: backgroundColor3,
      appBar: header(),
      bottomNavigationBar: chatField(),
      body: content(),
    );
  }
}
