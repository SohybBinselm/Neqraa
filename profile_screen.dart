import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static final String routeName = "/profilescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 40,
        ),
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        backgroundColor: Color(0xFFFBC02D),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, top: 20),
                  child: Material(
                    borderRadius: BorderRadius.circular(13),
                    elevation: 2,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Color(0xFFFBC02D),
                        size: 30,
                      ),
                      onPressed: null,
                    ),
                  ),
                ),
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        'images/person.png',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110.0, top: 120),
                      child: Material(
                        borderRadius: BorderRadius.circular(50.0),
                        elevation: 1.5,
                        child: IconButton(
                          iconSize: 28,
                          icon: Icon(
                            Icons.photo_camera,
                            color: Color(0xFFFBC02D),
                          ),
                          onPressed: null,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Ali Eliwa",
                style: TextStyle(color: Color(0xFF575A89), fontSize: 25),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(thickness: 1.5,),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("Email",
                    style: TextStyle(
                      color: Color(0xFFFBC02D),
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("ali@gmail.com",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF575A89),
                      ),),
                  ),
                  Divider(thickness: 1.5,),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("phone",
                      style: TextStyle(
                        color: Color(0xFFFBC02D),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("55555555555555",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF575A89),
                      ),),
                  ),
                  Divider(thickness: 1.5,),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("Governorate",
                      style: TextStyle(
                        color: Color(0xFFFBC02D),
                      ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("Sharkia",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color(0xFF575A89),
                      ),),
                  ),
                  Divider(thickness: 1.5,),
                  Padding(
                    padding: const EdgeInsets.only(left:26.0),
                    child: Text("ID photo",
                      style: TextStyle(
                        color: Color(0xFFFBC02D),
                      ),),
                  ),
                ],
              ),



            ],
          ),
        ),
      ),
    );
  }
}
