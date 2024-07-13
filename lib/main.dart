import 'package:flutter/material.dart';
import 'package:products_route/core/Di/di.dart';
import 'package:products_route/core/api/api_manager.dart';
import 'package:products_route/my_app.dart';

void main() {
  ApiManager.init();
  configureDependencies();
  runApp(const MyApp());
}
