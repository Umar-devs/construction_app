import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  void toastMessage(message) {
    Fluttertoast.showToast(msg: message, gravity: ToastGravity.BOTTOM,);
  }
}
