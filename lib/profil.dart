import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/drawer.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Colors.orange,
        title: Text('Profil', style: TextStyle(color: Colors.white)),
               
      ),

      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [             
              Color.fromRGBO(255, 191, 60, 1.0),
              Color.fromRGBO(255, 231, 182, 1.0),
            ]
              ), 
            ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            SizedBox(height:50,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [ 
                  
                  CircleAvatar(backgroundImage: AssetImage("Images/profil.jpg"),
                  radius: 70,)
                  
                ]
                ),
              ),  
              Container(
                width: 250,
                height: 220,
                decoration: BoxDecoration(
                  color: Color.fromARGB(71, 255, 255, 255),
                  borderRadius: BorderRadius.circular(30),                                 
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget> [
                    Container(
                      padding: EdgeInsets.all(20),
                      child: Text("Ayu Litasa",style: TextStyle(fontSize:20))
                        ),
                        Divider(),

                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                           Row(
                            children: [
                               Icon(Icons.location_on,
                               size: 25,
                               color: Colors.orangeAccent,),
                                         Text('Tuban'),
                                   ],
                               ),
                          
                          SizedBox(height: 20,),

                          Row(
                          children: [
                          Icon(Icons.phone_sharp,
                          size: 25,
                          color: Colors.orangeAccent,),
                          Text('081230977719'),
                           ],
                           ), 
      
                        ],
                        
                      ),

                     
                    ),                  

                  ],
                ),
              ),
              SizedBox(height: 100,),
              Container(
                child: Text("Bergabung sejak Otober 2022", style: TextStyle(fontSize: 10),),
                

                
              ),
                
          ],
      ),
      ),
    );
  }
}