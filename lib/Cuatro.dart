import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Uno.dart';

void main(){
  runApp((MaterialApp(
    home:Cuatro(),
  )));
}

class Cuatro extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Cuarto')

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
                'Bien hecho, bien te dijo tu ex que tenias mucho ego',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
            ),
            Text(
              'Decides que nadie interrumpira tu vida de paz y calma y menos unos tontos gatos, que han malinterpretado tus intenciones,'
                  ' y aun que si te sientes mal por lo sucedido, no es tu culpa, y no flojearas ante una especie inferior. Lamentablemente a los gatos no les podria importar menos tu postura y de echo'
              ' esto una buena excusa para tomar el control del mundo',

              style: TextStyle(
                fontSize: 20,
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
    image: AssetImage('assets/guerra.jpeg'),
    width:480.0,
    height: 430.0,
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