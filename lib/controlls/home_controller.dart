import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Homecontroller extends GetxController implements GetxService {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;




  void selectedCard(int index){
_currentIndex=index;
update();
}
}