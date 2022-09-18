import 'package:flutter/material.dart';
import 'package:store_app/theme.dart';

class ChatTail extends StatelessWidget {
  const ChatTail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/ava.jpg',
                    height: 54,
                    width: 54,
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
                        style: primaryTextStyle.copyWith(fontSize: 15),
                      ),
                      Text(
                        'Good night, This item is available stock 5 items',
                        style: subtitleTextStyle.copyWith(fontWeight: light),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: subtitleTextStyle.copyWith(fontSize: 10),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Color(0xff2B2939),
            )
          ],
        ),
      ),
    );
  }
}
