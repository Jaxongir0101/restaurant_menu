import 'package:flutter/foundation.dart';

class LangProider extends ChangeNotifier{
  void langChanged(){
    notifyListeners();
  }
}