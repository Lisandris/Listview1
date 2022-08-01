import 'package:flutter/material.dart';
import 'package:fl_components/widgers/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox( height: 10 ),
          CustomCardType2( name: ' Un hermoso Gatito', imageUrl: 'https://uvn-brightspot.s3.amazonaws.com/assets/vixes/imj/3/30-cosas-de-los-gatos-que-no-sabias-3.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2( imageUrl: 'https://blogdeanimales.com/wp-content/uploads/mch/gato-persa-blanco_1977.jpg',),
          SizedBox( height: 20 ),
          CustomCardType2( imageUrl: 'https://estaticos.muyinteresante.es/uploads/images/gallery/59f0769f5cafe8965b3c9869/gato-himalayo-redes.jpg',),
          SizedBox( height: 100 ),
          
         
        ],
      )
    );
  }
}
