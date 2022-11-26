import 'package:flutter/cupertino.dart';

class UIProviders with ChangeNotifier{
  double HomeTitle = 48;
  double screenTitles = 32;
  double homePhoto = 200;
  double subtext = 18;
  double screenPadding = 100;
  double menuTextUF = 36;
  double menuTextF = 38;
  double socialConWidth = 400;
  double socialConHeight = 60;
  double iconScale = 5;
  double space = 30;
  double progressWidth = 350;
  double progessHeight = 10;
  double skillContainer = 600;
  double projCardSize = 200;
  double projTitle = 16;
  double projSub = 12;
  double expCardWidth = 181;
  double expCardheight = 261;
  double expMultiplier = 1;


  void setFontSize(hTitle, screenTitle, hPhoto, sub, pad, mtUF, scW, scH, iS, spc, pW, pH, sC, pCS, pT, pS, ECW, ECH, EW){
    HomeTitle = hTitle;
    screenTitles = screenTitle;
    homePhoto = hPhoto;
    subtext = sub;
    screenPadding = pad;
    menuTextUF = mtUF;
    menuTextF = menuTextUF + 2;
    socialConWidth = scW;
    socialConHeight = scH;
    iconScale = iS;
    space = spc;
    progressWidth = pW;
    progessHeight = pH;
    skillContainer = sC;
    projCardSize = pCS;
    projTitle = pT;
    projSub = pS;
    expCardWidth = ECW;
    expCardheight = ECH;
    expMultiplier = EW;
    notifyListeners();
  }


}