import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_dashboard/routing/routes.dart';

class DashBoardAppBar extends StatelessWidget {
  const DashBoardAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: (() => navKey.currentState!.pushNamed(routeAccount)),
              child: const Text(
                'Account',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            const SizedBox(width: 100.0),
            GestureDetector(
              onTap: (() => navKey.currentState!.pushNamed(routeCollection)),
              child: const Text(
                'Collections',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            const SizedBox(width: 100.0),
            GestureDetector(
              onTap: (() => navKey.currentState!.pushNamed(routeParameters)),
              child: const Text(
                'Parameters',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
