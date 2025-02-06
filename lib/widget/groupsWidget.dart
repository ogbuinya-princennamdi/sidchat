import 'package:flutter/material.dart';

class groupsWidget extends StatelessWidget {
  const groupsWidget({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:[
            const Row(

            children: [

/*
              Container(
                margin: EdgeInsets.all( 10),
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),


                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [

                    Icon(Icons.groups, size: 40,
                    ),
                    Icon(Icons.add_box, size: 15,fill: 1.0,weight: 20,color: Color.fromRGBO(10, 155, 120, 1),),
                  ],
                ),

              ),*/


            ],
          ),
            Column(

              children:
              [Row(
      children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: const Icon(Icons.groups , size: 40,),),
              ),
              const Text('New community',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
      ],
            ),
        ],
      ),
            const Divider(
              thickness: 4,
            ),


            const SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.popAndPushNamed(context, 'welcomePage');
              },
              child: const Text('Welcome'),

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