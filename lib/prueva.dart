
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:assets_audio_player/assets_audio_player.dart';


void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState()=>_MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  late AnimationController iconController;

  bool showPlay = true;
  bool showPause=false;
  bool isAnimated=false;


      AssetsAudioPlayer player = AssetsAudioPlayer();

      @override
      void initState(){
        // TODO: implement build
        super.initState();

        iconController=AnimationController(
            vsync: this,duration: Duration(milliseconds:1000));



        player.open(Audio('assets/1ini.mp3'));
      }

      @override
      Widget build(BuildContext context){
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('Playing Audio'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image(
                  image: AssetImage('assets/gatotriste.jpg'),
                  width:300.0,
                  height: 250.0,
                ),
                GestureDetector(
                  onTap: (){
                    AnimateIcon();
                  }, 
                  child: AnimatedIcon(
                    size: 100,
                    icon:AnimatedIcons.play_pause,
                    progress:iconController,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Visibility(child: ElevatedButton(onPressed: (){Play();},child:Text('Play')),visible: showPlay,),
                      Visibility(child: ElevatedButton(onPressed: (){Pause();}, child: Text('Pause'),),visible: showPause,)
                    ],
                )
              ],
            ),
          ),
        );
      }

   void AnimateIcon(){
        setState(() {
          isAnimated=!isAnimated;
          isAnimated ? iconController.forward():iconController.reverse();
        });
   }


      void Play(){
        setState(() {
          showPause=true;
          showPlay=false;
          iconController.forward();
        });
      }
  void Pause(){
    setState(() {
      showPause=false;
      showPlay=true;
      iconController.reverse();
    });
  }

}


