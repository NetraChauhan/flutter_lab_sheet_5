// 3. Display numbers 1 to 100 using ListView.builder.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.orange,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Numbers 1–100'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:SizedBox(
          width:500,
          child:ListView.builder(
            padding:const EdgeInsets.all(18),
            itemCount:100,
            itemBuilder:(c,i)=>Container(
              margin:const EdgeInsets.only(bottom:8),
              padding:const EdgeInsets.symmetric(horizontal:16,vertical:14),
              decoration:BoxDecoration(
                color:i.isEven?Colors.orange.shade50:Colors.white,
                borderRadius:BorderRadius.circular(12),
                border:Border.all(color:Colors.orange.shade100),
              ),
              child:Row(children:[
                CircleAvatar(
                  radius:18,
                  backgroundColor:Colors.orange.shade100,
                  child:Text('${i+1}',style:const TextStyle(fontWeight:FontWeight.bold)),
                ),
                const SizedBox(width:12),
                Text('Number ${i+1}',style:const TextStyle(fontSize:16)),
              ]),
            ),
          ),
        ),
      ),
    ),
  );
}
