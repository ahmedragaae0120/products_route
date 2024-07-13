import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:products_route/bloc_observer.dart';
import 'package:products_route/core/Di/di.dart';
import 'package:products_route/core/api/api_manager.dart';
import 'package:products_route/my_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  ApiManager.init();
  configureDependencies();
  runApp(const MyApp());
}
