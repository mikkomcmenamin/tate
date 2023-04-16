import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'project_export.freezed.dart';
part 'project_export.g.dart';

@freezed
class ProjectExport with _$ProjectExport {
  const factory ProjectExport({
    required Meta meta,
    required List<LabelExport> labels,
    required List<ImageExport> images,
  }) = _ProjectExport;

  factory ProjectExport.fromJson(Map<String, dynamic> json) => _$ProjectExportFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required String projectName,
    required int size,
    required String date,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class LabelExport with _$LabelExport {
  const factory LabelExport({required String name}) = _LabelExport;

  factory LabelExport.fromJson(Map<String, dynamic> json) => _$LabelExportFromJson(json);
}

@freezed
class ImageExport with _$ImageExport {
  const factory ImageExport({
    required int imageId,
    required String name,
    required int width,
    required int height,
    required List<AnnotationExport> annotations,
  }) = _ImageExport;

  factory ImageExport.fromJson(Map<String, dynamic> json) => _$ImageExportFromJson(json);
}

@freezed
class AnnotationExport with _$AnnotationExport{
  const factory AnnotationExport({
    required String type,
    required int labelId,
    required List<double> points,
  }) = _AnnotationExport;

  factory AnnotationExport.fromJson(Map<String, dynamic> json) => _$AnnotationExportFromJson(json);
}
