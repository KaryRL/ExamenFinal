import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Cinco.dart';
import 'Cuatro.dart';


void main(){
  runApp((MaterialApp(
    home:Dos(),
  )));
}

class Dos extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
        appBar:AppBar(
            title:Text('Segundo')

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

                      child:Text('No negociamos con terroristas'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Cuatro())),
                      style:ElevatedButton.styleFrom(primary:Colors.purple,
                          fixedSize: Size(200, 80),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)), textStyle: TextStyle(
                              fontSize: 18,)),),
                    ElevatedButton(

                      child:Text('Disculparte'),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Cinco())),
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
                'La intención no es lo que cuenta',
                style: TextStyle(
                  fontSize: 45,
                ),
              ),
            ),
            Text(
              'Al acercarte para alimentar al gato este se a asustado, brincando de golpe, golpeandose con algo que inexplicablemente estaba ahí y mientras este cae muerto, recuerdas que nunca fuiste bueno con los animales'
                  ' queriendo o no, los gatos del mundo han visto esto como una ofenza inimaginable, iniciando una guerra entre la humanidad y los gatos, la humnaidad y sus lideres te elijen como embajador'
                  ' o como sacrificio y te mandan a tratar las cosas por medio del dialogo',

              style: TextStyle(
                fontSize: 21,
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
    image: AssetImage('assets/ups.jpg'),
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