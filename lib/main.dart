import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num =0;
  int num2=10;
  void show(){
    setState(() {
      if (num<10){
        num++;
      }else{
        num=0;
      }
      AssetsAudioPlayer.newPlayer().open(
        Audio("assets/audios/B.wav"),

      );
    });
  }
  void call(){
    setState(() {
      if(num2>0){
        num2-=1;
      }else{
        num2=10;
      }
      AssetsAudioPlayer.newPlayer().open(
        Audio("assets/audios/C.wav"),

      );
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(

        appBar:AppBar(
          backgroundColor:Colors.blue[200],
          title:Center(child: Text("Increment & Decrement",style:TextStyle(fontSize:30,fontWeight: FontWeight.bold))),
        ),
        body:Container(
          decoration:BoxDecoration(
            gradient:LinearGradient(colors: [Color(0xFFd4e9f9),Color(0xFF5cabe7),Color(0xFFd4e9f9)],

            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Score $num",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
                  SizedBox(width:160),
                  Text("Score $num2",style:TextStyle(fontSize:20,fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap:show,
                    child:Container(
                      decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.blue,
                      ),
                      width:200,
                      height:200,

                      child:Icon(Icons.add,size:60),
                    ),

                  ),
                  SizedBox(width:20),
                  GestureDetector(
                    onTap:call,
                    child:Container(
                      decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.blue,
                      ),
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 50),
                      width:200,
                      height:200,


                      child:Icon(Icons.minimize,size:60),
                    ),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
