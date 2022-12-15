import 'package:flutter/material.dart';
import 'package:flutter_application_uts/drawer.dart';


class Pengaturan extends StatelessWidget {
  const Pengaturan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Pengaturan', style: TextStyle(color: Colors.white)),
               
      ),
      
      body: riw(),
      );
    
  }
}

class riw extends StatelessWidget {
  const riw({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(
        children: const [
          ikon()
        ]
        
      )
    );
  }


}

class ikon extends StatelessWidget {
  const ikon({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

      Row(
          children: [
            Icon(Icons.key,
                size: 25,
              color: Colors.orangeAccent,), 
            Text('Kata Sandi dan Keamanan'), 
          ],
        ), 

        Divider(),
        
      
        Row(
          children: [
             Icon(Icons.app_settings_alt,
              size: 25,
              color: Colors.orangeAccent,),
              Text('Aplikasi'),
          ],
        ),
        Divider(),

        Row(
          children: [
            Icon(Icons.place,
            size: 25,
            color: Colors.orangeAccent,),
            Text('Irformasi dan Lokasi'),
          ],
        ), 

        Divider(),      
       
        
      
      ],
      ),


    );
  }
}