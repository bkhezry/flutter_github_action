class AppDataState {
  final bool isDarkTheme;
  final String languageCode;

  const AppDataState({this.isDarkTheme = false, this.languageCode = 'en'});

  // Initial state
  factory AppDataState.initial() => const AppDataState();

  // Copy with method for easy state updates
  AppDataState copyWith({bool? isDarkTheme, String? languageCode}) {
    return AppDataState(
      isDarkTheme: isDarkTheme ?? this.isDarkTheme,
      languageCode: languageCode ?? this.languageCode,
    );
  }
}
