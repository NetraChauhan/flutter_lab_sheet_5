// 5. Display a list of items separated by dividers using ListView.separated.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c){
    final tasks=['Review notes','Finish assignment','Practice Flutter','Read chapter','Plan tomorrow'];
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.blue,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('Today’s Tasks'),centerTitle:true),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:520,
            child:ListView.separated(
              padding:const EdgeInsets.all(20),
              itemCount:tasks.length,
              separatorBuilder:(_,__)=>const Divider(height:1),
              itemBuilder:(c,i)=>ListTile(
                contentPadding:const EdgeInsets.symmetric(vertical:6,horizontal:10),
                leading:Icon(Icons.check_circle_outline,color:Colors.blue.shade700),
                title:Text(tasks[i]),
                trailing:Text('${i+1}/5'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
