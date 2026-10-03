// 9. Display products using a Dart model class and ListView.builder.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class Product{
  final String name;
  final int price;
  final IconData icon;
  Product(this.name,this.price,this.icon);
}

class App extends StatelessWidget{
  const App({super.key});
  Widget build(c){
    final products=[
      Product('Wireless Headphones',1999,Icons.headphones),
      Product('Smart Watch',2499,Icons.watch),
      Product('Travel Backpack',1299,Icons.backpack),
      Product('Desk Lamp',899,Icons.light),
    ];
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(title:const Text('Product Catalogue'),centerTitle:true),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:540,
            child:ListView.builder(
              padding:const EdgeInsets.all(20),
              itemCount:products.length,
              itemBuilder:(c,i){
                final p=products[i];
                return Card(
                  margin:const EdgeInsets.only(bottom:12),
                  child:ListTile(
                    leading:CircleAvatar(child:Icon(p.icon)),
                    title:Text(p.name,style:const TextStyle(fontWeight:FontWeight.bold)),
                    subtitle:const Text('In stock'),
                    trailing:Text(
                      '₹${p.price}',
                      style:const TextStyle(fontSize:18,fontWeight:FontWeight.bold),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
