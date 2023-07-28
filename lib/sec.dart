import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facebook Profile'),
        backgroundColor: Color(0xff000000),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://e0.pxfuel.com/wallpapers/105/667/desktop-wallpaper-funny-face-cover-cartoon-albert-einstein-black.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  'https://e0.pxfuel.com/wallpapers/694/315/desktop-wallpaper-black-iphone-25-top-black-iphone-black-and-white-roses-iphone.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'adren lernm',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'hello word hello word hello word',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(
              height: 30,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            SizedBox(height: 30), // Add spacing between sections
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Friend 1
                Column(
                  children: [
                    Text(
                      '',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://e0.pxfuel.com/wallpapers/704/405/desktop-wallpaper-book-cover-tips-147-dark-black-white-aesthetic.jpg'), // Replace with your friend's image URL
                    ),
                    SizedBox(
                        height: 10), // Add spacing below the friend's image
                    Text('Friend 1'),
                  ],
                ),
                SizedBox(width: 30), // Add spacing between friend images
                // Friend 2
                Column(
                  children: [
                    Text(
                      'Best Friend',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://e1.pxfuel.com/desktop-wallpaper/687/243/desktop-wallpaper-black-clover-%E2%9C%93-labzada-black-cover.jpg'), // Replace with your friend's image URL
                    ),
                    SizedBox(
                        height: 10), // Add spacing below the friend's image
                    Text('Friend 2'),
                  ],
                ),
                SizedBox(width: 30), // Add spacing between friend images
                // Friend 3
                Column(
                  children: [
                    Text(
                      '',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://e1.pxfuel.com/desktop-wallpaper/375/463/desktop-wallpaper-green-eyes-cat-eyes-black-shiny-cats-stone-graphic-design-cover-art-reflection-minimalism-black-kittens-with-green-eyes.jpg'), // Replace with your friend's image URL
                    ),
                    SizedBox(
                        height: 10), // Add spacing below the friend's image
                    Text('Friend 3'),
                  ],
                ),
              ],
            ),
            const Divider(
              height: 30,
              thickness: 2,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            Text(
              'Posts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // List of Posts

            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 4, // Number of posts
              itemBuilder: (context, index) {
                return Expanded(
                  child: ColoredBox(
                    color: Colors.grey, // Change the color to gray
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Post Image
                        Image.network(
                          'https://e0.pxfuel.com/wallpapers/2/165/desktop-wallpaper-black-and-white-mountain-mountain-covered-with-snow-clouds-selective-coloring-nature-landscape-snowy-peak-sunset-sunli-snow-clouds-cloud-clouds-mountain-black-and-white.jpg',
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        // Post Like
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.thumb_up),
                            Text('100 Likes'),
                          ],
                        ),
                        SizedBox(height: 4),
                        // Post Hours
                        Text('2 hours ago'),
                        const Divider(
                          height: 30,
                          thickness: 2,
                          indent: 0,
                          endIndent: 0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
