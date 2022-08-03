import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only( right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.pink[800],
              child: const Text('SL')
            ),
          )
        ],

      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage('https://fotografias.lasexta.com/clipping/cmsimages02/2019/01/25/DB41B993-B4C4-4E95-8B01-C445B8544E8E/69.jpg?crop=1:1,smart&width=1200&height=1200&optimize=low&format=webply'),
         )
      ),
    );
  }
}