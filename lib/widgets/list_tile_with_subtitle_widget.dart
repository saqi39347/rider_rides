// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListTileWithSubtitleWidget extends StatelessWidget {
  IconData icon;
  Widget screen;
  String text;
  String subtitle;
  ListTileWithSubtitleWidget({
    Key? key,
    required this.icon,
    required this.screen,
    required this.text,
    required this.subtitle
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 93,
      child: Column(
        
        children: [
          ListTile(
            // tileColor: ,
            trailing:const Icon(Icons.arrow_forward_ios_sharp, ),
            // Image.asset('assets/small_logo.png', height: 25,width: 25,),
            onTap: ()=>  Navigator.push(context, MaterialPageRoute(builder: (_)=> screen)),
            leading: Icon(icon),
            title: Text(
              text,
              style:const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            
           
            subtitle: Text(subtitle),
            // Row(
            //   children: const [
            //     Icon(
            //       Icons.phone,
            //       color: Colors.grey,
            //       size: 15,
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //     Text(
            //       'Incoming call.',
            //       style: TextStyle(
            //         color: Colors.grey,
            //         fontSize: 12,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //     Text(
            //       'Sat',
            //       style: TextStyle(
            //         color: Colors.grey,
            //         fontSize: 12,
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 5,
            //     ),
            //   ],
            // ),
          ),
        const  Divider(thickness: 0.5,)
        ],
      ),
    );
  }
}
