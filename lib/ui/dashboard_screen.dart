import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_action/controllers/dashboard_controller.dart';
import 'package:flutter_github_action/models/dashboard_data_model.dart';

import '../controllers/app_data_state_controller.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appDataStateController = context.read<AppDataStateController>();
    return Center(
      child: BlocProvider(
        create: (context) => DashboardController(),
        child: BlocBuilder<DashboardController, DashboardDataModel>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                title: Text(state.name),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('You have pushed the button this many times:'),
                    Text(
                      '${state.counter}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  context.read<DashboardController>().accessToAppDataState();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            );
          },
        ),
      ),
    );
  }
}
