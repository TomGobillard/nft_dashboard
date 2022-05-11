import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_dashboard/appbar/app_bar.dart';

class AppView extends StatelessWidget {
  final Widget child;

  const AppView({Key? key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [const DashBoardAppBar(), Expanded(child: child)],
      ),
    );
  }
}
