import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:patronaje_mobile_app/presentation/app_widget.dart';
import 'package:patronaje_mobile_app/presentation/dependencies/injections.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
