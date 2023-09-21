// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DocumentDirGetter extends ChangeNotifier{

  Future<String> get localPath async {
  final directory = await getApplicationDocumentsDirectory();
  //print(directory.path);
  return directory.path;
  }
}