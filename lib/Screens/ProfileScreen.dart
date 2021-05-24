import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2017474165"),
      ),
      body: Column(
        children: [
          Align(
           alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 20),
        height: 70,
        width: 70,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow:  [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),],
            image: DecorationImage(
                image: AssetImage('assets/images/profile_pic.png'),
                fit: BoxFit.fitHeight
            ),
        ),
            ),
          ),
          SizedBox(height: 10,),
          Center(child: Text("Chukwukwe Deborah Kosisochukwu",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),)),



          ListTile(
            title: Text("faculty:",
            style: TextStyle(
              fontSize: 10,
              color: Colors.indigo[900]
            ),),
            subtitle: Text("Physical Science",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          ListTile(
            title: Text("department:",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.indigo[900]
              ),),
            subtitle: Text("Computer Science",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),),
          ),
          ListTile(
            title: Text("program:",
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.indigo[900]
              ),),
            subtitle: Text("Regular",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
          ),

          Text("Account Recovery Channels",
          style: TextStyle(
            color: Colors.indigo[900],
            fontSize: 14
          ),),

          ListTile(
            title: Text("phone",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.indigo[900]
              ),),
            subtitle: Text("+2348058694091",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            trailing: Icon(Icons.edit,
            color: Colors.black,),
          ),
          ListTile(
            title: Text("email",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.indigo[900]
              ),),
            subtitle: Text("deborahchukwukwe@yahoo.com",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            trailing: Icon(Icons.edit,
              color: Colors.black,),
          )
         ]
      ),
    );
  }
}
