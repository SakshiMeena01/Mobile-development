import 'package:flutter/material.dart';
import 'package:mychat_app/Searchpage/Tags_page.dart';
import 'package:mychat_app/Searchpage/account_Page.dart';
import 'package:mychat_app/Searchpage/feed_page.dart';
import 'package:mychat_app/Searchpage/upload_Page.dart';

class chatPage extends StatelessWidget {
  const chatPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(



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
