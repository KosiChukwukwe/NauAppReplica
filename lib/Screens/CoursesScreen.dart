import 'package:flutter/material.dart';
import 'package:nauapp_replica/CourseFolder/ViewRegisterCourse.dart';

class CoursesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text("My Courses"),
    ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          ListTile(
            leading: Icon(Icons.playlist_add_rounded),
            title: Text("Register Courses",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10,),
          Divider(
            thickness: 1,
          ),
         ListTile(
          leading: Icon(Icons.delete_forever),
          title: Text("Delete Registered Courses",
          style: TextStyle(
              fontWeight: FontWeight.bold
          ),),
      ),

          SizedBox(height: 10,),
          Divider(
            thickness: 1,
          ),
          InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>viewRegisteredCoure()),
                );
              },
            child: ListTile(
              leading: Icon(Icons.playlist_add_check_rounded),
              title: Text("View Registered Courses",
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ),),
            ),
          ),
        ],
      ),
    );
  }
}
