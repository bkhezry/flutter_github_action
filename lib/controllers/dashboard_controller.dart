import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_action/models/dashboard_data_model.dart';

import 'app_data_state_controller.dart';

class DashboardController extends Cubit<DashboardDataModel> {
  DashboardController()
    : super(DashboardDataModel(counter: 0, name: 'Behrouz', isActive: false));

  final appDataStateController = AppDataStateController.instance;

  void increment() => emit(state.copyWith(counter: state.counter + 1));
  void decrement() => emit(state.copyWith(counter: state.counter - 1));

  void accessToAppDataState() {
    print(appDataStateController.state.languageCode);
  }
}
