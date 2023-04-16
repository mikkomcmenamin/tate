// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_export.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectExport _$$_ProjectExportFromJson(Map<String, dynamic> json) =>
    _$_ProjectExport(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      labels: (json['labels'] as List<dynamic>)
          .map((e) => LabelExport.fromJson(e as Map<String, dynamic>))
          .toList(),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageExport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectExportToJson(_$_ProjectExport instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'labels': instance.labels,
      'images': instance.images,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      projectName: json['projectName'] as String,
      size: json['size'] as int,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'projectName': instance.projectName,
      'size': instance.size,
      'date': instance.date,
    };

_$_LabelExport _$$_LabelExportFromJson(Map<String, dynamic> json) =>
    _$_LabelExport(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_LabelExportToJson(_$_LabelExport instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_ImageExport _$$_ImageExportFromJson(Map<String, dynamic> json) =>
    _$_ImageExport(
      imageId: json['imageId'] as int,
      name: json['name'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      annotations: (json['annotations'] as List<dynamic>)
          .map((e) => AnnotationExport.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ImageExportToJson(_$_ImageExport instance) =>
    <String, dynamic>{
      'imageId': instance.imageId,
      'name': instance.name,
      'width': instance.width,
      'height': instance.height,
      'annotations': instance.annotations,
    };

_$_AnnotationExport _$$_AnnotationExportFromJson(Map<String, dynamic> json) =>
    _$_AnnotationExport(
      type: json['type'] as String,
      labelId: json['labelId'] as int,
      points: (json['points'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_AnnotationExportToJson(_$_AnnotationExport instance) =>
    <String, dynamic>{
      'type': instance.type,
      'labelId': instance.labelId,
      'points': instance.points,
    };
