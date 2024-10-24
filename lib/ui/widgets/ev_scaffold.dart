import 'package:flutter/material.dart';

class EvScaffold extends StatelessWidget {
  final Widget child;

  const EvScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter event app'),
      ),
      body: child,
    );
  }
}
