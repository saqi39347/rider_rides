import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PreviousCompaigns extends StatefulWidget {
  const PreviousCompaigns({super.key});

  @override
  State<PreviousCompaigns> createState() => _PreviousCompaignsState();
}

class _PreviousCompaignsState extends State<PreviousCompaigns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.discount, size: 50,)),
    );
  }
}