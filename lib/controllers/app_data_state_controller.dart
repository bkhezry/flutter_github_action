import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/app_data_state.dart';

class AppDataStateController extends Cubit<AppDataState> {
  static final AppDataStateController _instance =
      AppDataStateController._internal();

  factory AppDataStateController() => _instance;

  AppDataStateController._internal() : super(AppDataState.initial());

  static AppDataStateController get instance => _instance;

  void updateLanguageCode(String languageCode) {
    emit(state.copyWith(languageCode: languageCode));
  }

  void updateTheme(bool isDark) {
    emit(state.copyWith(isDarkTheme: isDark));
  }
}
