extension StringExtension on String? {
  ///Extension method added to string? , return an empty string if string is null
  String get emptyIfNull => this ?? "";

  bool get isNullOrEmpty => (this == null || this == '');
  bool get isNotNullOrEmpty => (this != null && this != '');
}
