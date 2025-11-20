import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ohara/my_app.dart';

void main(List<String> args) {
  runApp(const ProviderScope(child: MyApp()));
}
