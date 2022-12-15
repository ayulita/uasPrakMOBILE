import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/drawer.dart';
import 'package:flutter_application_uts/homepage.dart';

class loginp extends StatelessWidget {
  const loginp({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 136, 0, 1.0),
              Color.fromRGBO(249, 180, 40, 1.0),
              Color.fromRGBO(255, 191, 60, 1.0),
              //Color.fromRGBO(255, 210, 118, 1.0),
              Color.fromRGBO(255, 231, 182, 1.0),

            ]
              ),            
        ),

        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            SizedBox(height:80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [ 
                  Text("Login", style: TextStyle(
                    color: Color.fromARGB(255, 126, 105, 93), fontSize: 40),),
                  Text('')
                  
                ]),
              ),
              Container(
                width: 250,
                height: 275,
                decoration: BoxDecoration(
                  color: Color.fromARGB(71, 255, 255, 255),
                  borderRadius: BorderRadius.circular(60),
                                                      
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget> [
                    //id
                    Container(
                      padding: EdgeInsets.all(5),
                      child: TextField(

                        decoration: InputDecoration(
                          prefixIcon: Icon(color: Colors.orange, Icons.person_pin_rounded, size: 15), 
                          hintText: "Id",
                          hintStyle: TextStyle(color: Color.fromARGB(255, 177, 154, 141),fontSize: 10 ),

                        ),)
                    ),
                    //nama
                     Container(
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          prefixIcon: Icon(color: Colors.orange, Icons.person, size: 15), 
                          hintText: "Nama",
                          hintStyle: TextStyle(color: Color.fromARGB(255, 177, 154, 141), fontSize: 10),

                        ),
                        ),
                    ),
                    //email
                        Container(
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          prefixIcon: Icon(color: Colors.orange, Icons.mail, size: 15), 
                          hintText: "Email",
                          hintStyle: TextStyle(color: Color.fromARGB(255, 177, 154, 141), fontSize: 10),

                        ),
                        ),
                    ),
                    //password
                        Container(
                      padding: EdgeInsets.all(5),
                      child: TextField(
                        
                        decoration: InputDecoration(
                          prefixIcon: Icon(color: Colors.orange, Icons.lock, size: 15), 
                          hintText: "Password",
                          hintStyle: TextStyle(color: Color.fromARGB(255, 177, 154, 141), fontSize: 10),

                        ),
                        ),
                    ),

                                       
                  ],
                  ),
              ),
              
              SizedBox(height: 30, ),


              Container( 
                
                height: 50, width: 100,
                margin: EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color.fromRGBO(255, 136, 0, 1.0),
                ),
                 child: Center(
                  child: 
                  GestureDetector(
                     onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>DrawerPage()));
                      },
                      child: Text("Login", style: TextStyle(
                        color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                  )
                 
                 
                ),
                
                 
                ),
  
                  
            ],

            ),

      )
      
    );
  }
}


