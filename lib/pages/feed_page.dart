import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('フィード'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  'https://cdn.iconscout.com/icon/free/png-256/free-instagram-216-721958.png?f=webp',
                  width: 60,
                  height: 60,
                ),
                const Spacer(),
                const Column(
                  children: [
                    Text(
                      '7,000',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text('投稿')
                  ],
                ),
                const SizedBox(width: 16),
                const Column(
                  children: [
                    Text(
                      '4.5億',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text('フォロワー')
                  ],
                ),
                const SizedBox(width: 16),
                const Column(
                  children: [
                    Text(
                      '100',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    Text('フォロー')
                  ],
                )
              ],
            ),
            const SizedBox(width: 16),
            const Text(
              'Instagram',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const Text(
              '#YoursToMake',
              style: TextStyle(color: Colors.blue),
            ),
            const Text(
              'help:instagram.com',
              style: TextStyle(color: Colors.blue),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('フォロー中'),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('メッセージ'),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 4),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(Icons.keyboard_arrow_down),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
