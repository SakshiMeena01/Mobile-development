import 'package:flutter/material.dart';
import 'package:mychat_app/Searchpage/Tags_page.dart';
import 'package:mychat_app/Searchpage/chatPage.dart';
import 'package:mychat_app/Searchpage/feed_page.dart';
import 'package:mychat_app/Searchpage/account_Page.dart';
import 'package:lottie/lottie.dart';



class upload_Page extends StatelessWidget {
  const upload_Page({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Color(0xffA367B1),
    body: Center(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 300,
        height: 300,
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage('assets/images/ae12.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
    ),
    SizedBox(height: 5),
    Text('"Share your style, shape your story. Post and shine!"',
      textAlign: TextAlign.center,
      style: TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      fontFamily: 'trajan',
    ),),
      SizedBox(height: 40),
      UploadBox(),
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
class UploadBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200, // Adjust width according to your design
        height: 100, // Adjust height according to your design
        decoration: BoxDecoration(
          color: Color(0xff5D3587),
        border: Border.all(
          color: Color(0xffFFD1E3),
        width: 1.0,
        style: BorderStyle.solid, // Dotted border style
    ),
    borderRadius: BorderRadius.circular(8.0), // Adjust border radius as needed
    ),
    child: Center(
    child: Text(
    'Upload Here',
    style: TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.bold,
        fontFamily: 'fonta',
        color: Color(0xffFFD1E3),
    ),
    ),
    ),
    );
    }
}