// 7. Display a grid of icons using GridView.count.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c){
    final items=[
      ('Home',Icons.home),
      ('Camera',Icons.camera_alt),
      ('Music',Icons.music_note),
      ('Map',Icons.map),
      ('Chat',Icons.chat_bubble),
      ('Calendar',Icons.calendar_month),
      ('Files',Icons.folder),
      ('Settings',Icons.settings),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.deepPurple,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('App Grid'),centerTitle:true),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:650,
            child:GridView.count(
              padding:const EdgeInsets.all(20),
              crossAxisCount:4,
              crossAxisSpacing:14,
              mainAxisSpacing:14,
              children:items.map((x)=>Container(
                decoration:BoxDecoration(
                  color:Colors.deepPurple.shade50,
                  borderRadius:BorderRadius.circular(18),
                ),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    Icon(x.$2,size:42,color:Colors.deepPurple),
                    const SizedBox(height:8),
                    Text(x.$1,style:const TextStyle(fontWeight:FontWeight.w600)),
                  ],
                ),
              )).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
