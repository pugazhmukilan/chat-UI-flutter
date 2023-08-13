import 'package:chatiee/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class chatpage extends StatelessWidget {
  final AssetImage img;
  final String name;

  chatpage({required this.name, required this.img});
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          
          body: Container(

            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('nature_images/back1.jpeg'))),
            child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 3, 0),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.black,
                            size: 25,
                          ),
                          onPressed: () {
                            // Add your favorite action here
                            Navigator.pop(contex);
                          },
                        ),
                      ),
                      profilerow(photo: img, rad: 20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                        child: Text(
                          "$name",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ]),
              ),
            ],
                  ),
          ),),);
  }
}
