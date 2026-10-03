// 12. Counter with Increment, Decrement and Reset buttons.
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
    theme:ThemeData(colorSchemeSeed:Colors.purple,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Counter Controls'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:Padding(
          padding:const EdgeInsets.all(28),
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children:[
              const Text('Counter',style:TextStyle(fontSize:20)),
              Text(
                '$count',
                style:const TextStyle(fontSize:58,fontWeight:FontWeight.bold),
              ),
              const SizedBox(height:18),
              Wrap(
                spacing:10,
                runSpacing:10,
                children:[
                  FilledButton.icon(
                    onPressed:()=>setState(()=>count++),
                    icon:const Icon(Icons.add),
                    label:const Text('Increment'),
                  ),
                  FilledButton.tonalIcon(
                    onPressed:()=>setState(()=>count--),
                    icon:const Icon(Icons.remove),
                    label:const Text('Decrement'),
                  ),
                  OutlinedButton.icon(
                    onPressed:()=>setState(()=>count=0),
                    icon:const Icon(Icons.refresh),
                    label:const Text('Reset'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
