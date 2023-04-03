class Project {
  Project(this.labels);

  List<String> labels;

  Project copyWith({List<String>? labels}) {
    return Project(labels ?? this.labels);
  }
}
