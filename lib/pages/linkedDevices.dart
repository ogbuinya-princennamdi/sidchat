import 'package:flutter/material.dart';


class linkedDevices extends StatelessWidget {
  const linkedDevices({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Text('linked Devices',
          style: TextStyle(color: Colors.white),
        ),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(


                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset('assest/links.jpg',
                  ),
                ),
              ),
              
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30,right: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                 Text('Use SIDChat on Web, Desktop, and other \n'
                    'devices learn more..', style: TextStyle(fontSize: 16),),


                ],
              ),
            ),
const SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,

              width: 350,
              height: 50,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(10, 155, 120, 1),
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(20.0),
                  topEnd: Radius.circular(20.0),
                  bottomStart: Radius.circular(20.0),
                  bottomEnd: Radius.circular(20.0),
                ),
              ),

              child: const Text("link a device",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
const SizedBox(height: 20,),
            Container(
              height: 400,
              width: 400,
              color: Colors.grey.withOpacity(0.1),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.lock, size: 15,),
                    Text('Your personal message are ene-to-end encrypted \n'
                        'on all your devices'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}