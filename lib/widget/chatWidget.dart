import 'package:flutter/material.dart';


class chatWidget extends StatelessWidget{
  const chatWidget({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,
          vertical: 5),
          child: Column(
            children: [
              for(int i=0;i<=10;i++)
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'chatPage');

                },
                child: Container(

                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('assest/img$i.jpg',height: 65,
                            width: 65,),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //method to pull username comes here
                          Text('Lucky',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                          SizedBox(
                            height: 8,
                          ),
                          //here contains the php ans sql to display the  message sent
                          Text('HI lucky how are you doing',
                          style: TextStyle(fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.black),),

                        ],
                      ),
                      ),
                      const Spacer(),
                      Column(

                        children: [
                          const Text('5:58pm', style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),),
                          const SizedBox(height: 6,
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 27,
                            height: 27,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(40),

                            ),


                              child: const Text('103',
                              style: TextStyle(color: Colors.white),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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