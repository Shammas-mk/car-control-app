import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isRightDoorLock = true;
  bool isLeftDoorLock = true;
  bool isBonnetLock = true;
  bool isDickyLock = true;

  void updateRightDoorLock() {
    isRightDoorLock = !isRightDoorLock;
    notifyListeners();
  }

  void updateLeftDoorLock() {
    isLeftDoorLock = !isLeftDoorLock;
    notifyListeners();
  }

  void updateBonnetLock() {
    isBonnetLock = !isBonnetLock;
    notifyListeners();
  }

  void updateDickyLock() {
    isDickyLock = !isDickyLock;
    notifyListeners();
  }

  int selectedBotonTab = 0;

  void onBottomNavTabChange(int index) {
    selectedBotonTab = index;
    notifyListeners();
  }

  bool isCoolSelected = true;

  void updateCoolSelectedTab() {
    isCoolSelected = !isCoolSelected;
    notifyListeners();
  }

  bool isShowTyres = false;

  void showTyresController(int index) {
    if (selectedBotonTab != 3 && index == 3) {
      Future.delayed(Duration(milliseconds: 400), () {
        isShowTyres = true;
        notifyListeners();
      });
    } else
      isShowTyres = false;
    notifyListeners();
  }

  bool isShowTyreStatus = false;

  void showTyreStatusController(int index) {
    if (selectedBotonTab != 3 && index == 3) {
      Future.delayed(Duration(milliseconds: 400), () {
        isShowTyreStatus = true;
        notifyListeners();
      });
    } else
      Future.delayed(Duration(milliseconds: 800), () {
        isShowTyreStatus = false;
        notifyListeners();
      });
  }

  int level = 18;
  int? insideLevel;
  int? updatedinsideLevel;
  int outside = 35;

  void insideLevelvalue() {
    insideLevel = level;
    print("this is the valu in insideLevelvalue $insideLevel");
    notifyListeners();
  }

  void updateLevel() async {
    insideLevelvalue();
    updatedinsideLevelvalue();
    notifyListeners();
  }

  void updatedinsideLevelvalue() async {
    await Future.delayed(Duration(seconds: 7), () {
      updatedinsideLevel = level;
      print("$updatedinsideLevel");
    });
    notifyListeners();
  }
}
