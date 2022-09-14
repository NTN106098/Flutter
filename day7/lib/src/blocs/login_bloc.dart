import 'dart:async';

import 'package:day7/src/validators/validations.dart';

class LoginBloc {
  // sử dụng Stream để quản lý dữ liệu
  // Stream dữ liệu ouput dữ liệu đầu ra

  final StreamController _userController = new StreamController();
  final StreamController _passController = new StreamController();

  Stream get userStream => _userController.stream;
  Stream get passStream => _passController.stream;

  bool isValidtionInfo(String username, String pass) {
    if (!Validations.isValidationUser(username)) {
      _userController.sink.addError("Tai khoan khong hop le");
      return false;
    }
    _userController.sink.add("OK");
    if (!Validations.isValidationPass(pass)) {
      _passController.sink.addError("Mat khau phải du 6 ky tu");
      return false;
    }

    _passController.sink.add("OK");
    return true;
  }

  // xử lý tính hợp lệ trên màn hình
  void dispose() {
    _userController.close();
    _passController.close();
  }
  // Sink la input dữ liệu đầu vào
}
