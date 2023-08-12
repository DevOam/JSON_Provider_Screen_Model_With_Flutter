import 'package:flutter/material.dart';
import 'package:tp1/screen/Acueil .dart';
import 'package:tp1/screen/M.dart ';
import 'package:tp1/screen/Operation.dart';
import 'package:tp1/screen/JsonClass.dart';

Future<void> afficherSecond(int s)async {
  for(var i=0; i<=s;i++){
    await Future.delayed(Duration(seconds: 5),()=>{
      print(i)});
  }
}

void main() {
  //runApp(s() ) ;
  //afficherSecond(5);
  runApp(js());

}

class s extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcul",
      home: Operation(), //Text("page 1") ,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes:{} ,



    );
  }

}



class js extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List Json",
      home: JsonClass(), //Text("page 1") ,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes:{} ,



    );
  }

}
class f1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "bienvenu",
      home: Acueil(), //Text("page 1") ,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      routes:{} ,



    );
  }

}