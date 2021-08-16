import 'package:flutter/material.dart';

import 'Uno.dart';

class holi extends StatelessWidget{
  final String texto;
  const holi (this.texto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text(texto),),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Text('Holi, la verdad te time, no me sirve de nada tu nombre, mas que para cumplir con la rubrica UwU',
              style: TextStyle(
                fontSize: 22,
              ),
            ),
            Center(
                child:
                  ElevatedButton(
                      child:Text('Jugar',textAlign: TextAlign.end),
                      onPressed:()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Uno())),
                      style:ElevatedButton.styleFrom(primary:Colors.purple,
                        fixedSize: Size(200, 80),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                        textStyle: TextStyle(
                        fontSize: 25),
                      )
                  ),

            )
          ]
      )
    );
  }
}