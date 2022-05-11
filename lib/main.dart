import 'package:flutter/material.dart';
import 'package:nft_dashboard/appbar/appview.dart';
import 'package:nft_dashboard/home/home.dart';
import 'package:nft_dashboard/routing/route_generator.dart';
import 'package:nft_dashboard/routing/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NFT Dashboard',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey, primaryColor: Colors.brown.shade50),
      builder: (_, child) => AppView(
        child: child!,
      ),
      initialRoute: routeHome,
      navigatorKey: navKey,
      onGenerateRoute: RouteGenerator.generateRoute,
      home: const HomePage(),
    );
  }
}
