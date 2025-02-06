import 'package:flutter/material.dart';
import 'package:sidchat/widget/chatWidget.dart';
import 'package:sidchat/widget/updateWidget.dart';
import 'package:sidchat/widget/callsWidget.dart';
import 'package:sidchat/widget/groupsWidget.dart';


class Homepage extends StatelessWidget{
  const Homepage({super.key});


  @override
  Widget build (BuildContext context){
    return DefaultTabController(
      initialIndex: 1,
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            //custom size for the app bar
            preferredSize: const Size.fromHeight(70),
            child: AppBar(
              elevation: 0,
              title: const Padding(
                padding: EdgeInsets.only(top:15),
                child: Text(
                  'SIDchat',
                  style: TextStyle(
                    fontSize: 21,
                    color: Colors.white,
                  ),
                ),
              ),
// action buttons here///////// search camera,menu lines/////////////////////////////////

            actions: [
              const Padding(

                padding: EdgeInsets.only(top: 12,right: 20,),
                child: Icon(Icons.calculate_outlined,
                  size: 28,
                  color: Colors.white,),
              ),
              const Padding(

                  padding: EdgeInsets.only(top: 12,right: 20,),
              child: Icon(Icons.camera_alt,
              size: 28,
              color: Colors.white,),
              ),
              const Padding(
                  padding:EdgeInsets.only(top: 12,right: 15),
              child: Icon(Icons.search,
              size: 28,
                color: Colors.white,
              ),
              ),
              //popupmenu section
              PopupMenuButton(
               onSelected:(selected){
                 if(selected==5){
                   Navigator.pushNamed(context, 'settingPage');
                 }else

                 if(selected==4){
                   Navigator.pushNamed(context, 'starredMessages');
                 }else
                 if(selected==3){
                   Navigator.pushNamed(context, 'linkedDevices');
                 }else
                 if(selected==2){
                   Navigator.pushNamed(context,'newBroadcast' );
                 }else

                     if(selected==1){
                       Navigator.pushNamed(context, 'newGroup');
                     }
               },

                padding: const EdgeInsets.symmetric(vertical: 20),
                  iconSize: 28,
                  color: Colors.white,
                  iconColor: Colors.white,
                  surfaceTintColor:Colors.white,
                  elevation: 10,


                  itemBuilder: (context)=>[

                    const PopupMenuItem(

                        value: 1,

                        child:Text('New group',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17,),),
                    ),
                    const PopupMenuItem(
                      value: 2,

                      child: Text('New broadcast',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17,),),),

                    const PopupMenuItem(
                      value: 3,
                      child: Text('linked devices',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17,),),),

                    const PopupMenuItem(
                      value: 4,

                      child: Text('Starred messages',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17,),),),
                    const PopupMenuItem(
                      value: 5,
                      child: Text('Settings',
                        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17,),),),



                  ]),
            ],
            ),
          ),
          //body of the app begins here////////////////////////////

          body: Column(
            children: [
              Container(


                color: const Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  tabs: [
                    //TAB 1
                    Container(
                      margin: EdgeInsets.zero,

                      width:24,
                      child: const Tab(
                       icon: Icon(Icons.groups,color: Colors.white,
                       size: 28,),
                      ),
                    ),
                    //TAB 2
                    SizedBox(
                      width:90,
                        child: Tab(
                          child: Row(
                            children: [
                              const Text('Chats',

                              style: TextStyle(color: Colors.white,
                              fontSize: 18),),
                              const SizedBox(
                                width: 8,
                              ),

                              Container(
                                alignment: Alignment.center,
                                height: 22,
                                width: 22,
                               //padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  

                                ),
                                child: const Text('10',
                                style: TextStyle(
                                  color: Color(0xFF075E55),
                                  fontSize: 13,
                                ),),
                              ),
                            ],
                          ),

                        ),
                    ),
                    //TAB3
                    SizedBox(
                      width: 80,
                      child: Tab(
                        child: Row(
                          children: [
                            const Text('Updates',
                            style: TextStyle(fontSize: 18, color: Colors.white),),
                            const SizedBox(
                              width: 8,
                            ),

                            Container(
                              height: 5,
                              width: 5,


                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),

                              ),
                              child: const Icon(Icons.notifications_active,size: 1,),

                            ),
                          ],
                        ),
                      ),
                    ),
                    //TAB4
                    SizedBox(
                      
                      width: 80,
                      child: Tab(

                      child: Row(

                        children: [
                          const Text('Calls',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            alignment: Alignment.center,

                            height: 20,
                            width: 20,


                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Text('1',
                            style: TextStyle(
                              color:  Color(0xFF075E55),
                              fontSize: 14,
                            ),),
                          ),
                        ],
                      ),
                    ),
                    ),

                  ],
                ),
              ),
              const Flexible(
                flex: 1,
                  child: TabBarView(
                    children: [
                      //tab 1
                      groupsWidget(),
                      //chatWidget tab 2
                      chatWidget(),
                      //tab3 status widget
                      updateWidget(),

                      //tab 4 calls widget
                      callsWidget(),


                    ],
                  ))
            ],

          ),


        ),
    );
  }
}