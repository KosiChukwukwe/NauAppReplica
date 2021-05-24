import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payments")
      ),
      body:Column(
        children: [
                  SizedBox(height: 20,),
                ListTile(
                leading: Icon(Icons.bar_chart),
                title: Text("Generate Payment RRR ",
                style: TextStyle(
                fontWeight: FontWeight.bold
                ),),
                ),
                SizedBox(height: 10,),
                Divider(
                thickness: 1,
                ),
                ListTile(
                leading: Icon(Icons.check_circle),
                title: Text("Verify RRR Payment",
                style: TextStyle(
                fontWeight: FontWeight.bold
                ),),
                ),

                SizedBox(height: 10,),
                Divider(
                thickness: 1,
                ),
                ListTile(
                leading: Icon(Icons.credit_card_rounded),
                title: Text("Pay RRR online",
                style: TextStyle(
                fontWeight: FontWeight.bold
                ),),
                ),
                ],
    )

    );
  }
}
