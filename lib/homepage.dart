import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_uts/model/menu_model.dart';
import 'package:flutter_application_uts/page/detail.dart';
import 'dart:convert';
import 'package:http/http.dart' as myHttp;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String urlMenu = "https://script.google.com/macros/s/AKfycbw_tAyDyazbXbErrqvSs0kZEwfuhQlXuRx0lo3FtZpj2K0n6piAl9Q00eq-uXY3BR1nIg/exec";

  Future<List<Menumodel>> getAllData() async {
    List<Menumodel> listMenu = [];
    var response = await myHttp.get(Uri.parse(urlMenu));
    List data = json.decode(response.body);

    data.forEach((element) {
      listMenu.add(Menumodel.fromJson(element));
    });

    return listMenu;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FutureBuilder(
              future: getAllData(),
              builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
            } else {
              if (snapshot.hasData){
                return Expanded(
                  child: ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      Menumodel menu = snapshot.data![index];
                      return InkWell(
                        onTap: () async {                         
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => detail(detailmenu: menu,)
                            )
                          );
                        },

                       child: Card(
                        child: ListTile(
                          leading: Image.network(menu.image),
                          title: Text(menu.name),
                          subtitle: Text("Rp. " + menu.price.toString()),
                        )
                      )
                      );
                    }
                  
                    ),
                    );

              } else {
                return Center(child: Text("Tidak ada data"));

              }
            }
            }),
          ],
        )),
    );
  }
}

