import 'package:flutter/material.dart';

class viewRegisteredCoure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 30),
              child: Icon(Icons.image),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
              child: Icon(Icons.picture_as_pdf)),
        ],
      ),

      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Deborah Kosisochukwu Chukwukwe",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
                ),
            ),
          ),
          Container(
            child: Center(
              child: Text("2017474165",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),

          Container(
            child: Center(
              child: Text("2019/2020 course registration report",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),

          Container(
            child: Center(
              child: Text("10 Courses -> [ Total Credit Unit - 25 ]",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),

          SizedBox(height: 5,),
          Container(
            child: Center(
              child: Text("First Semester",
                style: TextStyle(
                    fontSize: 10,
                  color: Colors.orange
                ),),
            ),
          ),






        ]




      )

    );
  }
}
