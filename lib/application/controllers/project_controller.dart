import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tate/data/models/project.dart';

part 'project_controller.g.dart';

@riverpod
class ProjectController extends _$ProjectController {
  @override
  Project build() {
    return Project(["label1", "label2"]);
  }

  void addLabel(String label) {
    state = state.copyWith(labels: [...state.labels, label]);
  }

  void removeLabel(String label) {
    state = state.copyWith(labels: state.labels.where((element) => element != label).toList());
  }
}
