import 'package:flutter/material.dart';

class Screen25 extends StatelessWidget {

  static final String routeName = "/screen25";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: Icon(Icons.arrow_back,size: 30,color: Color(0xFFFBC02D),),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: 400,
            height: 244,
            child: Image.asset('images/screen25.png'),
          ),
          SizedBox(height: 15,),
          Container(
            width: 300,
            child: Text('Your request to borrow "book name" has been sent to "library name" .',
            style: TextStyle(
              height: 1.5,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Color(0xFF3F3D56),
            ),),
          ),
          SizedBox(height: 15,),
          Container(
            width: 300,
            child: Text('After sending the approval, you\'ll be able to borrow the book in 48 hour.',
              style: TextStyle(
                  height: 1.5,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3F3D56),
              ),),
          ),
          SizedBox(height: 20,),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Container(
                width: 150,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Color(0xfffac02e)),
                child: FlatButton(
                  child: Text(
                    "Back To Home",
                    style: TextStyle(
                        color: Colors.white70,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                  onPressed: (){
                    //NAVIGATION SECTION ###########################
                  },
                ),
              ))
        ],
      ),
    );
  }
}
