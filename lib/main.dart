import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sidchat/pages/chatPage.dart';
import 'package:sidchat/pages/profilePage.dart';
import 'pages/Homepage.dart';
import 'pages/settingPage.dart';
import 'pages/linkedDevices.dart';
import 'pages/newBroadcast.dart';
import 'pages/newGroup.dart';
import 'pages/starredMessages.dart';
import 'pages/welcomePage.dart';
// import 'functions/notificationList.dart';
import 'pages/muteButton.dart';
import 'pages/registerPage.dart';

Future main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){ await
  Firebase.initializeApp(options: const FirebaseOptions(
      apiKey: "AIzaSyAPxX2kJoooh36Zjwp6Y4JyQBjDGqdJW-M",
      appId: "1:11863227740:web:40cebe9d5dd3aecd459599",
      messagingSenderId: "11863227740",
      projectId: "sidchat-7555c"),
  );


  }
  await Firebase.initializeApp();

  runApp(const sidChat());

}
class sidChat extends StatelessWidget{
  const sidChat({super.key});


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,

        appBarTheme: const AppBarTheme(
          color: Color(0xFF075E55),
        ),
        //to prevent bottom sheet from the chat page use
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.black.withOpacity(0),
        ),

      ),
      routes: {
        "/": (context) => const Homepage(),

        "linkedDevices": (context)=> const linkedDevices(),
        "newBroadcast": (context)=> const newBroadcast(),
        "newGroup": (context)=> const newGroup(),
        "starredMessages": (context)=> const starredMessages(),
        "settingPage": (context)=> const settingPage(),
        "chatPage": (context)=> const chatPage(),
        "profilePage": (context)=> const profilePage(),
        // "notificationList": (context)=>notificationList(),
        "popupMenuButton": (context)=> const popupMenuButton(),
        "welcomePage": (context)=>  const welcomePage(),
        "LoginPage": (context)=>  const LoginPage(),


      },
    );
  }
}