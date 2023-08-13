import 'package:chatiee/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'chatpage.dart';
void main() {
  runApp(MainApp());
}
void something(){
  print("nothing");
}
class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              //first row

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Chat",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 30.0,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Icon(CupertinoIcons.chat_bubble),
                  ],
                ),
              ),

              //profile row

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      profile(
                          photo: AssetImage('people_images/ppl1.jpeg'),
                          rad: 45,name: "_mukil_arena",),
                      profile(
                          photo: AssetImage('people_images/ppl2.jpeg'),
                          rad: 45,name: "_itz_me_srijith",),
                      profile(
                          photo: AssetImage('people_images/ppl3.jpeg'),
                          rad: 45,name: "_kishore1007",),
                      profile(
                          photo: AssetImage('people_images/ppl4.jpeg'),
                          rad: 45,name: "_sudharsan",),
                      profile(
                          photo: AssetImage('people_images/ppl5.jpeg'),
                          rad: 45,name: "_leo_012",),
                      profile(
                          photo: AssetImage('people_images/ppl6.jpeg'),
                          rad: 45,name: "_bharath07",),
                      profile(
                          photo: AssetImage('people_images/ppl7.jpeg'),
                          rad: 45,name: "_h_e_m_a_n_t_h",),
                      profile(
                          photo: AssetImage('people_images/ppl8.jpeg'),
                          rad: 45,name: "_jotham",),
                      profile(
                          photo: AssetImage('people_images/ppl9.jpeg'),
                          rad: 45,name: "_inba",),
                      profile(
                          photo: AssetImage('people_images/ppl10.jpeg'),
                          rad: 45,name: "_madesh09",),
                    ],
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                      child: Text(
                        "Messages",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: 
                        
                       Column(
                          children: [
                            chatButton(img: AssetImage('people_images/ppl1.jpeg'),name: "_mukil_arena",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl2.jpeg'),name: "_itz_me_srijith",subt: "hello how are you?",time: "3:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl3.jpeg'),name: "_kishore1007",subt: "hello how are you?",time: "12:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl4.jpeg'),name: "_sudharsan",subt: "hello how are you?",time: "10:30 AM",),
                      chatButton(img: AssetImage('people_images/ppl5.jpeg'),name: "_leo_012",subt: "hello how are you?",time: "9:20 AM",),
                      chatButton(img: AssetImage('people_images/ppl6.jpeg'),name: "_bharath07",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl7.jpeg'),name: "_h_e_m_a_n_t_h",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl8.jpeg'),name: "_jotham",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl9.jpeg'),name: "_inba",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl10.jpeg'),name: "_madesh09",subt: "hello how are you?",time: "9:30 PM",),
                
                          ],
                        ),
                        
                      
                ),
              ),
                              

            ],
          ),
        ),
      ),
    );
  }
}

class chatButton extends StatelessWidget {
  final AssetImage img;
  final String name;
  final String subt;
  final String time;

  chatButton({required this.img,required this.name,required this.subt, required this.time});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => chatpage(name: name,img:img)),
        );;
        },
        style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 245, 245, 245),elevation: 0,shadowColor: Colors.white),
        child: Row(
          children: [
            profilerow(photo: img, rad: 35),
            Expanded(
              flex:2,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 3, 3, 3),
                child: Column(
                  children: [
                    Text("$name",style: ktextlabel,),
                    SizedBox(height: 15,),
                    Text("$subt",style: kbottomtextlable,),
                  ],
                ),
              ),
            ),
            
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("$time",style: kbottomtextlable,),
                  ],
                  
                ),
              ),
            ),
          
          
          ],),
      ),
    );
  }
}

class profile extends StatelessWidget {
  final AssetImage photo;
  final double rad;
  final String name;
  profile({required this.photo, required this.rad,required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 11, 9, 11),
      child: GestureDetector(
        onTap: () {
          something();
        },
        child: Column(

          children: [Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Set the shadow color
                  blurRadius: 7.0, // Set the blur radius for the shadow
                  spreadRadius: 3.0, // Set the spread radius for the shadow
                  offset: Offset(0, 3), // Set the offset for the shadow
                ),
              ],
            ),
            child: CircleAvatar(
              radius: rad,
              backgroundImage: photo,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Text("$name",style: kbottomtextlable,),
          ),],
        ),
      ),
    );
  }
}

class profilerow extends StatelessWidget {
  final AssetImage photo;
  final double rad;
  
  profilerow({required this.photo, required this.rad});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9, 11, 9, 11),
      child: GestureDetector(
        onTap: () {
          something();
        },
        child: Column(

          children: [Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey, // Set the shadow color
                  blurRadius: 7.0, // Set the blur radius for the shadow
                  spreadRadius: 3.0, // Set the spread radius for the shadow
                  offset: Offset(0, 3), // Set the offset for the shadow
                ),
              ],
            ),
            child: CircleAvatar(
              radius: rad,
              backgroundImage: photo,
            ),
          ),
          
          ],
        ),
      ),
    );
  }
}

/*chatButton(img: AssetImage('people_images/ppl1.jpeg'),name: "_mukil_arena",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl2.jpeg'),name: "_itz_me_srijith",subt: "hello how are you?",time: "3:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl3.jpeg'),name: "_kishore1007",subt: "hello how are you?",time: "12:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl4.jpeg'),name: "_sudharsan",subt: "hello how are you?",time: "10:30 AM",),
                      chatButton(img: AssetImage('people_images/ppl5.jpeg'),name: "_leo_012",subt: "hello how are you?",time: "9:20 AM",),
                      chatButton(img: AssetImage('people_images/ppl6.jpeg'),name: "_bharath07",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl7.jpeg'),name: "_h_e_m_a_n_t_h",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl8.jpeg'),name: "_jotham",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl9.jpeg'),name: "_inba",subt: "hello how are you?",time: "9:30 PM",),
                      chatButton(img: AssetImage('people_images/ppl10.jpeg'),name: "_madesh09",subt: "hello how are you?",time: "9:30 PM",),
                      */