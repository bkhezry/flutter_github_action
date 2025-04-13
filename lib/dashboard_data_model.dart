class DashboardDataModel {
  final int counter;
  final String name;
  final bool isActive;

  const DashboardDataModel({
    required this.counter,
    required this.name,
    required this.isActive,
  });

  DashboardDataModel copyWith({int? counter, String? name, bool? isActive}) {
    return DashboardDataModel(
      counter: counter ?? this.counter,
      name: name ?? this.name,
      isActive: isActive ?? this.isActive,
    );
  }
}
