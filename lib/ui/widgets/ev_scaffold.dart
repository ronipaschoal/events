import 'package:events/cubits/app/app_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EvScaffold extends StatefulWidget {
  final Widget child;

  const EvScaffold({
    super.key,
    required this.child,
  });

  @override
  State<EvScaffold> createState() => _EvScaffoldState();
}

class _EvScaffoldState extends State<EvScaffold> {
  late final appCubit = context.read<AppCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) => previous.themeMode != current.themeMode,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Flutter event app'),
            actions: [
              IconButton(
                icon: state.themeMode == ThemeMode.light
                    ? const Icon(Icons.light_mode_outlined)
                    : const Icon(Icons.dark_mode_outlined),
                onPressed: appCubit.toggleThemeMode,
              ),
            ],
          ),
          body: widget.child,
        );
      },
    );
  }
}
