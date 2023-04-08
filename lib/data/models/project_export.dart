// models/project_export.dart

class ProjectExport {
  ProjectExport({
    required this.meta,
    required this.labels,
    required this.images,
  });

  final Meta meta;
  final List<LabelExport> labels;
  final List<ImageExport> images;

  Map<String, dynamic> toJson() => {
        'meta': meta.toJson(),
        'labels': labels.map((label) => label.toJson()).toList(),
        'images': images.map((image) => image.toJson()).toList(),
      };
}

class Meta {
  Meta({
    required this.projectName,
    required this.size,
    required this.date,
  });

  final String projectName;
  final int size;
  final String date;

  Map<String, dynamic> toJson() => {
        'project_name': projectName,
        'size': size,
        'date': date,
      };
}

class LabelExport {
  LabelExport({required this.name});

  final String name;

  Map<String, dynamic> toJson() => {
        'name': name,
      };
}

class ImageExport {
  ImageExport({
    required this.imageId,
    required this.name,
    required this.width,
    required this.height,
    required this.annotations,
  });

  final int imageId;
  final String name;
  final int width;
  final int height;
  final List<AnnotationExport> annotations;

  Map<String, dynamic> toJson() => {
        'image_id': imageId,
        'name': name,
        'width': width,
        'height': height,
        'annotations': annotations.map((annotation) => annotation.toJson()).toList(),
      };
}

class AnnotationExport {
  AnnotationExport({
    required this.type,
    required this.labelId,
    required this.points,
  });

  final String type;
  final int labelId;
  final List<double> points;

  Map<String, dynamic> toJson() => {
        'type': type,
        'label_id': labelId,
        'points': points,
      };
}
