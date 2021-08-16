
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Dos.dart';
import 'Tres.dart';
import 'AccountForm.dart';

void main(){
  runApp((MaterialApp(
    home:Uno(),
  )));
}



class Uno extends StatelessWidget{

const Uno({Key? key}): super(key:key);
  @override


  Widget build (BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('El Inicio')

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

                  child:Text('Alimentar'),
                  onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Dos())),
                style:ElevatedButton.styleFrom(primary:Colors.purple,
                    fixedSize: Size(200, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                    textStyle: TextStyle(
                    fontSize: 25)),),
                ElevatedButton(

                  child:Text('Ignorar'),
                  onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Tres())),
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
                'Gatito Path',
                style: TextStyle(
                  fontSize: 50,

                ),
              ),
            ),

            Text(
              'Eres un joven despreocupado, que nunca se a esforzado por nada, pero no por vago, si no por que no a surgido la necesidad, todo en tu vida es relativamente facil, y lo que no suele solucionarse de manera sencilla, hasta que un día'
                  ' encuentras a un gatito, parece de la calle, y aun que esta un poco sucio, lo consideras tierno, Que haces?',

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
    image: AssetImage('assets/gatotriste.jpg'),
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