import 'package:flutter/material.dart';

void main() {
  runApp(const CopyHopperApp());
}

class CopyHopperApp extends StatelessWidget {
  const CopyHopperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Copy Hopper Mobile')),
      ),
    );
  }
}
