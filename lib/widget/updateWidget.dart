import 'package:flutter/material.dart';

class updateWidget extends StatelessWidget{
  const updateWidget({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:15, vertical : 5),
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),


                 Row(
                   children: [
                     Container(
                       alignment: Alignment.centerLeft,
                        child: const Text('Status',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                          ),),

                        ),
                     //Spacer(),
                     const Spacer(),
                     Container(

                       child: const Icon(Icons.more_vert,
                         color: Color(0xFF075E55),),

                     ),
                   ],
                 ),


              Container(
                margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                child: Row(
                  children: [
                    Container(

                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey,
                        width: 3)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assest/img1.jpg', fit:BoxFit.cover,height: 55, width: 55,),

                      ),

                    ),

                    Padding(padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('My stutus',
                        style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Tap to add status update',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black54.withOpacity(0.6),
                        ),)
                      ],


                    ),),
                    //Spacer()



                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Recent Updates',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              // AFTER RECENT UPDATES////////////////////////////////////////////////////////
              for(int i=0; i<4;i++)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.blue,width: 4),

                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assest/img$i.jpg',
                        height: 55,
                        width: 55,
                        fit: BoxFit.cover,),

                      ),



                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          const Text('Favour',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),),
                          Text('Today 12am',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),)
                        ],

                      ),

                    ),
                  ],
                ),
              ),

              //VIEWED UPDATES/////////////////////////////////
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Viewd Updates',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
              ),
              // AFTER RECENT UPDATES////////////////////////////////////////////////////////
              for(int i=0; i<4;i++)
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(1.5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: Colors.grey,width: 4),

                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset('assest/img$i.jpg',
                            height: 55,
                            width: 55,
                            fit: BoxFit.cover,),

                        ),



                      ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const Text('joy',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),),
                            Text('Yesterday 12:30pm',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.6),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),)
                          ],

                        ),

                      ),
                    ],
                  ),
                ),
              //EDIT AND CAMERA CONTAINER NEXT
      ElevatedButton(


      onPressed: (){},
      child: const Icon(Icons.camera_alt),

      ),
      ],
          ),

        ),




      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color.fromRGBO(10, 155, 120, 1),

        elevation: 10,

        child: const Icon(Icons.camera_alt),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );

  }
}