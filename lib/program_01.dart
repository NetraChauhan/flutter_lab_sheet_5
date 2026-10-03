// 1. Display a list of five items using ListView.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('My Reading List'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:SizedBox(
          width:520,
          child:ListView(
            padding:const EdgeInsets.all(20),
            children:const[
              _Item(Icons.auto_stories,'The Silent Library','Fiction'),
              _Item(Icons.psychology,'Mind in Motion','Psychology'),
              _Item(Icons.public,'Around the World','Travel'),
              _Item(Icons.science,'Everyday Science','Science'),
              _Item(Icons.history_edu,'Stories of Time','History'),
            ],
          ),
        ),
      ),
    ),
  );
}

class _Item extends StatelessWidget{
  final IconData icon; final String title,tag;
  const _Item(this.icon,this.title,this.tag);
  Widget build(c)=>Card(
    margin:const EdgeInsets.only(bottom:12),
    child:ListTile(
      leading:CircleAvatar(child:Icon(icon)),
      title:Text(title,style:const TextStyle(fontWeight:FontWeight.w600)),
      subtitle:Text(tag),
    ),
  );
}
