import 'package:my_cv/core/libs.dart';

/// An item in the description (for education or experience).
class DescriptionItem {
  final ItemMode mode;
  final String title;
  final String? description;
  final DateTime? start;
  final DateTime? end;

  const DescriptionItem({
    required this.mode,
    required this.title,
    required this.description,
    required this.start,
    required this.end,
  });
}
