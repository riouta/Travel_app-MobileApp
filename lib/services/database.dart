//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ required this.uid });

  //collection reference
  final CollectionReference travelCollection = FirebaseFirestore.instance.collection('travels');

  Future updateUserData(String adress, int price, String openinghours) async {
    return await travelCollection.doc(uid).set({
      'adress': adress,
      'price': price,
      'openinghours': openinghours,
    });
  }
}