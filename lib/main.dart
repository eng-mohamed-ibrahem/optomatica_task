import 'package:flutter/material.dart';
import 'package:optomatica_task/core/utils/dependency_injection/dependency_locator.dart';
import 'package:optomatica_task/root_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const RootApp());
}
