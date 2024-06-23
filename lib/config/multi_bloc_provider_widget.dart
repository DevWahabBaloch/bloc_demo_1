import 'package:bloc_demo_1/core/di/service_locator.dart';
import 'package:bloc_demo_1/features/auth/bloc/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MultiBlocProviderWidget extends StatelessWidget {
  final Widget child;
  const MultiBlocProviderWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (_) => sl<LoginCubit>(),
        ),
      ],
      child: child,
    );
  }
}
