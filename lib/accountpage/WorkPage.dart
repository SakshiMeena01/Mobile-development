import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  // Define a list of image paths
  final List<String> imagePaths = const[
    'assets/images/ae13.jpg',
    'assets/images/ae2.jpg',
    'assets/images/ae14.jpg',
    'assets/images/ae15.jpg',
    'assets/images/ae16.jpg',
    'assets/images/ae7.jpg',
    'assets/images/ae8.jpg',
    'assets/images/ae9.jpg',
    'assets/images/ae10.jpg',
    'assets/images/ae11.jpg',
    'assets/images/ae12.jpg',
    // Add more image paths
    //as needed
  ];

  const WorkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Add your header or any other content here
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text widget above the Container
            Center(
              child: Text(
              'Ordered  ',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'fonta',
                decoration: TextDecoration.underline,
                decorationColor: Colors.black,
              ),
            ),
            ),
            // Add the grid view for photos and videos
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // You can adjust the number of columns as needed
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
              ),
              itemCount: imagePaths.length, // Use the length of your imagePaths list
              itemBuilder: (BuildContext context, int index) {
                // Return a square box representing a photo or video
                return Container(
                  color: Colors.grey[300],
                  // Replace this with your actual image widget
                  child: Image.asset(
                    imagePaths[index], // Access the image path based on the index
                    fit: BoxFit.cover, // Adjust the fit as needed
                  ),
                );
              },
            ),
          ],
        ),
        ],
      ),
    ),
    );
  }
}
