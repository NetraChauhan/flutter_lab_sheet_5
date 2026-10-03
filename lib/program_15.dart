// 15. Remove list items by swiping using the Dismissible widget.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatefulWidget{
  const App({super.key});
  State<App> createState()=>_S();
}

class _S extends State<App>{
  final items=['Morning Walk','Read Notes','Practice Flutter','Submit Work','Call Home'];

  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Swipe to Remove'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:SizedBox(
          width:520,
          child:ListView.builder(
            padding:const EdgeInsets.all(20),
            itemCount:items.length,
            itemBuilder:(c,i){
              final item=items[i];
              return Dismissible(
                key:ValueKey(item),
                direction:DismissDirection.endToStart,
                background:Container(
                  margin:const EdgeInsets.only(bottom:10),
                  padding:const EdgeInsets.only(right:22),
                  alignment:Alignment.centerRight,
                  decoration:BoxDecoration(
                    color:Colors.red.shade400,
                    borderRadius:BorderRadius.circular(14),
                  ),
                  child:const Icon(Icons.delete,color:Colors.white),
                ),
                onDismissed:(_)=>setState(()=>items.remove(item)),
                child:Card(
                  margin:const EdgeInsets.only(bottom:10),
                  child:ListTile(
                    leading:const Icon(Icons.drag_indicator),
                    title:Text(item),
                    subtitle:const Text('Swipe left to delete'),
                    trailing:const Icon(Icons.swipe_left),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    ),
  );
}
