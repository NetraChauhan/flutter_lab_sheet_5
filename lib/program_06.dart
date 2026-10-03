// 6. Display a horizontally scrolling list using scrollDirection.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c){
    final data=[
      ('Mountains',Icons.landscape),
      ('Beach',Icons.beach_access),
      ('City',Icons.location_city),
      ('Forest',Icons.forest),
      ('Cafe',Icons.local_cafe),
      ('Museum',Icons.museum),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.cyan,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('Explore Categories'),centerTitle:true),
        body:Padding(
          padding:const EdgeInsets.only(top:24),
          child:SizedBox(
            height:150,
            child:ListView.separated(
              padding:const EdgeInsets.symmetric(horizontal:20),
              scrollDirection:Axis.horizontal,
              itemCount:data.length,
              separatorBuilder:(_,__)=>const SizedBox(width:12),
              itemBuilder:(c,i)=>Container(
                width:140,
                padding:const EdgeInsets.all(18),
                decoration:BoxDecoration(
                  color:Colors.cyan.shade50,
                  borderRadius:BorderRadius.circular(18),
                  border:Border.all(color:Colors.cyan.shade100),
                ),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children:[
                    Icon(data[i].$2,size:42,color:Colors.cyan.shade700),
                    const SizedBox(height:8),
                    Text(data[i].$1,style:const TextStyle(fontWeight:FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
