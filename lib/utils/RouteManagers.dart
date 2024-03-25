import 'package:flutter/material.dart';
import 'package:zigida_app/pages/details/DetailPage.dart';
import 'package:zigida_app/pages/notification/NotificationPage.dart';
import 'package:zigida_app/utils/Routes.dart';
class RouteManagers{

  static Route route(RouteSettings r){
    switch (r.name){
      case Routes.NotificationPage:
        return MaterialPageRoute(builder: (_)=>NotificationPage());
        case Routes.DetailPage:
        return MaterialPageRoute(builder: (_)=>DetailPage());
        default:
        return MaterialPageRoute(builder: (_) =>NotificationPage ());
    }
    }
  }



