import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget {
  @override
  HomePage_State createState() => HomePage_State();
}

class HomePage_State extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OPENCV FILTER"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(children: [
          Container(
            color: Colors.green,
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton.icon(
                  onPressed: null, 
                  icon: Icon(Icons.add_a_photo), 
                  label: Text("AddPhoto")),
                FlatButton.icon(
                  onPressed: null,
                  icon: Icon(Icons.cancel_outlined), 
                  label: Text("Cancelar"))
              ],
            ),
          ),
          Expanded(
            child:Container(
            color: Colors.red,
            width: double.maxFinite,
            height: 80,
          ),),
          Container(
            color: Colors.blue,
            width: double.maxFinite,
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 7.0),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 7.0),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 7.0),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 7.0),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 7.0),
                ),
            ],
            ),
          ),
        ],),
      ),
    );
  }
}