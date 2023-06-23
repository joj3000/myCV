import 'package:my_cv/libs.dart';

class EdXpInfos {
  final String title;
  final String text;
  final List<CompanyProj> projects;
  final DateTime start;
  final DateTime? end;
  const EdXpInfos(
    this.title,
    this.text,
    this.projects,
    this.start,
    this.end,
  );
}
