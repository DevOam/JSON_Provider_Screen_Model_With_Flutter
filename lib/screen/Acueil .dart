import 'package:flutter/material.dart';

import 'Menu.dart';
class Acueil  extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("liste"),
        actions: [PopupMenuButton(itemBuilder:(_)=> [PopupMenuItem(child: Text("contact")),PopupMenuItem(child: Text("appel"))])],
      ),
      body: Center(child:Text("body")),
      drawer: Menu(),



    );
  }
}
