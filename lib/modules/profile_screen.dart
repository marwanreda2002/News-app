import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:news_app/modules/login_screen.dart';
import 'package:news_app/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

var img = "images/photo_2024-04-20_11-41-24.jpg";

class _ProfileScreenState extends State<ProfileScreen> {
  Uint8List? _image;

  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[900],
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const AlertDialog(
                title: Text(
                  'Founders',
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.bold),
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Marwan Reda Ahmed'),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Karim Abdelaziz'),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Omar Essam Fahmy '),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Mohamed Elbarawy'),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Rawda Mohamed"),
                    SizedBox(
                      height: 8,
                    ),
                    Text('Mai Mustafa'),
                  ],
                ),
              );
            },
          );
        },
        child: const Icon(
          Icons.question_mark_outlined,
        ),
      ),
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News"),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  _image != null
                      ? CircleAvatar(
                          radius: 80.0,
                          backgroundImage: MemoryImage(_image!),
                        )
                      : CircleAvatar(
                          backgroundImage: AssetImage(img),
                          radius: 80.0,
                        ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.orange),
                        child: IconButton(
                          onPressed: selectImage,
                          icon: Icon(
                            Icons.add_a_photo_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Text(
              "Name",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Marwan Reda Ahmed",
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text("E-mail"),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Ma*****5@gmail.comI",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text("Phone Number"),
            const SizedBox(
              height: 8,
            ),
            const Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                Text("01211681903",
                    style: TextStyle(
                        color: Colors.brown,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                ),

              ],
            ),
            // TextField(
            //   decoration: InputDecoration(
            //     labelText: "Name",
            //     labelStyle: TextStyle(
            //       fontSize: 20,
            //       color: Colors.black,
            //
            //     ),
            //     floatingLabelBehavior: FloatingLabelBehavior.always,
            //     hintText: "adasdasd",
            //     hintStyle: TextStyle(
            //         color: Colors.brown,
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold),
            //
            //   ),
            // ),
            // EditableTextField(),
            Expanded(
              child: Center(
                child: MaterialButton(
                  height: 50,
                  minWidth: 250,
                  color: Colors.grey[900],
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  child: const Text(
                    "LogOut",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
