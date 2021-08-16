import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Uno.dart';

void main(){
  runApp((MaterialApp(
    home:Cinco(),
  )));
}

class Cinco extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Quinto')

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
                'Un noble sacrificio por la paz (economia)',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
            Text(
              'Los gatos han aceptado tu disculpa, junto con tu vida, despues de todo, se sabe que los gatos se rigen por la filosofia de ''ojo por ojo diente por diente'', no todo es malo, cada parte de tu cuerpo sera sera vendida o invertida en el mercado negro felino promoviendo la economia gatuna',

              style: TextStyle(
                fontSize: 23,
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
    image: AssetImage('assets/stonck.jpg'),
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