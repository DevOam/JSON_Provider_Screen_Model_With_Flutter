import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tp1/model/Voiture.dart';
import 'package:http/http.dart' as http;
import 'package:tp1/model/album.dart';

class JsonClass extends StatefulWidget {
  @override
  State<JsonClass> createState() => _JsonClassState();
}

class _JsonClassState extends State<JsonClass> {
  @override
  static List<Voiture> V = [];
  static Iterable L = [];
  static List<Album> P = [];

  Future<String> loadJson() async {
    return await rootBundle.loadString('lib/provider/F.json');
  }

  Future<void> afficherData() async {
    String data = await loadJson();

    L = json.decode(data);
    //Voiture.fromJson(jsonDecode(data)) ;
    //print(Voiture.fromJson(json.decode(data)));

    ///List <Voiture> L= Voiture.fromJson(json.decodee(data));
    setState(() {
      V = List<Voiture>.from(L.map((e) => Voiture.fromJson(e)));
      print(V[1].marque);
    });


    /*Voiture V=Voiture.fromJson(jsonDecode(data));
      if(V.matr=="12AR"){
        print(V.marque);

      }*/
  }

  /// a distanceL
  Future<void> loadJsonhttp() async {
    final rs = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/albums/"));

    setState(() {
      L = json.decode(rs.body);
      //print(L.toString());
      P = List<Album>.from(L.map((e) => Album.fromJson(e)));

      print(P[4].title);
    });
  }

  Widget build(BuildContext context) {
    afficherData();
    //loadJsonhttp();

    return Scaffold(
      appBar: AppBar(
        title: Text('Voitures'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(V[1].marque),
            Text(V[1].model.toString())

          ],
        ),
      ),
    );
  }
}
