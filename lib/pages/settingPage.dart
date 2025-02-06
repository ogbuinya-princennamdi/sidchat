import 'package:flutter/material.dart';

class settingPage extends StatelessWidget {
  const settingPage({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Settings',
          style: TextStyle(color: Colors.white),
        ),
        foregroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),

                    ),
                    child: ClipRRect(
                      child: Image.asset('assest/img1.jpg',
                      fit: BoxFit.cover,
                        width: 65,
                        height: 65,),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children:[


                        const Text('Diamond Coins',
                        style: TextStyle(fontWeight: FontWeight.w500,
                        fontSize: 24),),
                        Container(
                          alignment: Alignment.centerLeft,

                        child:Text('Realtors',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.8),
                        ),),),

                                  ],

                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 10,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: const Icon(Icons.qr_code_scanner_sharp, color: Color(0xFF075E55),
                      weight:10,),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: const Icon(Icons.arrow_drop_down_circle_outlined,
                          color: Color(0xFF075E55),
                      size: 30,),
                    ),
                  ),
                ],
              ),
            ),
const Divider(),
      //Account widget of th settings
         const ListTile(
          leading: Padding(
            padding: EdgeInsets.only(top:6),
            child: Icon(Icons.key),

          ),
           title: Text('Account',
           style: TextStyle(
             fontWeight: FontWeight.w700,
             fontSize: 17,
             color: Colors.black,
           ),),

           subtitle: Text('Security notifications, change number',
           style: TextStyle(
             fontSize: 15,
           ),),
         ),
//SECOND LIST TILE
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.lock),

              ),
              title: Text('Privacy',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('Block account, disappearing messages',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),
// THIRD LISTILE

            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.key),

              ),
              title: Text('Avatar',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('Create,edit, profile photo',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),
//4th Listile
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.message_sharp),

              ),
              title: Text('Chat',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('Themes, wallpapers, chart history',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),
//5th listile
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.notifications),

              ),
              title: Text('Notifications',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('Message, group & call tones',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),
// storage listtile
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.circle_outlined),

              ),
              title: Text('Storage and data',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('Network usage, auto-download',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),
//APP LANGUAGE LISTILE
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.key),

              ),
              title: Text('App language',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('English(devices language',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),
//HELP LISTILE
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.question_mark_rounded),

              ),
              title: Text('Help',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

              subtitle: Text('Help center, contact us, privacy policy',
                style: TextStyle(
                  fontSize: 15,
                ),),
            ),

            // INVITE A FRIEND LISTILE
            const ListTile(
              leading: Padding(
                padding: EdgeInsets.only(top:6),
                child: Icon(Icons.group),

              ),
              title: Text('Invite a friend',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Colors.black,
                ),),

            ),

            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('from', style: TextStyle(fontWeight: FontWeight.bold),),
                Icon(Icons.abc_sharp)
              ],
            ),

          ],

        ),



      ),
    );
  }
}