import 'package:flutter/material.dart';
import 'package:rides_driver_app/widgets/new%20widget/custom_appbar.dart';
class PreviousCompaign extends StatefulWidget {
  const PreviousCompaign({Key? key}) : super(key: key);

  @override
  State<PreviousCompaign> createState() => _PreviousCompaignState();
}

class _PreviousCompaignState extends State<PreviousCompaign> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ' Previous Compaign', backicon: const Icon(null), backgroundColor: Colors.white, textstyle:Colors.black,),
      body:  Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: 30,
            decoration:  BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TabBar(
              controller: _tabController,
              tabs:  [
                Tab(text: 'All',),
                Tab(text: 'Completed'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                // Widget for "All" tab
                Center(child: Text('All Tab')),
                // Widget for "Completed" tab
                Center(child: Text('Completed Tab')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
