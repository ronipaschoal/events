import 'package:events/ui/widgets/ev_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EvScaffold(
      child: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
