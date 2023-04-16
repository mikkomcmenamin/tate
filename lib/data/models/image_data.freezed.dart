// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageData {
  File get imageFile => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<BoundingBox> get boundingBoxes => throw _privateConstructorUsedError;
  double? get scaleFactor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageDataCopyWith<ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDataCopyWith<$Res> {
  factory $ImageDataCopyWith(ImageData value, $Res Function(ImageData) then) =
      _$ImageDataCopyWithImpl<$Res, ImageData>;
  @useResult
  $Res call(
      {File imageFile,
      int width,
      int height,
      List<BoundingBox> boundingBoxes,
      double? scaleFactor});
}

/// @nodoc
class _$ImageDataCopyWithImpl<$Res, $Val extends ImageData>
    implements $ImageDataCopyWith<$Res> {
  _$ImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
    Object? width = null,
    Object? height = null,
    Object? boundingBoxes = null,
    Object? scaleFactor = freezed,
  }) {
    return _then(_value.copyWith(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      boundingBoxes: null == boundingBoxes
          ? _value.boundingBoxes
          : boundingBoxes // ignore: cast_nullable_to_non_nullable
              as List<BoundingBox>,
      scaleFactor: freezed == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageDataCopyWith<$Res> implements $ImageDataCopyWith<$Res> {
  factory _$$_ImageDataCopyWith(
          _$_ImageData value, $Res Function(_$_ImageData) then) =
      __$$_ImageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {File imageFile,
      int width,
      int height,
      List<BoundingBox> boundingBoxes,
      double? scaleFactor});
}

/// @nodoc
class __$$_ImageDataCopyWithImpl<$Res>
    extends _$ImageDataCopyWithImpl<$Res, _$_ImageData>
    implements _$$_ImageDataCopyWith<$Res> {
  __$$_ImageDataCopyWithImpl(
      _$_ImageData _value, $Res Function(_$_ImageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = null,
    Object? width = null,
    Object? height = null,
    Object? boundingBoxes = null,
    Object? scaleFactor = freezed,
  }) {
    return _then(_$_ImageData(
      imageFile: null == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      boundingBoxes: null == boundingBoxes
          ? _value.boundingBoxes
          : boundingBoxes // ignore: cast_nullable_to_non_nullable
              as List<BoundingBox>,
      scaleFactor: freezed == scaleFactor
          ? _value.scaleFactor
          : scaleFactor // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_ImageData with DiagnosticableTreeMixin implements _ImageData {
  const _$_ImageData(
      {required this.imageFile,
      required this.width,
      required this.height,
      required this.boundingBoxes,
      this.scaleFactor});

  @override
  final File imageFile;
  @override
  final int width;
  @override
  final int height;
  @override
  final List<BoundingBox> boundingBoxes;
  @override
  final double? scaleFactor;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImageData(imageFile: $imageFile, width: $width, height: $height, boundingBoxes: $boundingBoxes, scaleFactor: $scaleFactor)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImageData'))
      ..add(DiagnosticsProperty('imageFile', imageFile))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('boundingBoxes', boundingBoxes))
      ..add(DiagnosticsProperty('scaleFactor', scaleFactor));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageData &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other.boundingBoxes, boundingBoxes) &&
            (identical(other.scaleFactor, scaleFactor) ||
                other.scaleFactor == scaleFactor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile, width, height,
      const DeepCollectionEquality().hash(boundingBoxes), scaleFactor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageDataCopyWith<_$_ImageData> get copyWith =>
      __$$_ImageDataCopyWithImpl<_$_ImageData>(this, _$identity);
}

abstract class _ImageData implements ImageData {
  const factory _ImageData(
      {required final File imageFile,
      required final int width,
      required final int height,
      required final List<BoundingBox> boundingBoxes,
      final double? scaleFactor}) = _$_ImageData;

  @override
  File get imageFile;
  @override
  int get width;
  @override
  int get height;
  @override
  List<BoundingBox> get boundingBoxes;
  @override
  double? get scaleFactor;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDataCopyWith<_$_ImageData> get copyWith =>
      throw _privateConstructorUsedError;
}
