import 'package:flutter/material.dart';
import 'package:rides_driver_app/utils/routes/routes_names.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';
class CompaignScreen extends StatefulWidget {
  const CompaignScreen({Key? key}) : super(key: key);

  @override
  State<CompaignScreen> createState() => _CompaignScreenState();
}

class _CompaignScreenState extends State<CompaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Compaign', backicon: const Icon(null), backgroundColor: Colors.white, textstyle:Colors.black,),
      body:  Row(
         mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              const SizedBox(height: 20,),
              const Text("Current Bonuses",style: TextStyle(color: Colors.grey),),
              const Text("LL 0.00",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 50),),
              const Text("Bonuses are paid out together with earnings",style: TextStyle(color: Colors.grey),),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, RoutesName.PreviousCompaign);
              }, child: const Text("View Previous Campaign")),
            ],
          )


        ],
      ),
    );
  }
}
