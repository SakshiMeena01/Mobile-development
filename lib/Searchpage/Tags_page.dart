import 'package:flutter/material.dart';
import 'package:mychat_app/Searchpage/chatPage.dart';
import 'package:mychat_app/Searchpage/feed_page.dart';
<<<<<<< HEAD
import 'package:mychat_app/accountpage/account_Page.dart';
import 'package:mychat_app/Searchpage/upload_Page.dart';


=======
import 'package:mychat_app/Searchpage/account_Page.dart';
import 'package:mychat_app/Searchpage/upload_Page.dart';
import 'package:mychat_app/screens/chat.dart';
>>>>>>> f8727b5a80ce104a265d0974d43e2f2274b0d736

class Tags_page extends StatelessWidget {
  const Tags_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
        // Top box for uploading photo
        Container(
<<<<<<< HEAD
        padding: EdgeInsets.all(60),
=======
        padding: EdgeInsets.all(20),
>>>>>>> f8727b5a80ce104a265d0974d43e2f2274b0d736
        margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        decoration: BoxDecoration(
            color: Color(0xff392467),
          image: DecorationImage(
            image: AssetImage('assets/images/ae11.png'),
            fit: BoxFit.cover,
          ),
        ),
<<<<<<< HEAD
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded( // Ensure the SearchBar takes available space
            child: SearchBar(),
      ),
          ],
        ),
        ),
=======
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search'),
                  Icon(Icons.search),
                ],
              ),
            ),

          ],
        ),
      ),
      // Search bar

>>>>>>> f8727b5a80ce104a265d0974d43e2f2274b0d736


      // tags you follow
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,),
        child: Text('hastags you follow'
          ,style: TextStyle(
              fontSize: 19,
              color: Color(0xff392467),
              fontFamily: 'fonta',
              fontWeight: FontWeight.bold,
<<<<<<< HEAD
          ),
        ),
=======
          ),),
>>>>>>> f8727b5a80ce104a265d0974d43e2f2274b0d736
      ),
      // List of boxes horizontally
      Container(
        height: 100, // Adjust height as needed
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFD1E3),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae8.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child:Center(child: Text('#stylish simplicity'
                ,style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontFamily: 'fonta',
                ),),),
            ),
            Container(
              width: 200,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xffFFD1E3),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae9.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Center(child: Text('#sustainable swank'
                ,style: TextStyle(
                  fontSize: 19,
                  color: Colors.black87,
                  fontFamily: 'fonta',
                ),),),
            ),
            // Add more boxes as needed
          ],
        ),
      ),
      // Text below

      //checkout hastags and follow
      // Text below search bar
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Text('Checkout who to follow'
          ,style: TextStyle(
              fontSize: 19,
            color: Color(0xff392467),
              fontFamily: 'fonta',
            fontWeight: FontWeight.bold,
          ),),
      ),
      //
      Container(
        height: 100, // Adjust height as needed
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15,),
              decoration: BoxDecoration(
                color: Color(0xff5D3587),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text('#chick looks'
                    ,style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                    ),),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('follow'),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15,),
              decoration: BoxDecoration(
                color: Color(0xffA367B1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text('#Wardrobe goals'
                    ,style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('follow'),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15,),
              decoration: BoxDecoration(
                color: Color(0xff392467),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text('#cfashionFaves'
                    ,style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('follow'),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 15,),
              decoration: BoxDecoration(
                color: Color(0xffFFD1E3),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text('#clooksmatter'),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: Text('follow'),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
      // Text after another box

      //popular ideas
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Text('popular for you'
          ,style: TextStyle(
              fontSize: 19,
            color: Color(0xff392467),
              fontFamily: 'fonta',
            fontWeight: FontWeight.bold,
          ),),
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('eco-couture',
                    style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae1.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('sleeve drama',style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontFamily: 'Fonta'
                  ),),
                ],
              ),
            ),
          ),
        ],
      ),

      //second row
      Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae2.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ensemble elegence'
                    ,style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae3.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('retro revival'
                    ,style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
        ],
      ),

      //ideas for you
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Text('Trends for you'
          ,style: TextStyle(
              fontSize: 19,
            color: Color(0xff392467),
              fontFamily: 'fonta',
            fontWeight: FontWeight.bold,
          ),),
      ),
      // Two rows of two rectangles with text
      Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae4.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('timeless tailoring'
                    ,style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae5.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('urban luxe'
                    ,style: TextStyle(
                        fontSize: 19,
                        color: Colors.black87,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
        ],
      ),

      //second row
      Row(
        children: [
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae6.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('artisan couture'
                    ,style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/ae7.jpg'),
                  fit: BoxFit.cover, // Adjust the fit as needed
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('effortless elegence'
                    ,style: TextStyle(
                        fontSize: 19,
                        color: Colors.black87,
                        fontFamily: 'Fonta'
                    ),),
                ],
              ),
            ),
          ),
        ],
      ),
<<<<<<< HEAD
      ],
=======
    ],
>>>>>>> f8727b5a80ce104a265d0974d43e2f2274b0d736
        ),
      ),

    bottomNavigationBar: BottomNavigationBar(
    items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined, color: Colors.pink,size: 32,),
    label:'Home'),

    BottomNavigationBarItem(
    icon: Icon(Icons.search, color: Colors.pink,size: 32,),
    label:'Search'),

    BottomNavigationBarItem(
    icon: Icon(Icons.add_a_photo_outlined, color: Colors.pink,size: 32,),
    label:'upload'),

    BottomNavigationBarItem(
    icon: Icon(Icons.chat_outlined, color: Colors.pink,size: 32,),
    label:'chat'),

    BottomNavigationBarItem(
    icon: Icon(Icons.account_circle_outlined, color: Colors.pink ,size: 32,),
    label:'account',
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
}








<<<<<<< HEAD




=======
>>>>>>> f8727b5a80ce104a265d0974d43e2f2274b0d736
