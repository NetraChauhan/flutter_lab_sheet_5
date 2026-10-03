// 17. Student Record List Application: add, search and delete students.
import 'package:flutter/material.dart';
void main()=>runApp(const App());

class Student{
  final String name,roll,course;
  Student(this.name,this.roll,this.course);
}

class App extends StatefulWidget{
  const App({super.key});
  State<App> createState()=>_S();
}

class _S extends State<App>{
  final name=TextEditingController();
  final roll=TextEditingController();
  final course=TextEditingController();
  String query='';

  final students=[
    Student('Aarav Vale','S101','BCA'),
    Student('Mira Solis','S102','BBA'),
    Student('Kabir Rowan','S103','B.Tech'),
  ];

  void addStudent(){
    if(name.text.trim().isEmpty||
       roll.text.trim().isEmpty||
       course.text.trim().isEmpty)return;

    setState(()=>students.add(Student(
      name.text.trim(),roll.text.trim(),course.text.trim()
    )));
    name.clear();roll.clear();course.clear();
  }

  Widget field(TextEditingController c,String label,IconData icon)=>TextField(
    controller:c,
    decoration:InputDecoration(
      labelText:label,
      prefixIcon:Icon(icon),
      border:const OutlineInputBorder(),
    ),
  );

  Widget build(c){
    final shown=students
      .where((s)=>s.name.toLowerCase().contains(query.toLowerCase()))
      .toList();

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme:ThemeData(colorSchemeSeed:Colors.green,useMaterial3:true),
      home:Scaffold(
        appBar:AppBar(
          title:const Text('Student Records'),
          centerTitle:true,
        ),
        body:Align(
          alignment:Alignment.topCenter,
          child:SizedBox(
            width:700,
            child:Padding(
              padding:const EdgeInsets.all(20),
              child:Column(children:[
                Card(
                  color:Colors.green.shade50,
                  child:Padding(
                    padding:const EdgeInsets.all(18),
                    child:Column(children:[
                      const Align(
                        alignment:Alignment.centerLeft,
                        child:Text(
                          'Add Student',
                          style:TextStyle(fontSize:21,fontWeight:FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height:14),
                      Row(children:[
                        Expanded(child:field(name,'Name',Icons.person)),
                        const SizedBox(width:10),
                        Expanded(child:field(roll,'Roll Number',Icons.badge)),
                      ]),
                      const SizedBox(height:10),
                      Row(children:[
                        Expanded(child:field(course,'Course',Icons.school)),
                        const SizedBox(width:10),
                        FilledButton.icon(
                          onPressed:addStudent,
                          icon:const Icon(Icons.person_add),
                          label:const Text('Add Student'),
                        ),
                      ]),
                    ]),
                  ),
                ),
                const SizedBox(height:14),
                TextField(
                  onChanged:(v)=>setState(()=>query=v),
                  decoration:const InputDecoration(
                    hintText:'Search student by name...',
                    prefixIcon:Icon(Icons.search),
                    border:OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height:12),
                Row(children:[
                  Text(
                    'Students (${shown.length})',
                    style:const TextStyle(fontSize:18,fontWeight:FontWeight.bold),
                  ),
                ]),
                const SizedBox(height:6),
                Expanded(
                  child:shown.isEmpty
                    ?const Center(child:Text('No students found'))
                    :ListView.builder(
                      itemCount:shown.length,
                      itemBuilder:(c,i){
                        final s=shown[i];
                        return Card(
                          margin:const EdgeInsets.only(bottom:10),
                          child:ListTile(
                            leading:CircleAvatar(
                              backgroundColor:Colors.green.shade100,
                              child:Text(s.name[0]),
                            ),
                            title:Text(
                              s.name,
                              style:const TextStyle(fontWeight:FontWeight.bold),
                            ),
                            subtitle:Text('Roll: ${s.roll}  •  ${s.course}'),
                            trailing:IconButton(
                              tooltip:'Delete student',
                              icon:const Icon(Icons.delete_outline,color:Colors.red),
                              onPressed:()=>setState(()=>students.remove(s)),
                            ),
                          ),
                        );
                      },
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
