// 4. Display names stored in a Dart List using ListView.builder.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c){
    final names=['Aarav Vale','Mira Solis','Kabir Rowan','Tara Quinn','Noah Reed','Isha Lane'];
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.purple,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('Student Names'),centerTitle:true),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:500,
            child:ListView.builder(
              padding:const EdgeInsets.all(20),
              itemCount:names.length,
              itemBuilder:(c,i)=>Card(
                child:ListTile(
                  leading:CircleAvatar(child:Text('${i+1}')),
                  title:Text(names[i],style:const TextStyle(fontWeight:FontWeight.w600)),
                  subtitle:const Text('Student'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
