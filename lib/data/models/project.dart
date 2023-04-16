import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'project.freezed.dart';

@freezed
class Project with _$Project {
  const factory Project(List<String>labels) = _Project;
}
