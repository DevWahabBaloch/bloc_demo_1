import 'dart:developer';

import 'package:bloc_demo_1/core/app_button.dart';
import 'package:bloc_demo_1/core/di/service_locator.dart';
import 'package:bloc_demo_1/features/settings/bloc/settings_cubit.dart';
import 'package:bloc_demo_1/features/settings/bloc/settings_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatelessWidget {
  SettingsPage({super.key});

  final SettingsCubit _settingsCubit = sl<SettingsCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<SettingsCubit, SettingsState>(
              bloc: _settingsCubit,
              builder: (context, state) {
                if (state is SettingsLoadingState) {
                  log('message: Loading state');
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is SettingsFailureState) {
                  log('message: Failure state');
                  return Text(
                    state.message,
                    style: const TextStyle(fontSize: 22.0),
                  );
                }
                if (state is SettingsSuccessState) {
                  log('message: Success state');
                  return Text(
                    state.status,
                    style: const TextStyle(fontSize: 22.0),
                  );
                }

                return Text(
                  'state:  Initial State',
                  style: const TextStyle(fontSize: 22.0),
                );
              },
            ),
            const SizedBox(height: 50.0),
            AppButton(
              onPressed: () {
                _settingsCubit.attemptToSettings();
              },
              title: ' Tapp',
            ),
          ],
        ),
      ),
    );
  }
}
