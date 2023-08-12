import 'package:flutter/material.dart';

import 'M.dart';
class Menu extends StatelessWidget {
  void message(BuildContext c){
    Navigator.push(c, MaterialPageRoute(builder: (c)=>M()));
    
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("liste drawer"),
          ),
          ListTile(
            title:Text("message") ,
            leading: Icon(Icons.message),
            onTap: ()=>message(context),
          ),
          ListTile(
            title:Text("Parameter") ,
            leading: Icon(Icons.settings),
            onTap: ()=>{},
          )
        ],


      ),


    );
  }
}
