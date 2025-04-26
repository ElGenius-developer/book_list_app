extension StringExtension on String? {
  ///Extension method added to string? , return an empty string if string is null
  String get emptyIfNull => this ?? "";

  ///Extension method add to String? , return null if String is empty
  String? get nullWhenEmpty {
    if (this == null) {
      return null;
    } else if (this!.isEmpty) {
      return null;
    }
    return this;
  }

  bool get isNullOrEmpty => (this == null || this == '');
  bool get isNotNullOrEmpty => (this != null && this != '');
}
