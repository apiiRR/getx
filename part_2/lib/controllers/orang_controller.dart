import 'package:get/get.dart';

import '../models/orang.dart';

class OrangController extends GetxController {
  var orang = Orang();

  void changeUpperCase() {
    orang.nama.value = orang.nama.value.toUpperCase();
  }
}
