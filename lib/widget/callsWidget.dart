import 'package:flutter/material.dart';

class callsWidget extends StatelessWidget{
  const callsWidget({super.key});

  @override
  Widget build(BuildContext content){

    return Scaffold(

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromRGBO(10, 155, 120, 1),

                        border: Border.all(color: const Color.fromRGBO(10, 155, 120, 1),
                            width: 5)
                    ),

                    margin: const EdgeInsets.symmetric(vertical: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: const Icon(Icons.link_sharp, size: 30,color: Colors.white,),


                    ),

                  ),
                  const Padding(padding: EdgeInsets.only(left: 12),),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Create call link', style:
                        TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.6),
                        ),),
                      const SizedBox(
                        height: 10,
                      ),
                      Text('Share a link for your WhatsApp call',
                        style: TextStyle(color: Colors.black.withOpacity(0.6),),),
                    ],
                  ),



                ],
              ),

            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child:

                  Text('Recent',
                  style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6), ),),
            ),
            const SizedBox(height: 8,),
            for(int i=0; i<4;i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.white, width: 4),

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assest/img4.jpg'),
                    ),

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Geraldine Ugochi',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      const SizedBox(height: 8,),
                      const Row(
                        children: [
                          Icon(Icons.call_made_sharp,
                          color: Colors.green,),


                          Text('Yesterday,7:11 PM'),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.call,color: Colors.green,),

                ],

              ),
            ),


          ],

        ),






      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color.fromRGBO(10, 155, 120, 1),

        elevation: 10,
        child: const Icon(Icons.add_box_sharp),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );

  }
}