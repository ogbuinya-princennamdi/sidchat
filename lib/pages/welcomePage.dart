import 'package:flutter/gestures.dart';
import "package:flutter/material.dart";
import 'package:sidchat/pages/terms.dart';
import 'package:sidchat/pages/registerPage.dart';

class  welcomePage extends StatelessWidget{
  static const List<String> languages = [

    'Chinese',
    'Spanish',
    'French',
    'Arabic',
    'Russian',
    'Portuguese',
    'German',
    'Japanese',
    'Hindi',
  ];

  const welcomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home: LanguageSelection(languages: languages),
    );
  }
}

  class LanguageSelection extends StatefulWidget {
  final List<String> languages;

  const LanguageSelection({super.key, required this.languages});

  @override
  _LanguageSelectionState createState() => _LanguageSelectionState();
  }

  class _LanguageSelectionState extends State<LanguageSelection> {
  String selectedLanguage = '';


  @override
  Widget build (BuildContext context){
    return Scaffold(

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: AppBar(
          backgroundColor: Colors.cyan.shade50,
        flexibleSpace: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                  children: [

                    ShaderMask(
                      shaderCallback: (Rect bounds) {

                        return const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [Colors.transparent, Colors.green],
                          tileMode: TileMode.clamp,

                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: Image.asset(
                        'assest/welcm2.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),

                    const Positioned(
                      bottom: 50,
                      left: 65,
                      child: Text(
                        'Welcome to SidChat',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                        fontSize: 34,
                        fontFamily: 'Helvetica Neue',
                          color: Colors.black
                      ),

                      ),
                      ),

                    const Positioned(
                      bottom: 10,
                      left: 65,
                        child:Text('Choose your language to get started',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20,
                              fontFamily: 'Helvetica Neue',
                              color: Colors.black
                          ),),

                    ),

        ],

        ),
            ],

          ),


        ),

        ),
      ),
      backgroundColor: Colors.cyan.shade50,

      body: Column(
        children: [
          const SizedBox(height: 50,),
          Center(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.cyan.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: DropdownButtonFormField<String>(

                    elevation: 15,


                   decoration: const InputDecoration(border: InputBorder.none,),
                    value: selectedLanguage.isEmpty ? null : selectedLanguage,

                    hint: const Row(


                      children: [
                        Icon(Icons.public,
                        size: 24,),
                        SizedBox(width: 10,),

                        Text('English (Default)',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Helvetica Neue',
                        ),),
                      ],
                    ),
                    items: widget.languages.map((String language) {
                      return DropdownMenuItem<String>(
                        value: language,
                        child: Text(language,
                        style: const TextStyle(fontSize: 20),),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedLanguage = value ?? '';
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
          // const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: SizedBox(
              width:400,
              child:RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Read our ',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                          fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchURL('www.privacy.com');
                        },
                    ),
                    const TextSpan(
                      text: 'Tap "Agree and continue" ',
                      style: TextStyle(color: Colors.black,fontSize: 20),
                    ),

                    //second

                    const TextSpan(
                      text: 'to accept the  ',
                      style: TextStyle(color: Colors.black,fontSize: 20),
                    ),
                    TextSpan(
                      text: 'Terms of service',
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.none,
                          fontSize: 20),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          launchURL('www.privacy.com');
                        },
                    ),
                  ],
                ),






            ),


            ),
          ),

          const SizedBox(height: 100,),
          InkWell(
            onTap: (){

               Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage())); setState(){}

            },

            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.cyan.shade100,


              ),
              child: const Center(

                child: Text('Agree and continue',
                  style: TextStyle(fontSize: 20,
                    fontFamily: 'Helvetica Neue', ),
                ),
              ),
            ),
          ),
        ],
      ),
    );


  }
}

