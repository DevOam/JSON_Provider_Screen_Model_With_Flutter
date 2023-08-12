import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Voiture {
  final String matr;
  final String marque;
  final int  model;

  const Voiture({
    required this.matr,required this.marque, required this.model
  });

  @override String toString() {
    // TODO: implement toString
    return " matriquel :$matr ,marque :$marque , model :$model";
  }

  factory Voiture.fromJson(Map<String,dynamic> data){
    return Voiture(matr: data["matr"], marque: data["marque"], model: data["model"]);
  }
}