import 'package:flutter/widgets.dart';

class LangProvider   extends ChangeNotifier {

bool _isItemSelected=false;
int _isSelectedItemIndex = 0;

int getItemIndex(){
 return _isSelectedItemIndex;
}

void setItemIndex(value){
    _isSelectedItemIndex=value;
 
}

 void isItemSelected(value){
   _isItemSelected=value;
   notifyListeners();
  }

    bool getItemSelected(){
      return _isItemSelected;
    }

  void langChanged() {
    notifyListeners();
  }
}
