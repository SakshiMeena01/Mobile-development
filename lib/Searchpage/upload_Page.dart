import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mychat_app/Searchpage/Tags_page.dart';
import 'package:mychat_app/Searchpage/chatPage.dart';
import 'package:mychat_app/Searchpage/feed_page.dart';
import 'package:mychat_app/accountpage/account_Page.dart';

void main() {
  runApp(const MaterialApp(
    home: upload_Page(),
    debugShowCheckedModeBanner: false,
  ));
}

class upload_Page extends StatefulWidget {
  const upload_Page({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<upload_Page> with SingleTickerProviderStateMixin {
  String _image = 'https://i.pinimg.com/564x/2a/9f/89/2a9f893baaea58b4da1b798f4d2b2772.jpg';
  late AnimationController loadingController;

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['png', 'jpg', 'jpeg']
    );

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() { setState(() {}); });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 100,),
            Image.network(_image, width: 300,),
            const SizedBox(height: 50,),
            Text('Upload your file', style: TextStyle(fontSize: 25, color: Colors.grey.shade800, fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Text('File should be jpg, png', style: TextStyle(fontSize: 15, color: Colors.grey.shade500),),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: selectFile,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                  child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(10),
                    dashPattern: const [10, 4],
                    strokeCap: StrokeCap.round,
                    color: Colors.blue.shade400,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Icon(Iconsax.folder_open, color: Colors.blue, size: 40,),
                          SizedBox(height: 15,),
                          Text('Select your file', style: TextStyle(fontSize: 15, color: Colors.blue),),
                        ],
                      ),
                    ),
                  )
              ),
            ),
            _platformFile != null
                ? Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Selected File',
                      style: TextStyle(color: Colors.grey.shade400, fontSize: 15, ),),
                    const SizedBox(height: 10,),
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(0, 1),
                                blurRadius: 3,
                                spreadRadius: 2,
                              )
                            ]
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.file(_file!, width: 70,)
                            ),
                            const SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_platformFile!.name,
                                    style: const TextStyle(fontSize: 13, color: Colors.black),),
                                  const SizedBox(height: 5,),
                                  Text('${(_platformFile!.size / 1024).ceil()} KB',
                                    style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                                  ),
                                  const SizedBox(height: 5,),
                                  Container(
                                      height: 5,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.blue.shade50,
                                      ),
                                      child: LinearProgressIndicator(
                                        value: loadingController.value,
                                      )
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),
                          ],
                        )
                    ),
                    const SizedBox(height: 20,),

                  ],
                ))
                : Container(),
            const SizedBox(height: 150,),
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


