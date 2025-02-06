import 'package:flutter/material.dart';


class newGroup extends StatelessWidget {
  const newGroup({super.key});

  @override
  Widget build (BuildContext context){
    return DefaultTabController(
      length: 1,
      child: Scaffold(

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          
          child: AppBar(
            
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[ 
              Text('New group', style: TextStyle(fontSize: 16),),
              Text('Add members',style: TextStyle(fontSize: 16),),
            
            ],
          ),

            foregroundColor: Colors.white,
       actions: const [
         Padding(
             padding: EdgeInsets.only(top: 5, right: 15),
         child: Icon(Icons.search,size: 30,),

         ),
       ],

           ),

        ),
body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: Column(
      children: [
        const SizedBox(height: 5,),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text('Contact on WhatsApp'),
        ),
        const SizedBox(height: 10,),
        for(int i=0;i<10;i++)
        Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),


              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assest/img$i.jpg',
                fit: BoxFit.cover,
                width: 55,
                height: 55,
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Text('+2348101228934',style: TextStyle(fontSize: 16),),
                  SizedBox(height: 2,),
                  Text('Hey there, I am using SIDChat',style: TextStyle(fontSize: 16),),
                ],
              ),
            ),

          ],
        ),


      ],

    ),
  ),

),
floatingActionButton: FloatingActionButton(
  backgroundColor: const Color.fromRGBO(10, 155, 120, 1),
  elevation: 10,
  onPressed: (){},
  child: const Icon(Icons.arrow_forward),
),
floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}