import 'package:araara/Uno.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp((MaterialApp(
    home:Seis(),
  )));
}

class Seis extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Sexto')

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

                      child:Text('Empezar de nuevo',textAlign: TextAlign.center),
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
                'Ganaste?',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Text(
              'Decides ahogar tu culpa con una de las necesidades básicas mas placenteras, debería darte verguenza, pero supongo que todos tienen su modo, felicidades tu y la puteria ganan de nuevo',

              style: TextStyle(
                fontSize: 22,
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
    image: AssetImage('assets/sexy.jpg'),
    width:500.0,
    height: 450.0,
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
