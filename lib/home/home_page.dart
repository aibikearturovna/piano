import 'package:flutter/material.dart';

import 'buttons.dart';

class Piano extends StatelessWidget {
  const Piano ({Key? key}) : super (key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text ('Piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Stack(
                  children:[
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children:const [
                        WhiteButton(notes: 1,),
                        WhiteButton(notes: 2,),
                        WhiteButton(notes: 3,),
                        WhiteButton(notes: 4,),
                        WhiteButton(notes: 5,),
                        WhiteButton(notes: 6,),
                        WhiteButton(notes: 7,),
                      ],
                    ),
                    Positioned(
                      left: 50.0,
                      right: 0.0,
                      top: 0.0,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                      children:const [
                        BlackButton(note: 'lya',),
                        BlackButton(note: 'sol'),
                        BlackButton(visible: false,note: 'fa'),
                        BlackButton(note: 'mi'),
                        BlackButton(note: 're'),
                        BlackButton(note: 'do'),
                      ],
                    ),
                    ),                  
                  ],
                );               
              })
              ),
           ),
        ],
      ),    
    );
  }
}


