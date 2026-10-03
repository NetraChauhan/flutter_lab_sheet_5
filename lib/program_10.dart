// 10. Demonstrate the difference between StatelessWidget and StatefulWidget.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c)=>MaterialApp(
    debugShowCheckedModeBanner:false,
    theme:ThemeData(colorSchemeSeed:Colors.blue,useMaterial3:true),
    home:Scaffold(
      appBar:AppBar(title:const Text('Stateless vs Stateful'),centerTitle:true),
      body:Align(
        alignment:Alignment.topCenter,
        child:Padding(
          padding:const EdgeInsets.all(24),
          child:Wrap(
            spacing:18,
            runSpacing:18,
            children:const[
              FixedCard(),
              CounterCard(),
            ],
          ),
        ),
      ),
    ),
  );
}

class FixedCard extends StatelessWidget{
  const FixedCard({super.key});
  Widget build(c)=>Card(
    child:SizedBox(
      width:300,
      child:Padding(
        padding:const EdgeInsets.all(22),
        child:Column(
          mainAxisSize:MainAxisSize.min,
          children:const[
            Icon(Icons.lock_outline,size:48,color:Colors.blue),
            SizedBox(height:10),
            Text('StatelessWidget',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
            Text('This value stays fixed'),
            SizedBox(height:10),
            Text('Value: 10',style:TextStyle(fontSize:24)),
          ],
        ),
      ),
    ),
  );
}

class CounterCard extends StatefulWidget{
  const CounterCard({super.key});
  State<CounterCard> createState()=>_CounterCardState();
}

class _CounterCardState extends State<CounterCard>{
  int n=0;
  Widget build(c)=>Card(
    child:SizedBox(
      width:300,
      child:Padding(
        padding:const EdgeInsets.all(22),
        child:Column(
          mainAxisSize:MainAxisSize.min,
          children:[
            const Icon(Icons.refresh,size:48,color:Colors.blue),
            const SizedBox(height:10),
            const Text('StatefulWidget',style:TextStyle(fontSize:22,fontWeight:FontWeight.bold)),
            const Text('This value can change'),
            const SizedBox(height:10),
            Text('Value: $n',style:const TextStyle(fontSize:24)),
            const SizedBox(height:10),
            FilledButton(
              onPressed:()=>setState(()=>n++),
              child:const Text('Change Value'),
            ),
          ],
        ),
      ),
    ),
  );
}
