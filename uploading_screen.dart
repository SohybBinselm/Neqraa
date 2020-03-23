import 'package:flutter/material.dart';

class UploadingScreen extends StatelessWidget {
  static final String routeName = "/uploadingscreen";

  final _formKey = GlobalKey<FormState>();

  final Map<String, Object> _authData = {
    'bookname': '',
    'authorname': '',
    'numberofcopies': '',
  };

  void _submit(context) {
    if (!_formKey.currentState.validate()) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Missing Data'),
              content: Text('Fill in the required fields !'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    } else {
      _formKey.currentState.save();
      print('$_authData');
      //NAVIGATION + LOGIC SECTION ###########################################################
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          size: 40,
        ),
        title: Text(
          "Add Book",
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
              SizedBox(
                height: 36,
              ),
              Material(
                elevation: 15.0,
                borderRadius: BorderRadius.all(Radius.circular(100.0)),

                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.transparent,
                  child: Image.asset(
                    'images/camera.png',
                    height: 85,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 15,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 90),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter book name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _authData['bookname'] = value;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  labelText: "Book name",
                                  labelStyle: TextStyle(color: Colors.blueGrey),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 25)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 90),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter author name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _authData['authorname'] = value;
                              },
                              textAlign: TextAlign.center,

                              decoration: InputDecoration(
                                  labelText: "Author name",
                                  labelStyle: TextStyle(color: Colors.blueGrey),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 25)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 90),
                          child: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextFormField(
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Enter number of copies';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _authData['numberofcopies'] = value;
                              },
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  labelText: "Number of copies",
                                  labelStyle: TextStyle(color: Colors.blueGrey),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(horizontal: 25)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: Container(
                              width: 120,
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  color: Color(0xfffac02e)),
                              child: FlatButton(
                                child: Text(
                                  "Add",
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                onPressed: (){
                                  _submit(context);
                                },
                              ),
                            )),
                      ],
                    ),
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
