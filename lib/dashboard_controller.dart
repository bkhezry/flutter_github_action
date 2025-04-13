import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_github_action/dashboard_data_model.dart';

class DashboardController extends Cubit<DashboardDataModel> {
  DashboardController()
    : super(DashboardDataModel(counter: 0, name: 'Behrouz', isActive: false));

  void increment() => emit(state.copyWith(counter: state.counter + 1));
  void decrement() => emit(state.copyWith(counter: state.counter - 1));
}
