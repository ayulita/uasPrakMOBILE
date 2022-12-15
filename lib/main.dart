import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/drawer.dart';
import 'package:flutter_application_uts/homepage.dart';
import 'package:flutter_application_uts/login.dart';
import 'package:flutter_application_uts/profil.dart';
import 'package:flutter_application_uts/riwayat.dart';
import 'package:flutter_application_uts/page/detail.dart';

void main(List<String> args){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginp(),
    );
  }
}
