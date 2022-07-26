// import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:flutter/material.dart';

// import 'listview1_screen.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text ('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (contex, i ) => ListTile(
          leading: Icon( menuOptions[i].icon, color: Colors.pink, ),
          title: Text (menuOptions[i].name ),
          onTap: () {
           
           //final  Route = MaterialPageRoute(
           // builder: (context) => const Listview1Screen() 
           // );
           //Navigator.push(context,Route );

        Navigator.pushNamed(context, menuOptions[i].route);

        },
      ), 
        separatorBuilder:( _, __ ) => const Divider(),
         itemCount: menuOptions.length 
      ),
    ); 
  
  }
}