import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sms2email_v1_1/cubit/bloc_observer.dart';
import 'package:sms2email_v1_1/logic/documents_dir.dart';
import 'package:sms2email_v1_1/pages/home.dart';
import 'logic/permission.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver(); //BLOC OBSERVER
  runApp(const MainApp());
  Permissions().getStoragePermission(); //ASK THE USER FOR STORAGE PERMISSION
  DocumentDirGetter().localPath;
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: true,
    );
  }
}
