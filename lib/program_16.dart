// 16. Filter a list of names using a search TextField.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatefulWidget{
  const App({super.key});
  State<App> createState()=>_S();
}

class _S extends State<App>{
  final names=[
    'Aarav Vale','Mira Solis','Kabir Rowan','Tara Quinn',
    'Noah Reed','Isha Lane','Rohan Blake','Maya Cole'
  ];
  String query='';

  Widget build(c){
    final filtered=names
      .where((n)=>n.toLowerCase().contains(query.toLowerCase()))
      .toList();

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.indigo,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('Search Students'),centerTitle:true),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:540,
            child:Padding(
              padding:const EdgeInsets.all(20),
              child:Column(children:[
                TextField(
                  onChanged:(v)=>setState(()=>query=v),
                  decoration:InputDecoration(
                    hintText:'Search by name...',
                    prefixIcon:const Icon(Icons.search),
                    suffixIcon:query.isEmpty?null:const Icon(Icons.filter_alt),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(16),
                    ),
                  ),
                ),
                const SizedBox(height:14),
                Align(
                  alignment:Alignment.centerLeft,
                  child:Text(
                    '${filtered.length} result${filtered.length==1?'':'s'}',
                    style:const TextStyle(fontWeight:FontWeight.w600),
                  ),
                ),
                const SizedBox(height:8),
                Expanded(
                  child:filtered.isEmpty
                    ?const Center(child:Text('No matching students'))
                    :ListView.builder(
                      itemCount:filtered.length,
                      itemBuilder:(c,i)=>Card(
                        child:ListTile(
                          leading:CircleAvatar(child:Text(filtered[i][0])),
                          title:Text(filtered[i]),
                          subtitle:const Text('Student'),
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
}
