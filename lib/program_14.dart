// 14. Delete an item from a list when the user taps the delete icon.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatefulWidget{
  const App({super.key});
  State<App> createState()=>_S();
}

class _S extends State<App>{
  final items=['Flutter Notes','DBMS Assignment','Project Report','Lab Record','Presentation'];

  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.red,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Delete List Items'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:SizedBox(
          width:520,
          child:ListView.builder(
            padding:const EdgeInsets.all(20),
            itemCount:items.length,
            itemBuilder:(c,i)=>Card(
              margin:const EdgeInsets.only(bottom:10),
              child:ListTile(
                leading:const CircleAvatar(child:Icon(Icons.description)),
                title:Text(items[i]),
                subtitle:const Text('Tap delete to remove'),
                trailing:IconButton(
                  tooltip:'Delete',
                  icon:const Icon(Icons.delete_outline,color:Colors.red),
                  onPressed:(){
                    final removed=items[i];
                    setState(()=>items.removeAt(i));
                    ScaffoldMessenger.of(c).showSnackBar(
                      SnackBar(content:Text('$removed deleted')),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
