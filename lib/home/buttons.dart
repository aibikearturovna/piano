import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  const WhiteButton({
    Key? key,
    required this.notes,
  }) : super(key: key);

  final int notes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        height: 270,
        width: 100,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
            overlayColor: MaterialStateProperty.resolveWith((states){
              return states.contains(MaterialState.pressed) 
              ? Colors.grey : null;
            })
          ),
          onPressed:() {
            AudioPlayer().play(
              AssetSource('notes/note$notes.wav')
            );
          }, 
          child:const Align(
            alignment: Alignment.bottomCenter,
            child: Text('',
            style: TextStyle(color: Colors.black),),
          )
          ),
      ),
    );
  }
}

class BlackButton extends StatelessWidget {
  const BlackButton({
    Key? key,
    required this.note,
    this.visible = true,
  }) : super(key: key); 
  final bool visible;
  final String note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:5),
      child: SizedBox(
        width: 95,
        height:170,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/$note.mp3')
              );
            }, 
            child:const Text('')
            ),
        ),
      ),
    );
  }
}
