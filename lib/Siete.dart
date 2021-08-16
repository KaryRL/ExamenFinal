import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Uno.dart';

void main(){
  runApp((MaterialApp(
    home:Siete(),
  )));
}

class Siete extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Septimo')

        ),
        body: Stack(
          children: [
            fondo,
            Column(
              children:[
                titleSection,
                imagenm,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(

                      child:Text('Intentar de nuevo',textAlign: TextAlign.center),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Uno())),
                      style:ElevatedButton.styleFrom(primary:Colors.purple,
                          fixedSize: Size(200, 80),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          textStyle: TextStyle(
                              fontSize: 25)),),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}


Widget titleSection = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    children: [
      Expanded(
        /*1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /*2*/
            Container(
              padding: const EdgeInsets.only(bottom: 50),
              child: Text(
                'No lo vale',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Text(
              'Al nunca esforzarte en nada esta crisis a superado tu resistencia mental por mucho y decides que simplemente, no vale la pena, Supongo que al menos viviste una vida tranquila',

              style: TextStyle(
                fontSize:22,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

Widget imagenm = Container(

  child: Image(
    image: AssetImage('assets/suici.jpg'),
    width:600.0,
    height: 500.0,
  ),
);



Widget fondo = Container(

  decoration: new BoxDecoration(
      gradient: new LinearGradient(
          colors:[
            Color.fromRGBO(235, 233, 250,100),
            Color.fromRGBO(255,127,197,100)
          ],
          begin: const FractionalOffset(1.4, .01),
          end: const FractionalOffset(1.0, 1.5)
      )
  ),
);