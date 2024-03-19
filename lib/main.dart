import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zigida_app/apps/MonApplication.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
  );
  runApp(const MonApplication());
}

