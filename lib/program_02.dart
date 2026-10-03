// 2. Display items with a leading icon, title and subtitle using ListTile.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.indigo,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Quick Contacts'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:SizedBox(
          width:520,
          child:ListView(
            padding:const EdgeInsets.all(20),
            children:const[
              ListTile(
                leading:CircleAvatar(child:Icon(Icons.person)),
                title:Text('Aarav Vale'),
                subtitle:Text('aarav@example.com'),
                trailing:Icon(Icons.chevron_right),
              ),
              Divider(),
              ListTile(
                leading:CircleAvatar(child:Icon(Icons.person)),
                title:Text('Mira Solis'),
                subtitle:Text('mira@example.com'),
                trailing:Icon(Icons.chevron_right),
              ),
              Divider(),
              ListTile(
                leading:CircleAvatar(child:Icon(Icons.person)),
                title:Text('Kabir Rowan'),
                subtitle:Text('kabir@example.com'),
                trailing:Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
