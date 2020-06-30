import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{

  String amakakeText = "amakakeさん";

  void  cahngeamakakeText() {
    amakakeText = "amakakeさんじゃないよ";
    notifyListeners();
  }
}