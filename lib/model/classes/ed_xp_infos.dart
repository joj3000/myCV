import 'package:my_cv/libs.dart';

class EdXpInfos {
  final String title;
  final String text;
  final DateTime? start;
  final DateTime? end;
  final List<CompanyProj> projects;

  const EdXpInfos(
    this.title,
    this.text,
    this.projects, [
    this.start,
    this.end,
  ]);
}
