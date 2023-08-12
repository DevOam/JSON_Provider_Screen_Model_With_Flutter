import 'package:flutter/material.dart';
class M extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("liste"),
        actions: [PopupMenuButton(itemBuilder:(_)=> [PopupMenuItem(child: Text("contact")),PopupMenuItem(child: Text("appel"))])],
      ),
      body: Center(
        child: Column (children: [
          Text("Message"),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'taper votre message',


          ),

        )


        ],),



      ),





    );
  }
}
