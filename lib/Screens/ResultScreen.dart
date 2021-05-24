import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("2017/2018",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10,),
          Text("2018/2019",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
          Divider(
            thickness:1,

          ),
          SizedBox(height: 10,),
          Text("2019/2020",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),)
        ],
      ),
    );
  }
}
