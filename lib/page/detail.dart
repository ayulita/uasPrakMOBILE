import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/homepage.dart';
import 'package:flutter_application_uts/model/menu_model.dart';

class detail extends StatelessWidget {
  final Menumodel detailmenu;
  const detail({Key? key, required this.detailmenu});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        
        children: [
          Column(
            children: [
              Image.network(detailmenu.image, ),
              SizedBox(height: 20),

              Row(
                children: [
                  Container(
                width: 250,
                height: 275,
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.circular(50),
                                                      
                ),
                padding: EdgeInsets.all(20),
                child: 
                Column(
                    children: [
                      Text(detailmenu.name, style: TextStyle(
                      color: Color.fromARGB(255, 236, 117, 5), fontSize: 40)),
                      Text(" "),
                      Text(" "),
                      Text(detailmenu.description, style: TextStyle(
                      color: Color.fromARGB(255, 71, 32, 9), fontSize: 15)),

                    ],
                  ),
                  ),    

                Container(
                width: 250,
                height: 300, 
                decoration: BoxDecoration(
                  color: Color.fromRGBO(241, 166, 97, 1),
                  borderRadius: BorderRadius.circular(40),
                                                      
                ),
                padding: EdgeInsets.all(20),
                child: 
                Column(
                  children: [
                    Text("Informasi Nilai Gizi", style: TextStyle(
                      color: Color.fromARGB(255, 245, 243, 241), fontSize: 18) ),
                    Text(""),
                
                    Text(detailmenu.longdescription, style: TextStyle(
                      color: Color.fromARGB(255, 27, 18, 9), fontSize: 15))
                  ],
                )
                ,
              ),
              
              


                ],
                
              ),
                


            ],
          ),
                    
        ],
      )
    );
  }
}
