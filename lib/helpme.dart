import 'package:flutter/material.dart';
import 'package:flutter_application_uts/drawer.dart';

class Helpme extends StatelessWidget {
  const Helpme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Bantuan dan Saran', style: TextStyle(color: Colors.white)),
               
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
          
          Text("Referensi Bantuan Terpopuler", style: TextStyle(fontSize: 20),selectionColor: Color.fromARGB(255, 104, 103, 103),),
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
            Icon(Icons.person,
                size: 25,
              color: Colors.orangeAccent,), 
            Text('Menghapus atau menonaktifkan akun'), 
          ],
        ), 

        Divider(),
        
      
        Row(
          children: [
             Icon(Icons.apps_outage,
              size: 25,
              color: Colors.orangeAccent,),
              Text('Tidak dapat memesan menu'),
          ],
        ),
        Divider(),

        Row(
          children: [
            Icon(Icons.place,
            size: 25,
            color: Colors.orangeAccent,),
            Text('Alamat tidak dikenali'),
          ],
        ), 

        Divider(),      
       
        Row(
          children: [
            Icon(Icons.message,
            size: 25,
            color: Colors.orange,),
            Text('Kirim masukkan'),
          ],
        ),       
        
        Divider(),
      
      ],
      ),


    );
  }
}