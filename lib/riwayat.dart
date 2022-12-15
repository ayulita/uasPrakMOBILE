import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/drawer.dart';

class Riwayat extends StatelessWidget {
  const Riwayat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
       backgroundColor: Colors.orange,
        title: Text('Riwayat', style: TextStyle(color: Colors.white)),
               
      ),
      
      body: Center(
        
        child: Container(
          
          child: ListView(
            children: <Widget>[
              
              griwayat(gbr: "Images/soto.jpg", nama: "Soto"),
              griwayat(gbr: "Images/rendang.jpg", nama: "Rendang"),
              griwayat(gbr: "Images/sate.jpg", nama: "Sate"),
              griwayat(gbr: "Images/seblak.jpg", nama: "Seblak"),
              griwayat(gbr: "Images/nasigoreng.jpg", nama: "Nasi Goreng"),
              griwayat(gbr: "Images/bakso.jpeg", nama: "Bakso"),

            ],

          ),
          
        ),
        ),

      
    );
  }
}

class griwayat extends StatelessWidget {
  
  final String gbr;
  final String nama;
  griwayat({required this.gbr, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
            color:  Color.fromRGBO(255, 231, 182, 7.0),),
            child: Center(
              child: Row(
                children: <Widget>[
                  
                  Image(image: AssetImage(gbr),
                   width: 200, color: Colors.grey, colorBlendMode: BlendMode.hue, ),

                  SizedBox(width: 20,),

                  Text(nama, 
                  style: TextStyle(fontSize: 20.0),)
                ]),
                ),
    );
  }
}