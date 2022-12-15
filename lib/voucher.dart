import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/drawer.dart';

class Voucher extends StatelessWidget {
  const Voucher({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.orange,
        title: Text('Voucher', style: TextStyle(color: Colors.white)),
               
      ),
      
      body: Container(
        child: Center(
          child:
          Image(image: AssetImage("Images/OOPPSS!!.png"),)
        ),
        
           ),     

    );
  }
}