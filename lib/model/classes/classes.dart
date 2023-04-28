
import '../../libs.dart';

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

class Info {
  final String text;
  final dynamic icon;
  final InfoType type;
  const Info(this.text, this.icon, {this.type = InfoType.none});
}

class Skill {
  final String name;
  final int mark;
  const Skill(
    this.name,
    this.mark,
  );
}

class CompanyProj {
  final String company;
  final String project;

  const CompanyProj(this.company, this.project);
}
