import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nauapp_replica/Screens/CoursesScreen.dart';
import 'package:nauapp_replica/Screens/PaymentScreen.dart';
import 'package:nauapp_replica/Screens/ProfileScreen.dart';
import 'package:nauapp_replica/Screens/ResultScreen.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Column(
          children: [
                      Stack(
                        children: [
                        Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.indigo[900],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(50.0),
                            bottomRight: Radius.circular(50.0),
                          ), ), ),

                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: EdgeInsets.only(top: 150),
                                  height: 350,
                                  width: 300,
                                  child: Card(
                                    elevation: 10,
                                    color: Colors.white,

                                   child: Column(
                                     children: [
                                       Align(
                                         alignment: Alignment.topCenter,
                                         child: Container(
                                           margin: EdgeInsets.only(left:15,right: 15,top: 20),
                                           width: 300,
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                             children: [
                                               Icon(Icons.help,
                                                 color: Colors.indigo[900],size: 18,),

                                               Icon(Icons.notifications,
                                                 color: Colors.indigo[900],size: 18,)
                                             ],
                                           ),
                                         ),
                                       ),

                                       SizedBox(height: 14,),

                                       Container(
                                         child: Center(
                                           child: Text("Deborah Kosisochukwu Chukwukwe"
                                           "\nComputer Science"
                                               "\n2017474165",
                                           style: TextStyle(
                                             fontSize: 12,
                                             fontWeight: FontWeight.bold
                                           ),),
                                         ),
                                       ),
                                       SizedBox(height: 6,),

                                       Divider(
                                           thickness: 1
                                       ),

                                       InkWell(
                                         onTap: () {
                                           Navigator.push(
                                               context,
                                               MaterialPageRoute(builder: (context) =>ProfileScreen()),
                                             );
                                         },

                                         child: ListTile(
                                           leading: Icon(Icons.person),
                                           title: Text("Profile",style: TextStyle(
                                             color: Colors.indigo[900]
                                           ),),
                                           trailing: Icon(Icons.arrow_forward_ios),
                                         ),
                                       ),

                                       InkWell(
                                         onTap: () {
                                           Navigator.push(
                                             context,
                                             MaterialPageRoute(builder: (context) =>ResultScreen()),
                                           );
                                         },
                                         child: ListTile(
                                           leading: Icon(Icons.receipt_long_rounded),
                                           title: Text("Results",style: TextStyle(
                                               color: Colors.indigo[900]),),
                                           trailing: Icon(Icons.arrow_forward_ios),
                                         ),
                                       ),

                                       InkWell(
                                         onTap: () {
                                           Navigator.push(
                                             context,
                                             MaterialPageRoute(builder: (context) =>CoursesScreen()),
                                           );
                                         },
                                         child: ListTile(
                                           leading: Icon(Icons.library_books_rounded),
                                           title: Text("My Courses",style: TextStyle(
                                               color: Colors.indigo[900]),),
                                           trailing: Icon(Icons.arrow_forward_ios),
                                         ),
                                       ),

                                       InkWell(
                                         onTap: () {
                                           Navigator.push(
                                             context,
                                             MaterialPageRoute(builder: (context) =>PaymentScreen()),
                                           );
                                         },
                                         child: ListTile(
                                           leading: Icon(Icons.credit_card_rounded),
                                           title: Text("Payments",style: TextStyle(
                                               color: Colors.indigo[900]),),
                                           trailing: Icon(Icons.arrow_forward_ios),
                                         ),
                                       ),


                                     ],
                                   ),
                                    ) ,
                                  ),
                                ),
                          Positioned(
                            bottom: 300,
                            right: 132,
                            child: Container(
                              height: 100,
                                    width: 100,
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
                             ],
                      ),

                  SizedBox(height: 44,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 36),
                          height: 24,
                          width: 40,
                          decoration:BoxDecoration(
                            border: Border.all(color: Colors.grey,width: 1),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(3.0),
                            bottomRight: Radius.circular(3.0),
                            topLeft: Radius.circular(3.0),
                            topRight: Radius.circular(3.0)
                    ),
                          ),
                          child: Center(
                              child: Icon(Icons.arrow_back_rounded, color: Colors.grey,
                              size: 16,)),

                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 36),
                        height: 24,
                        width: 200,
                        decoration:BoxDecoration(
                          color: Colors.indigo[900],
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(3.0),
                              bottomRight: Radius.circular(3.0),
                              topLeft: Radius.circular(3.0),
                              topRight: Radius.circular(3.0)
                          ),
                        ),
                        child: Center(
                            child: Text("SAVE",
                            style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold
                            ),)),
                      ),
                    ],
                  ),
          ]
        )
      )
    );
  }
}
