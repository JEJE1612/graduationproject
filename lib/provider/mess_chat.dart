import 'package:flutter/material.dart';
import 'package:graduationproject/models/item.dart';



class ChatMes with ChangeNotifier {


  List selectedSubject = [];

  add(Item product) {

    selectedSubject.add(product);
    notifyListeners();
  }
  delete(Item product) {
    selectedSubject.remove(product);


    notifyListeners();
  }
}