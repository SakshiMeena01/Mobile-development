import 'package:flutter/material.dart';
import 'package:mychat_app/Searchpage/Tags_page.dart';
import 'package:mychat_app/Searchpage/account_Page.dart';
import 'package:mychat_app/Searchpage/chatPage.dart';
import 'package:mychat_app/Searchpage/upload_Page.dart';

class feed_page extends StatelessWidget {
  const feed_page({Key? key});

  @override
  Widget build(BuildContext context) {
    // Placeholder list of user content (you'll replace this with Firebase data)
    List<Map<String, dynamic>> userContentList = [
      {
        'userName': 'Sakshi Meena',
        'userLogo': 'assets/images/ae11.png',
        'contentImage': 'assets/images/ae5.jpg',
        'hashtags': ['#urbanluxe', '#sleevedrama', '#newloooks'],
      },
      {
        'userName': 'Sakshi Meena',
        'userLogo': 'assets/images/ae11.png',
        'contentImage': 'assets/images/ae5.jpg',
        'hashtags': ['#urbanluxe', '#sleevedrama', '#newloooks'],
      },
      // Add more user content items here
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff392467),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 32,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: userContentList.length,
        itemBuilder: (context, index) {
          return buildUserContentCard(userContentList[index]);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, color: Colors.pink, size: 32),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.pink, size: 32),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_a_photo_outlined, color: Colors.pink, size: 32),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined, color: Colors.pink, size: 32),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, color: Colors.pink, size: 32),
            label: 'Account',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => feed_page()),
              );
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Tags_page()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => upload_Page()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => chatPage()),
              );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => account_Page()),
              );
              break;
            default:
              break;
          }
        },
      ),
    );
  }

  Widget buildUserContentCard(Map<String, dynamic> content) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(content['userLogo']),
            ),
            title: Text(content['userName']),
          ),
          Image.asset(content['contentImage']),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 8.0,
              children: (content['hashtags'] as List<String>)
                  .map((tag) => Chip(label: Text(tag)))
                  .toList(),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.favorite,color: Colors.pink,),
                onPressed: () {
                  // Handle like button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.comment,color: Colors.pink,),
                onPressed: () {
                  // Handle comment button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.share,color: Colors.pink,),
                onPressed: () {
                  // Handle share button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.monetization_on,color: Colors.pink,),
                onPressed: () {
                  // Handle gift or money button pressed
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
