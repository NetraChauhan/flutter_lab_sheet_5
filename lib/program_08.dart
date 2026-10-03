// 8. Display a grid of colored boxes using GridView.builder.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c){
    final colors=[
      Colors.red,Colors.orange,Colors.amber,Colors.green,
      Colors.teal,Colors.blue,Colors.indigo,Colors.purple,
      Colors.pink,Colors.brown,Colors.cyan,Colors.blueGrey
    ];
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.pink,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('Color Grid'),centerTitle:true),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:650,
            child:GridView.builder(
              padding:const EdgeInsets.all(20),
              itemCount:colors.length,
              gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:4,
                crossAxisSpacing:14,
                mainAxisSpacing:14,
              ),
              itemBuilder:(c,i)=>Container(
                decoration:BoxDecoration(
                  color:colors[i],
                  borderRadius:BorderRadius.circular(18),
                ),
                child:Center(
                  child:Text(
                    'Box ${i+1}',
                    style:const TextStyle(color:Colors.white,fontWeight:FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
