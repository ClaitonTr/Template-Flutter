import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Template'),
      ),
      body: Container(
        child: Center(
          child: Text(env['base_url'] ?? ''),
        ),
      ),
    );
  }
}
