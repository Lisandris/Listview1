import 'package:fl_components/widgers/widgets.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

 final Map<String, String> formValues = {
  'first_name': 'Lisandris',
  'lasst_name': 'Rodriguez',
  'email'     : 'Lis17@hotmail.com',
  'password'  : '12345',
  'role'      : 'Admin'
 };

    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            
            child: Column(
              children: [
                
              CustominputField( labelText: 'Nombre', hintText: 'Nombre del usuario', formValues: formValues, formProperty: 'firs_name',),
              const SizedBox( height: 30 ),
          
              CustominputField( labelText: 'Apellido', hintText: 'Apellido del usuario',formValues: formValues, formProperty: 'last_name',),
              const SizedBox( height: 30 ),
          
              CustominputField( labelText: 'Correo', hintText: 'Correo del usuario', keyboardType: TextInputType.emailAddress,formValues: formValues, formProperty: 'email',),
              const SizedBox( height: 30 ),
              
              CustominputField( labelText: 'Contraseña', hintText: 'Contraseña del usuario', obscureText: true,formValues: formValues, formProperty: 'password',),
              const SizedBox( height: 30 ),

              DropdownButtonFormField<String>(
                value: 'Admin',
                items: const [
                  DropdownMenuItem( value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem( value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem( value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem( value: 'Jr. Developer', child: Text('Jr. Developer')),
                ],
                onChanged: (value) {
                  print(value);
                  formValues['role'] = value ?? 'Admin';
                }
              ),



          
                ElevatedButton(
                  child: const SizedBox (
                    width: double.infinity,
                    child: Center (child: const Text ('Guardar'))
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode() );

                    if ( !myFormKey.currentState!.validate() ) {
                      print('Formulario no valido');
                      return;
                    }

                    print(formValues);
                  }, 
                )
          
          
              ],
            ),
          )
        ),  
      ),
    );
  }
}

