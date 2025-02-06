import 'package:flutter/material.dart';
import 'package:sidchat/pages/chatMessage.dart';
import 'package:sidchat/pages/inputText.dart';

class chatPage extends StatelessWidget{
  const chatPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          foregroundColor: Colors.white,
          leading: Padding(
            padding: const EdgeInsets.only(top: 10,),
            child: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(

                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assest/img2.jpg', fit: BoxFit.cover,
                    width: 40,
                    height: 40,),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'profilePage');
                    },
                    child: const Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Paul Debt', style: TextStyle(fontSize: 18),),
                        Text('last seen today at 11:48 Am',style: TextStyle(fontSize: 14),),
                      ],
                    ),
                  ),
                ),


                const Spacer(),
                Container(
                  child: const Icon(Icons.add_ic_call,size: 25,),
                ),
                const Spacer(),

                Container(
                  child: PopupMenuButton(
                    iconSize: 28,
                    elevation: 10,
                    position: PopupMenuPosition.under,




                    itemBuilder: (context)=>[

                      const PopupMenuItem(

                          child: Text('View contact', style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),),

                      const PopupMenuItem(
                          child: Text('Report', style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),),

                      const PopupMenuItem(

                        child: Text('Block', style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),),

                      const PopupMenuItem(
                        child: Text('Search', style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),),
                      const PopupMenuItem(

                        child: Text('Mute notification', style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),),

                      const PopupMenuItem(
                        child: Text('Disappering message', style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),),

                      const PopupMenuItem(

                        child: Text('Wallpaperr', style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),),

                      const PopupMenuItem(
                        child: Row(
                          children: [
                            Text('More', style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w700)
                            ),
                            Spacer(),

                            Icon(Icons.arrow_right_sharp,
                            color: Colors.black,
                            size: 30,),
                          ],
                        ),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
body: Container(
  height: double.infinity,
  width: double.infinity,


  decoration: const BoxDecoration(
    image: DecorationImage(
      image: AssetImage('assest/chatbg.jpg'),
      fit: BoxFit.cover,
    ),
  ),

  child: SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only( top:10,left: 8, right: 8, bottom: 80),
      child: Column(
        children: [
          Container(

              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white60.withOpacity(0.5),
              ),
              child: const Text('Today'),),

               Container(
                 padding: const EdgeInsets.all(8),
                 margin: const EdgeInsets.only(bottom: 20),
                 width: 350,
                 decoration: BoxDecoration(
                   color: Colors.grey.withOpacity(0.5),
                   borderRadius: BorderRadius.circular(5),


                 ),

                 child: const Row(
                   mainAxisAlignment: MainAxisAlignment.center,


                  children: [

                    Icon(Icons.lock,size: 14,),
                    Text('Messages and calls are end-to-end \n encrypted.  No oneoutside '
                          'of this chat , not even \n SIDChat,  can read or listen to them.'
                          'Tap to \n learn more', style:
                    TextStyle(fontSize:13,  ),textAlign: TextAlign.center,),

                  ],
                               ),
               ),
          const chatMessage(),
          const chatMessage(),
          const chatMessage(),


        ],
      ),
    ),

  ),
),
      bottomSheet: const inputText(),
    );
  }
}