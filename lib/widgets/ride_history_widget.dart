import 'package:flutter/material.dart';

class RideHistoryWidget extends StatefulWidget {
  RideHistoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<RideHistoryWidget> createState() => _RideHistoryWidgetState();
}

class _RideHistoryWidgetState extends State<RideHistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // itemCount: null,
        shrinkWrap: true,
        itemBuilder: (context, snapshot) {
          return 
          Container(
           padding:const EdgeInsets.only(left: 10,right: 10),
            color: Colors.white,
            height: 93,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '20/12/2023',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Baabda Labnan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const Text(
                  'Pessenger did\'nt show',
                  style: TextStyle(color: Colors.orange),
                ),
                const Divider(
                  thickness: 0.5,
                )
              ],
            ),
          );
      
      
        });
  }
}
