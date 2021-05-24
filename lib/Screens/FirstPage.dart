import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:nauapp_replica/Screens/MainActivity.dart';
import 'package:nauapp_replica/Services/test_response.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final Color color = Colors.black;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
       appBar: AppBar(
         backgroundColor: Colors.indigo[900],

               title: Center(
                 child: Text(
                      "NAU"
                       ),
                  ),
       ),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        margin: EdgeInsets.only(left: 50, right: 50, top: 40, bottom: 20),

        child: Column(

         children: [
           Image.asset("assets/images/nau_logo.png",
           height: 70,
           width: 70,
           fit: BoxFit.contain,),

           SizedBox(height: 30,),

           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: "Username"
             ),
           ),

           SizedBox(height: 20,),

           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: "Password",
               suffixIcon: Icon(Icons.remove_red_eye_outlined,
               color: Colors.blueGrey,)
           )
           ),

           SizedBox(height: 40,),
           GestureDetector(
             onTap: () async{
               setState(() {
                 isLoading = true;
               });


               bool isSuccessful = await doLogin();

               if(isSuccessful){
                 setState(() {
                   isLoading = false;
                 });

                 Navigator.pushReplacement(
                   context,
                   MaterialPageRoute(builder: (context) =>MainActivity()),
                 );
               }else{
                 print('not succesfful');
               }

             },
             child: Container(
               width: MediaQuery.of(context).size.width,
               height: 40,
               color: Colors.indigo[900],

               child: Padding(
                 padding: EdgeInsets.only(left:30.0, right: 10),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("LOGIN",
                     style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold,
                       fontSize: 20
                     ),),

                    isLoading
                     ?
                    CircularProgressIndicator(
                      valueColor:AlwaysStoppedAnimation<Color>(Colors.white),
                    )
                        :
                    Icon(Icons.arrow_forward_ios,
                      color: Colors.white,)
                   ],
                 ),
               ),
             ),
           ),

           SizedBox(height: 10,),
           Text("Forgot Password?")
         ],
        ),
      ),
    );
  }

  Future<bool> doLogin() async{
    bool success = false;
    try {
      Response response = await Dio().get(
        'https://jsonplaceholder.typicode.com/todos/1'
      );
      TestResponse testResponse = TestResponse.fromJson(response.data);
      print('user id is ${testResponse.userId} and title is ${testResponse.title}');
      success = true;
    } catch (e) {
      success = false;
      print(e);
    }
    return success;
  }

  Widget decideLoadingLayout(){
    if(isLoading){
      return CircularProgressIndicator();
    }
    return Icon(Icons.arrow_forward_ios, color: Colors.white,);
  }
}


