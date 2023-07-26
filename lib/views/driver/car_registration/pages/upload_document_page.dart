import 'dart:io';

import 'package:flutter/material.dart';


class UploadDocumentPage extends StatefulWidget {
  const UploadDocumentPage({Key? key,required this.onImageSelected}) : super(key: key);

 final Function onImageSelected;

  @override
  State<UploadDocumentPage> createState() => _UploadDocumentPageState();
}

class _UploadDocumentPageState extends State<UploadDocumentPage> {


 
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        Text('Upload Documents',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),

        SizedBox(height: 30,),

        
        GestureDetector(
          onTap: (){
          },
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffE3E3E3).withOpacity(0.4),
              border: Border.all(color: Color(0xff2FB654).withOpacity(0.26),width: 1)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.cloud_upload,size: 40,color: Color(0xff7D7D7D),),

                Text('Tap here to upload ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xff7D7D7D)),),


              ],
            ),
          ),
        ),


      ],
    );
  }
}
