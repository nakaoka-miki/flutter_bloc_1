import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTUEPLzEBzgZVmjXvlP0XFHm6dGS5C-Av9sQ&s',
    'https://d3jks39y9qw246.cloudfront.net/medium/58875/576429f3a6ee2d3cbe66cdbfe5963e565e90e45d.jpg',
    'https://cdn.pixabay.com/photo/2023/09/16/22/05/japan-8257601_640.jpg',
    'https://img.freepik.com/free-photo/beautiful-landscape-mountain-fuji_74190-3065.jpg',
    'https://italian-guide.com/wp-content/uploads/2018/11/Beautiful-landscape-view-of-Arezzo-town-and-suburbs-in-in-eastern-Tuscany-Italy.jpg',
    'https://static.amanaimages.com/imgroom/rf_preview640/10573/10573008447.jpg',
    'https://static.amanaimages.com/imgroom/rf_preview640/10573/10573008447.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
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
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text('投稿')
                    ],
                  ),
                  const Column(
                    children: [
                      Text(
                        '4.5億',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text('フォロワー')
                    ],
                  ),
                  const SizedBox(width: 16),
                  const Column(
                    children: [
                      Text(
                        '100',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text('フォロー')
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    '#YoursToMake',
                    style: TextStyle(color: Colors.blue),
                  ),
                  Text(
                    'help:instagram.com',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
              ),
            ),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              crossAxisCount: 3,
              children: image.map((imageUrl) {
                return InstagramPastItem(imageUrl: imageUrl);
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}

class InstagramPastItem extends StatelessWidget {
  const InstagramPastItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}
