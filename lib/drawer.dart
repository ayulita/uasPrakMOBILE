import 'package:flutter/material.dart';
import 'package:flutter_application_uts/helpme.dart';
import 'package:flutter_application_uts/homepage.dart';
import 'package:flutter_application_uts/logout.dart';
import 'package:flutter_application_uts/profil.dart';
import 'package:flutter_application_uts/riwayat.dart';
import 'package:flutter_application_uts/voucher.dart';
import 'package:flutter_application_uts/Pengaturan.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
      ),

        body: HomePage(),
        drawer: Drawer(
          child: 
          ListView(
            padding: EdgeInsets.zero,
            
            children: [
              InkWell(
                
                child: Container( 
                  padding: EdgeInsets.all(20),
                  
                  height: 200, 
                  width: double.infinity,
                  decoration: BoxDecoration(
                  gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  colors: [             
                     Color.fromRGBO(255, 191, 60, 1.0),
                     Color.fromRGBO(255, 231, 182, 1.0),
                  ]
                  ), 
                   ),                 
            
                 child:Column(children: [CircleAvatar(
                  backgroundImage: AssetImage('images/profil.jpg'), radius:60,
                  ),
                  Text('Ayu Litasa'),
                  Text('200605110088@student.uin-malang.ac.id'),],
                 
                
                 ),
              ),
              onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Profil();
                },
                ),
                );
              }
              
              ),
              

              ListTile(
                onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Riwayat();
                },
                ),
                );
              },
                leading: Icon(Icons.history, size: 25),
                title: Text("Riwayat", style: TextStyle(fontSize:15),),
              ),


              ListTile(
                 onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Voucher();
                },
                ),
                );
              },
                leading: Icon(Icons.money_outlined, size: 25),
                title: Text("Voucher", style: TextStyle(fontSize:15),),
              ),


              Divider(height: 50,),


              ListTile(
                 onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Pengaturan();
                },
                ),
                );
              },
                leading: Icon(Icons.settings, size: 25),
                title: Text("Pengaturan", style: TextStyle(fontSize:15),),
              ),


              ListTile(
                 onTap: (){
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Helpme();
                },
                ),
                );
              },
                leading: Icon(Icons.help, size: 25),
                title: Text("Bantuan dan Saran", style: TextStyle(fontSize:15),),
              ),


              ListTile(
                onTap: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => logout()));
                },
                leading: Icon(Icons.logout, size: 25),
                title: Text("Log Out", style: TextStyle(fontSize:15),),
              ),
            ],
          ),
        
      ),
    );
  }
}