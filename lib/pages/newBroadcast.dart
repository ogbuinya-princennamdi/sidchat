import 'package:flutter/material.dart';


class newBroadcast extends StatelessWidget {
  const newBroadcast({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[Text('New broadcast',
            style: TextStyle(color: Colors.white, fontSize: 16),),
          Text('o of 256 selected',style: TextStyle(fontSize: 16),),
          
          ],
          
        ),
        actions: const [
          Padding(padding:
          EdgeInsets.only(top:5,right: 15),
          child:Icon(Icons.search,size: 30,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(4),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Only contacts with +2348101228934 in there contact address'
                  ' book will recieve your broadcast'
                ,style: TextStyle(
                  wordSpacing: 4,
                ),),
            ),
            const Divider(),
            for(int i=0;i<10;i++)


            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),

                  child: Container(
                    width: 55,
                    height:55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assest/img$i.jpg', fit: BoxFit.cover,),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('+2348101228934', style: TextStyle(fontSize: 16),),
                      Text('Hey there, i am using SIDChat', style: TextStyle(fontSize: 16),),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),


      ),
    );
  }
}