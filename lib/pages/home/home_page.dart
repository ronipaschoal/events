import 'package:events/ui/widgets/ev_scaffold.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return EvScaffold(
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Center(
          child: Text(
            'Home Page',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}
