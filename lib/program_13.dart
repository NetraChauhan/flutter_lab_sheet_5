// 13. Add a new item to a list using a TextField and a button.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatefulWidget{
  const App({super.key});
  State<App> createState()=>_S();
}

class _S extends State<App>{
  final input=TextEditingController();
  final items=['Notebook','Water Bottle','Headphones'];

  void add(){
    final text=input.text.trim();
    if(text.isEmpty)return;
    setState(()=>items.add(text));
    input.clear();
  }

  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.teal,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('My Items'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:SizedBox(
          width:520,
          child:Padding(
            padding:const EdgeInsets.all(20),
            child:Column(children:[
              Row(children:[
                Expanded(
                  child:TextField(
                    controller:input,
                    onSubmitted:(_)=>add(),
                    decoration:const InputDecoration(
                      labelText:'New item',
                      prefixIcon:Icon(Icons.edit),
                      border:OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width:10),
                FilledButton.icon(
                  onPressed:add,
                  icon:const Icon(Icons.add),
                  label:const Text('Add'),
                ),
              ]),
              const SizedBox(height:18),
              Expanded(
                child:ListView.builder(
                  itemCount:items.length,
                  itemBuilder:(c,i)=>Card(
                    child:ListTile(
                      leading:CircleAvatar(child:Text('${i+1}')),
                      title:Text(items[i]),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    ),
  );
}
