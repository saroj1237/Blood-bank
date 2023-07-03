import 'package:flutter_easyloading/flutter_easyloading.dart';

showEasyLoading() {
  EasyLoading.show(dismissOnTap: false, maskType: EasyLoadingMaskType.black);
}

hideEasyLoading(){
   EasyLoading.dismiss();
}