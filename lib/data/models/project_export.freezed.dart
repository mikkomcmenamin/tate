// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectExport _$ProjectExportFromJson(Map<String, dynamic> json) {
  return _ProjectExport.fromJson(json);
}

/// @nodoc
mixin _$ProjectExport {
  Meta get meta => throw _privateConstructorUsedError;
  List<LabelExport> get labels => throw _privateConstructorUsedError;
  List<ImageExport> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectExportCopyWith<ProjectExport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectExportCopyWith<$Res> {
  factory $ProjectExportCopyWith(
          ProjectExport value, $Res Function(ProjectExport) then) =
      _$ProjectExportCopyWithImpl<$Res, ProjectExport>;
  @useResult
  $Res call({Meta meta, List<LabelExport> labels, List<ImageExport> images});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ProjectExportCopyWithImpl<$Res, $Val extends ProjectExport>
    implements $ProjectExportCopyWith<$Res> {
  _$ProjectExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? labels = null,
    Object? images = null,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      labels: null == labels
          ? _value.labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<LabelExport>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageExport>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectExportCopyWith<$Res>
    implements $ProjectExportCopyWith<$Res> {
  factory _$$_ProjectExportCopyWith(
          _$_ProjectExport value, $Res Function(_$_ProjectExport) then) =
      __$$_ProjectExportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, List<LabelExport> labels, List<ImageExport> images});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ProjectExportCopyWithImpl<$Res>
    extends _$ProjectExportCopyWithImpl<$Res, _$_ProjectExport>
    implements _$$_ProjectExportCopyWith<$Res> {
  __$$_ProjectExportCopyWithImpl(
      _$_ProjectExport _value, $Res Function(_$_ProjectExport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? labels = null,
    Object? images = null,
  }) {
    return _then(_$_ProjectExport(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      labels: null == labels
          ? _value._labels
          : labels // ignore: cast_nullable_to_non_nullable
              as List<LabelExport>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageExport>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectExport with DiagnosticableTreeMixin implements _ProjectExport {
  const _$_ProjectExport(
      {required this.meta,
      required final List<LabelExport> labels,
      required final List<ImageExport> images})
      : _labels = labels,
        _images = images;

  factory _$_ProjectExport.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectExportFromJson(json);

  @override
  final Meta meta;
  final List<LabelExport> _labels;
  @override
  List<LabelExport> get labels {
    if (_labels is EqualUnmodifiableListView) return _labels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_labels);
  }

  final List<ImageExport> _images;
  @override
  List<ImageExport> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectExport(meta: $meta, labels: $labels, images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectExport'))
      ..add(DiagnosticsProperty('meta', meta))
      ..add(DiagnosticsProperty('labels', labels))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectExport &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._labels, _labels) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      meta,
      const DeepCollectionEquality().hash(_labels),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectExportCopyWith<_$_ProjectExport> get copyWith =>
      __$$_ProjectExportCopyWithImpl<_$_ProjectExport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectExportToJson(
      this,
    );
  }
}

abstract class _ProjectExport implements ProjectExport {
  const factory _ProjectExport(
      {required final Meta meta,
      required final List<LabelExport> labels,
      required final List<ImageExport> images}) = _$_ProjectExport;

  factory _ProjectExport.fromJson(Map<String, dynamic> json) =
      _$_ProjectExport.fromJson;

  @override
  Meta get meta;
  @override
  List<LabelExport> get labels;
  @override
  List<ImageExport> get images;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectExportCopyWith<_$_ProjectExport> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  String get projectName => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({String projectName, int size, String date});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? size = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String projectName, int size, String date});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? size = null,
    Object? date = null,
  }) {
    return _then(_$_Meta(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta with DiagnosticableTreeMixin implements _Meta {
  const _$_Meta(
      {required this.projectName, required this.size, required this.date});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final String projectName;
  @override
  final int size;
  @override
  final String date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Meta(projectName: $projectName, size: $size, date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Meta'))
      ..add(DiagnosticsProperty('projectName', projectName))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectName, size, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required final String projectName,
      required final int size,
      required final String date}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  String get projectName;
  @override
  int get size;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}

LabelExport _$LabelExportFromJson(Map<String, dynamic> json) {
  return _LabelExport.fromJson(json);
}

/// @nodoc
mixin _$LabelExport {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelExportCopyWith<LabelExport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelExportCopyWith<$Res> {
  factory $LabelExportCopyWith(
          LabelExport value, $Res Function(LabelExport) then) =
      _$LabelExportCopyWithImpl<$Res, LabelExport>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$LabelExportCopyWithImpl<$Res, $Val extends LabelExport>
    implements $LabelExportCopyWith<$Res> {
  _$LabelExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LabelExportCopyWith<$Res>
    implements $LabelExportCopyWith<$Res> {
  factory _$$_LabelExportCopyWith(
          _$_LabelExport value, $Res Function(_$_LabelExport) then) =
      __$$_LabelExportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_LabelExportCopyWithImpl<$Res>
    extends _$LabelExportCopyWithImpl<$Res, _$_LabelExport>
    implements _$$_LabelExportCopyWith<$Res> {
  __$$_LabelExportCopyWithImpl(
      _$_LabelExport _value, $Res Function(_$_LabelExport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_LabelExport(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LabelExport with DiagnosticableTreeMixin implements _LabelExport {
  const _$_LabelExport({required this.name});

  factory _$_LabelExport.fromJson(Map<String, dynamic> json) =>
      _$$_LabelExportFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LabelExport(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LabelExport'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LabelExport &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelExportCopyWith<_$_LabelExport> get copyWith =>
      __$$_LabelExportCopyWithImpl<_$_LabelExport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelExportToJson(
      this,
    );
  }
}

abstract class _LabelExport implements LabelExport {
  const factory _LabelExport({required final String name}) = _$_LabelExport;

  factory _LabelExport.fromJson(Map<String, dynamic> json) =
      _$_LabelExport.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LabelExportCopyWith<_$_LabelExport> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageExport _$ImageExportFromJson(Map<String, dynamic> json) {
  return _ImageExport.fromJson(json);
}

/// @nodoc
mixin _$ImageExport {
  int get imageId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<AnnotationExport> get annotations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageExportCopyWith<ImageExport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageExportCopyWith<$Res> {
  factory $ImageExportCopyWith(
          ImageExport value, $Res Function(ImageExport) then) =
      _$ImageExportCopyWithImpl<$Res, ImageExport>;
  @useResult
  $Res call(
      {int imageId,
      String name,
      int width,
      int height,
      List<AnnotationExport> annotations});
}

/// @nodoc
class _$ImageExportCopyWithImpl<$Res, $Val extends ImageExport>
    implements $ImageExportCopyWith<$Res> {
  _$ImageExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? name = null,
    Object? width = null,
    Object? height = null,
    Object? annotations = null,
  }) {
    return _then(_value.copyWith(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      annotations: null == annotations
          ? _value.annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<AnnotationExport>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageExportCopyWith<$Res>
    implements $ImageExportCopyWith<$Res> {
  factory _$$_ImageExportCopyWith(
          _$_ImageExport value, $Res Function(_$_ImageExport) then) =
      __$$_ImageExportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int imageId,
      String name,
      int width,
      int height,
      List<AnnotationExport> annotations});
}

/// @nodoc
class __$$_ImageExportCopyWithImpl<$Res>
    extends _$ImageExportCopyWithImpl<$Res, _$_ImageExport>
    implements _$$_ImageExportCopyWith<$Res> {
  __$$_ImageExportCopyWithImpl(
      _$_ImageExport _value, $Res Function(_$_ImageExport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageId = null,
    Object? name = null,
    Object? width = null,
    Object? height = null,
    Object? annotations = null,
  }) {
    return _then(_$_ImageExport(
      imageId: null == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      annotations: null == annotations
          ? _value._annotations
          : annotations // ignore: cast_nullable_to_non_nullable
              as List<AnnotationExport>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageExport with DiagnosticableTreeMixin implements _ImageExport {
  const _$_ImageExport(
      {required this.imageId,
      required this.name,
      required this.width,
      required this.height,
      required final List<AnnotationExport> annotations})
      : _annotations = annotations;

  factory _$_ImageExport.fromJson(Map<String, dynamic> json) =>
      _$$_ImageExportFromJson(json);

  @override
  final int imageId;
  @override
  final String name;
  @override
  final int width;
  @override
  final int height;
  final List<AnnotationExport> _annotations;
  @override
  List<AnnotationExport> get annotations {
    if (_annotations is EqualUnmodifiableListView) return _annotations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_annotations);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageExport(imageId: $imageId, name: $name, width: $width, height: $height, annotations: $annotations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageExport'))
      ..add(DiagnosticsProperty('imageId', imageId))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('annotations', annotations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageExport &&
            (identical(other.imageId, imageId) || other.imageId == imageId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._annotations, _annotations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageId, name, width, height,
      const DeepCollectionEquality().hash(_annotations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageExportCopyWith<_$_ImageExport> get copyWith =>
      __$$_ImageExportCopyWithImpl<_$_ImageExport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageExportToJson(
      this,
    );
  }
}

abstract class _ImageExport implements ImageExport {
  const factory _ImageExport(
      {required final int imageId,
      required final String name,
      required final int width,
      required final int height,
      required final List<AnnotationExport> annotations}) = _$_ImageExport;

  factory _ImageExport.fromJson(Map<String, dynamic> json) =
      _$_ImageExport.fromJson;

  @override
  int get imageId;
  @override
  String get name;
  @override
  int get width;
  @override
  int get height;
  @override
  List<AnnotationExport> get annotations;
  @override
  @JsonKey(ignore: true)
  _$$_ImageExportCopyWith<_$_ImageExport> get copyWith =>
      throw _privateConstructorUsedError;
}

AnnotationExport _$AnnotationExportFromJson(Map<String, dynamic> json) {
  return _AnnotationExport.fromJson(json);
}

/// @nodoc
mixin _$AnnotationExport {
  String get type => throw _privateConstructorUsedError;
  int get labelId => throw _privateConstructorUsedError;
  List<double> get points => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnotationExportCopyWith<AnnotationExport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationExportCopyWith<$Res> {
  factory $AnnotationExportCopyWith(
          AnnotationExport value, $Res Function(AnnotationExport) then) =
      _$AnnotationExportCopyWithImpl<$Res, AnnotationExport>;
  @useResult
  $Res call({String type, int labelId, List<double> points});
}

/// @nodoc
class _$AnnotationExportCopyWithImpl<$Res, $Val extends AnnotationExport>
    implements $AnnotationExportCopyWith<$Res> {
  _$AnnotationExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? labelId = null,
    Object? points = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      labelId: null == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnotationExportCopyWith<$Res>
    implements $AnnotationExportCopyWith<$Res> {
  factory _$$_AnnotationExportCopyWith(
          _$_AnnotationExport value, $Res Function(_$_AnnotationExport) then) =
      __$$_AnnotationExportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, int labelId, List<double> points});
}

/// @nodoc
class __$$_AnnotationExportCopyWithImpl<$Res>
    extends _$AnnotationExportCopyWithImpl<$Res, _$_AnnotationExport>
    implements _$$_AnnotationExportCopyWith<$Res> {
  __$$_AnnotationExportCopyWithImpl(
      _$_AnnotationExport _value, $Res Function(_$_AnnotationExport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? labelId = null,
    Object? points = null,
  }) {
    return _then(_$_AnnotationExport(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      labelId: null == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int,
      points: null == points
          ? _value._points
          : points // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnnotationExport
    with DiagnosticableTreeMixin
    implements _AnnotationExport {
  const _$_AnnotationExport(
      {required this.type,
      required this.labelId,
      required final List<double> points})
      : _points = points;

  factory _$_AnnotationExport.fromJson(Map<String, dynamic> json) =>
      _$$_AnnotationExportFromJson(json);

  @override
  final String type;
  @override
  final int labelId;
  final List<double> _points;
  @override
  List<double> get points {
    if (_points is EqualUnmodifiableListView) return _points;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_points);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnnotationExport(type: $type, labelId: $labelId, points: $points)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnnotationExport'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('labelId', labelId))
      ..add(DiagnosticsProperty('points', points));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnotationExport &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.labelId, labelId) || other.labelId == labelId) &&
            const DeepCollectionEquality().equals(other._points, _points));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, labelId, const DeepCollectionEquality().hash(_points));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnotationExportCopyWith<_$_AnnotationExport> get copyWith =>
      __$$_AnnotationExportCopyWithImpl<_$_AnnotationExport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnotationExportToJson(
      this,
    );
  }
}

abstract class _AnnotationExport implements AnnotationExport {
  const factory _AnnotationExport(
      {required final String type,
      required final int labelId,
      required final List<double> points}) = _$_AnnotationExport;

  factory _AnnotationExport.fromJson(Map<String, dynamic> json) =
      _$_AnnotationExport.fromJson;

  @override
  String get type;
  @override
  int get labelId;
  @override
  List<double> get points;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationExportCopyWith<_$_AnnotationExport> get copyWith =>
      throw _privateConstructorUsedError;
}
