// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';

class Permissions extends ChangeNotifier {
  bool _permissionGranted = false;
  bool get permissionGranted => _permissionGranted;

  // Future getStoragePermission() async {
  //   if (await Permission.storage.request().isGranted) {
  //     _permissionGranted = true;
  //     notifyListeners();
  //   }
  // }

  Future getStoragePermission() async {
    if (await Permission.storage.request().isGranted) {
      _permissionGranted = true;
      notifyListeners();
    }
  }

}