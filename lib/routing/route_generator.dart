import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nft_dashboard/account/account.dart';
import 'package:nft_dashboard/collections/collections.dart';
import 'package:nft_dashboard/home/home.dart';
import 'package:nft_dashboard/main.dart';
import 'package:nft_dashboard/not-found/not_found.dart';
import 'package:nft_dashboard/parameters/parameters.dart';
import 'package:nft_dashboard/routing/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const HomePage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
                  opacity: a,
                  child: c,
                ),
            transitionDuration: const Duration(milliseconds: 300));
      case routeCollection:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const CollectionPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
                  opacity: a,
                  child: c,
                ),
            transitionDuration: const Duration(milliseconds: 300));
      case routeParameters:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const ParametersPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
                  opacity: a,
                  child: c,
                ),
            transitionDuration: const Duration(milliseconds: 300));
      case routeAccount:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const AccountPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
                  opacity: a,
                  child: c,
                ),
            transitionDuration: const Duration(milliseconds: 300));
      default:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const NotFoundPage(),
            transitionsBuilder: (_, a, __, c) => FadeTransition(
                  opacity: a,
                  child: c,
                ),
            transitionDuration: const Duration(milliseconds: 300));
    }
  }
}
