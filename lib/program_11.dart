// 11. Counter that increases when a button is pressed using setState().
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatefulWidget{
  const App({super.key});
  State<App> createState()=>_S();
}

class _S extends State<App>{
  int count=0;
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Simple Counter'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:Padding(
          padding:const EdgeInsets.all(28),
          child:Container(
            width:360,
            padding:const EdgeInsets.all(26),
            decoration:BoxDecoration(
              color:Colors.orange.shade50,
              borderRadius:BorderRadius.circular(22),
            ),
            child:Column(
              mainAxisSize:MainAxisSize.min,
              children:[
                const Text('Current Count',style:TextStyle(fontSize:18)),
                Text(
                  '$count',
                  style:const TextStyle(fontSize:56,fontWeight:FontWeight.bold),
                ),
                const SizedBox(height:18),
                FilledButton.icon(
                  onPressed:()=>setState(()=>count++),
                  icon:const Icon(Icons.add),
                  label:const Text('Increase'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
