import 'package:flutter/cupertino.dart';

class UIProviders with ChangeNotifier{
  double HomeTitle = 48;
  double screenTitles = 32;
  double homePhoto = 200;
  double subtext = 18;
  double screenPadding = 100;
  double menuTextUF = 36;
  double menuTextF = 38;


  void setFontSize(hTitle, screenTitle, hPhoto, sub, pad, mtUF){
    HomeTitle = hTitle;
    screenTitles = screenTitle;
    homePhoto = hPhoto;
    subtext = sub;
    screenPadding = pad;
    menuTextUF = mtUF;
    menuTextF = menuTextUF + 2;
    notifyListeners();
  }


}