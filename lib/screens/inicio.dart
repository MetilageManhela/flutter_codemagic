import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'menubottom.dart';
import 'navbar.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
 
     return Container(
      
      child: Scaffold( 
          backgroundColor: Colors.white,
          appBar: AppBar(title: const Text('Início'),),
          drawer: NavBar(),
            bottomNavigationBar: BottomMenu(selected: 0,),
          body: Stack(
            children: [
            Container(
      
              margin: const EdgeInsets.symmetric(vertical: 120),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.40,
               child: Column(children: [
                  const Text(
    'BEM VINDO!',
    style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 27.0,
        // fontStyle: FontStyle.italic,
        // fontFamily: 'cursive'
    ),
),
SizedBox(height: 20,),
 const Text(
'PORTAGEM NÃO IDENTIFICADA',
    style: TextStyle(
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        // fontStyle: FontStyle.italic,
        // fontFamily: 'cursive'
    ),
),
               ]),
            ),
        Align(
        alignment: Alignment.bottomCenter,
        child:Container(
          height:MediaQuery.of(context).size.height*0.40,
          width:MediaQuery.of(context).size.width,
          
          decoration: const BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.fill,
         image: ExactAssetImage('assets/imagens/portagem.jpeg'),
         ))
        )
       ),
       ]
      )
     ),
    );
  }
}
