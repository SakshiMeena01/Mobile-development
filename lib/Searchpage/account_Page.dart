import 'package:flutter/material.dart';
import 'package:mychat_app/Searchpage/Tags_page.dart';
import 'package:mychat_app/Searchpage/chatPage.dart';
import 'package:mychat_app/Searchpage/feed_page.dart';
import 'package:mychat_app/Searchpage/upload_Page.dart';

class account_Page extends StatelessWidget {
  const account_Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        // Top box for uploading photo
        Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
          color: Color(0xff392467),
        ),
        child: Column(
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
              Expanded(child:
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage('assets/images/ae10.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(55),
              ),
        ),
      ),
        IconButton(
               icon: Icon(Icons.settings
               ,color: Colors.white,),
               onPressed: () {
                // Add functionality for settings here
              },
            ),
          ],
            ),
            // Add the account name or text
            Text(
              'Sakshi Meena',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'trajan',
              ),
            ),
            SizedBox(height: 4), // Add some space between elements
            // Add the text for followers and following
            Text(
              'Followers: 100  Following: 200',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
  ],
      ),
      ),
      ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          //home
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.pink,size: 32,),
              label:'Home'),

          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.pink,size: 32,),
              label:'Search'),

          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_outlined, color: Colors.pink,size: 32,),
              label:'Upload'),

          BottomNavigationBarItem(
              icon: Icon(Icons.chat_outlined, color: Colors.pink,size: 32,),
              label:'Chat'),

          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, color: Colors.pink,size: 32,),
              label:'Account'),

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
}
