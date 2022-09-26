class EdXpInfos {
  final String title;
  final String text;
  final DateTime start;
  final DateTime? end;
  const EdXpInfos(
    this.title,
    this.text,
    this.start,
    this.end,
  );
}

class Info {
  final String text;
  final dynamic icon;
  final bool selectable;
  const Info(this.text, this.icon, {this.selectable = false});
}

class Skill {
  final String name;
  final int mark;
  const Skill(
    this.name,
    this.mark,
  );
}
