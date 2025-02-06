import 'package:flutter/material.dart';
import 'package:sidchat/functions/mySwitch.dart';
import 'package:sidchat/pages/muteButton.dart';


class profilePage extends StatelessWidget{
  const profilePage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(165),
        child: AppBar(
          foregroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed:(){},
                icon: const Icon(Icons.more_vert, size: 30,),)
          ],
          flexibleSpace: Stack(
           children: [
             Positioned.fill(
                 child: Image.asset('assest/img2.jpg',
                 fit: BoxFit.cover,),
             ),


           ],
          ),
        ),
      ),

      body: SingleChildScrollView(

        child: Column(

          children: [
            Container(
              alignment: Alignment.center,
              child: const Text('Princess Gladys', style:
                TextStyle(fontSize: 30, fontWeight: FontWeight.bold,
                color: Colors.black),),
            ),
            Container(
              alignment: Alignment.center,
                child: const Text('+2348101228934',
                style: TextStyle(fontSize: 24, color: Colors.black),)),



            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 2),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),

                    onTap: (){
                      Navigator.canPop(context);
                    },
                    child: Container(

                      margin: const EdgeInsets.only(left:4,top: 2),

                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.2),
                            width: 2),
                      ),
                      child: const Column(
                        children: [


                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.call,size: 30,color: Color(0xFF075E55),),
                          ),


                          Text('Audio', style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),

                //VIDEO START HERE
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 2),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),

                    onTap: (){
                      Navigator.canPop(context);
                    },
                    child: Container(

                      margin: const EdgeInsets.only(left:4,top: 2),

                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.2),
                            width: 2),
                      ),
                      child: const Column(
                        children: [


                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.videocam,size: 30,color: Color(0xFF075E55),),
                              ),


                          Text('Video', style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
// SEARCH STARTS HERE
                Padding(
                  padding: const EdgeInsets.only(left: 2, top: 2),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(30),

                    onTap: (){
                      Navigator.canPop(context);
                    },
                    child: Container(

                      margin: const EdgeInsets.only(left:4,top: 2),

                      width: 120,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.withOpacity(0.2),
                            width: 2),
                      ),
                      child: const Column(
                        children: [


                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.search,size: 30,color: Color(0xFF075E55),),
                          ),


                          Text('Search', style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.bold
                          ),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.only(left: 15,),
                alignment: Alignment.centerLeft,
                child: const Text('Hey there, i am using LitChat'
                    ' Hey there, i am using LitChat'
                    ' Hey there, i am using LitChat',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),),
              ),
            ),
            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: (){},
              child: const Row(
                children: [
                   Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Text('Media, links, and docs', style:
                       TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                   ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Text('23', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18,
                    ),),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            //IMAGE PICTURES HERE

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(


                children: [
                    for(int i=0;i<=10;i++)

                  InkWell(


                    onTap: (){

                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Container(

                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black38,
                        ),

                        child: Image.asset('assest/img$i.jpg',
                        width: 100,height: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),
            InkWell(
              onTap: () {


                // Here, you can place any widget or functionality you want
                // to trigger when the InkWell is tapped
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Mute notifications', style:
                        TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold,
                        ),),
                      content: const Text('Other members will not see'
                          'that you muted this chat. You will'
                          'still be notified if you are mentioned',
                      style: TextStyle(fontSize: 18),),

                      actions: <Widget>[
                        const popupMenuButton(),

                        Row(
                          children: [

                            TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: const Text('Cancel'),),
                            const Spacer(),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),


                          ],

                        ),
                      ],
                    );
                  },
                );
              },



              child: const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.notifications, size: 30,),
                      ),

                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text('Mute notifications', style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Helvetica Neue',
                        ),),
                      ),
                      Spacer(),
                      mySwitch(),

                      //Custome notification


                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            //Custome notification
            InkWell(
              onTap: (){},
              child: const Column(
                children:[ Row(
                  children:[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.music_note, size: 30,),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text('Custom notifications', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Helvetica Neue',
                      ),),
                    ),
                  ],

                ),
                  ],
              ),
            ),

            //meida visibility
            const SizedBox(height: 30,),
            InkWell(
              onTap: (){},
              child: const Column(
                children: [
                  Row(
                  children:[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.image, size: 30,),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text('Media Visibility', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Helvetica Neue',
                      ),),
                    ),
                  ],

                ),
                  ],
              ),
            ),
            // starrred messages
            const SizedBox(height: 30,),

            //STARRED MESSAGES
            InkWell(
              onTap: (){},
              child: const Column(
                children: [
                  Row(
                  children:[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.star_border_outlined, size: 30,),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text('Starred messages', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Helvetica Neue',
                      ),),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: Text('1', style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Helvetica Neue',
                      ),),
                    ),
                  ],

                ),
                  ],
              ),
            ),
            const SizedBox(height: 30,),
            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),



            //ENCRYPTIONS
            InkWell(
              onTap: (){},
              child: const Column(

                children:[ Row(
                  children:[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.lock, size: 30,),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text('Encryption', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Helvetica Neue',
                      ),),
                    ),


                  ],

                ),

                         Padding(
               padding: EdgeInsets.only(left: 35.0),
               child: SizedBox(
                 width: 300,
                 height: 70,
                 child: Text('Message and calls are end -to-end '
                     'encryption. Tap to verify', style: TextStyle(
                   fontSize: 18,
                   fontFamily: 'Helvetica Neue',
                 ),),
               ),
                         ),
                  ],
              ),
            ),


                //DISAPPEARING MESSAGES
                InkWell(
                  onTap: (){},
                  child: const Row(
                    children:[
                    Padding(
                      padding: EdgeInsets.all( 8),
                      child: Icon(Icons.av_timer_outlined, size: 30,),
                    ),


                    Padding(
                      padding: EdgeInsets.only(left: 30.0),
                      child: Text('Diappearing message', style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Helvetica Neue',
                      ),),
                    ),
                    ],


                  ),

                ),
            
            const SizedBox(
              height: 30,
            ),
            //CHAT LOCK
            
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.lock, size: 34,),
                ),
                Padding(
                  padding: EdgeInsets.only(left:25.0),
                  child: Text('Chat lock', style:TextStyle(
                    fontFamily:
                    'Helvetica Neue',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),),
                ),
                Spacer(),
                
                mySwitch(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: SizedBox(
                width: 300,
                height: 70,
                child: Text('Lock and hide this chat on this device', style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Helvetica Neue',
                ),),
              ),
            ),


            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),


            Container(
              alignment: Alignment.centerLeft,

                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('2 groups in common', style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Helvetica Neue',
                  ),),
                )

            ),
            //Groups section
            
            InkWell(
              onTap: (){},
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: const Color(0xFF075E55),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: const Icon(Icons.group, size: 40,color: Colors.white,),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Create group with My',
                    style: TextStyle(
                      fontFamily: 'Helvetica Neue',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
              ],
              ),
            ),

            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),


            Container(
              alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Other phones',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Helvetica Neue',
                  ),),
                )),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left:8.0),
                  child: Text('+2348101228934', style: TextStyle(
                    fontFamily: 'Helvetica Neue',
                    fontSize: 24,
                  ),),
                ),
                const Spacer(),
                InkWell(
                  onTap: (){},

                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.message_sharp, color: Color(0xFF075E55),size: 30,),
                    )
                ),

                InkWell(
                    onTap: (){},

                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.call, color: Color(0xFF075E55),size: 30,),
                    )
                ),

                InkWell(
                    onTap: (){},

                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.videocam_outlined, color: Color(0xFF075E55),size: 30,),
                    )
                ),

                
              ],



            ),
            Divider(
              height: 50,
              thickness: 10,
              color: Colors.grey.withOpacity(0.2),
            ),


            //Blocking number sections


            InkWell(
              onTap: (){},
              child: const Row(
                children:[
                  Padding(
                    padding: EdgeInsets.all( 8),
                    child: Icon(Icons.block_flipped, size: 30,color: Colors.red,),
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text('Block My Lovely Princess', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Helvetica Neue',
                      color: Colors.red,
                    ),),
                  ),
                ],


              ),

            ),
const SizedBox(height: 30,),
// REPORT CONTACT SECTION
            InkWell(
              onTap: (){},
              child: const Row(
                children:[
                  Padding(
                    padding: EdgeInsets.all( 8),
                    child: Icon(Icons.thumb_down, size: 30,
                    color: Colors.red,),
                  ),


                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text('Report My Lovely Princess', style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Helvetica Neue',
                      color: Colors.red,
                    ),),
                  ),
                ],


              ),

            ),
            Divider(
              height: 50,
              thickness: 5,
              color: Colors.grey.withOpacity(0.2),
            ),
            const SizedBox(height: 30,),



          ],
        ),
      ),
      
    );
  }
}