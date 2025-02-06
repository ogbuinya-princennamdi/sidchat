import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class chatMessage extends StatelessWidget{
  const chatMessage({super.key});

  @override
  Widget build (BuildContext context){
    return Column(
      children: [
        Row(
          children: [
            Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assest/img1.jpg',
                width: 45,
                height: 45,),
              ),


            ),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: Container(


                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.receive),
                  child: Container(
                    width: 250,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE4FDCA),
                    ),
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 25,right: 10),
                    child: const Text('hello lucky, whatsup', style:
                      TextStyle(fontSize: 17),),
                  ) ,
                ),
              ),
            ),

          ],
        ),
// SENDERS ROW
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 300,

                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(top: 20, left: 20, bottom: 15),
                child: ClipPath(
                  clipper: UpperNipMessageClipperTwo(MessageType.send),
                  child: Container(
                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10,right: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),

                    child: const Text('my G, hope you are well, have being calling ypu for '
                        'long now but no answer from your end, hope all is well?', style:
                    TextStyle(fontSize: 17),),
                  ) ,
                ),


              ),


                Container(

                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assest/img2.jpg',
                      width: 45,
                      height: 45,),
                  ),

                ),

            ],
          ),
        ),
      ],

    );
  }
}