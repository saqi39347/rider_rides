import 'package:flutter/material.dart';


class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Theme',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
            const SizedBox(height: 15,),
         Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: double.infinity,
          color: Colors.white,
          padding:const EdgeInsets.only(left: 20),
          child:const Text('System Default', style: TextStyle(color: Colors.black),),
         ),
           Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: double.infinity,
          color: Colors.white,
          padding:const EdgeInsets.only(left: 20),
          child:const Text('Light', style: TextStyle(color: Colors.black),),
         ),
           Container(
          alignment: Alignment.centerLeft,
          height: 50,
          width: double.infinity,
          color: Colors.white,
          padding:const EdgeInsets.only(left: 20),
          child:const Text('Dark', style: TextStyle(color: Colors.black),),
         )
        ],
      ),
    );
  }
}