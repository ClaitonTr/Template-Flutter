import 'package:flutter/material.dart';
import 'package:flutter_template/app/app_widget.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadEnv();
  runApp(AppWidget());
}

Future<void> loadEnv() async {
  const isProduction = bool.fromEnvironment('dart.vm.product');
  await DotEnv.load(fileName: isProduction ? '.env' : '.env_dev');
}
