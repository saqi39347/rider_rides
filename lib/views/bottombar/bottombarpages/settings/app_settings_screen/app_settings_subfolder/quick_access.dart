

import 'package:flutter/material.dart';

class QuickAccessScreen extends StatefulWidget {
  const QuickAccessScreen({super.key});

  @override
  State<QuickAccessScreen> createState() => _QuickAccessScreenState();
}

class _QuickAccessScreenState extends State<QuickAccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Quick Access',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
       body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 93,
            child: Column(
              children: [
                ListTile(
                  // tileColor: ,
                  trailing: Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: Switch(value: true, onChanged:(e){})
                  ),
                  // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                  onTap: () => null,
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                  title: const Text(
                    'Quick Access Button',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),
                const Divider(
                  thickness: 0.5,
                ),
                
              ],
            ),
          ),
          const SizedBox(height: 10,),
               const   Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text(
                    
                      'The button is displayed over applications to be able to receive orders',



                     textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                 ),
                  const SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.white,
            height: 93,
            child: Column(
              children: [
                ListTile(
                  // tileColor: ,
                  trailing: Padding(
                    padding:const EdgeInsets.all(8.0),
                    child: Switch(value: true, onChanged:(e){})
                  ),
                  // Image.asset('assets/small_logo.png', height: 25,width: 25,),
                  onTap: () => null,
                  // Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),

                  title: const Text(
                    'Widget',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),
                const Divider(
                  thickness: 0.5,
                ),
                
              ],
            ),
          ),
          const SizedBox(height: 10,),
               const   Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text(
                    
                      'The widget helps to manage the trip when you are in an active trip.',

                     textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                 ),
        ],
      ),
   
    );
  }
}