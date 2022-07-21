import 'package:flutter/material.dart';

import 'listview1_screen.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (contex, index) => ListTile(
          leading: const Icon( Icons.ac_unit_sharp),
          title: const Text ('Nombre de ruta'),
          onTap: () {
           
           //final  Route = MaterialPageRoute(
           // builder: (context) => const Listview1Screen() 
           // );
           //Navigator.push(context,Route );

        Navigator.pushNamed(context, 'card' );

          },
        ), 
        separatorBuilder:( _, __ ) => const Divider(),
         itemCount: 100
      ),
    ); 
  
  }
}