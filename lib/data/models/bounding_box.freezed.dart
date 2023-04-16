// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bounding_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoundingBox {
  int get id => throw _privateConstructorUsedError;
  Offset get startPoint => throw _privateConstructorUsedError;
  Offset get endPoint => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoundingBoxCopyWith<BoundingBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundingBoxCopyWith<$Res> {
  factory $BoundingBoxCopyWith(
          BoundingBox value, $Res Function(BoundingBox) then) =
      _$BoundingBoxCopyWithImpl<$Res, BoundingBox>;
  @useResult
  $Res call({int id, Offset startPoint, Offset endPoint, String? label});
}

/// @nodoc
class _$BoundingBoxCopyWithImpl<$Res, $Val extends BoundingBox>
    implements $BoundingBoxCopyWith<$Res> {
  _$BoundingBoxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as Offset,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as Offset,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoundingBoxCopyWith<$Res>
    implements $BoundingBoxCopyWith<$Res> {
  factory _$$_BoundingBoxCopyWith(
          _$_BoundingBox value, $Res Function(_$_BoundingBox) then) =
      __$$_BoundingBoxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Offset startPoint, Offset endPoint, String? label});
}

/// @nodoc
class __$$_BoundingBoxCopyWithImpl<$Res>
    extends _$BoundingBoxCopyWithImpl<$Res, _$_BoundingBox>
    implements _$$_BoundingBoxCopyWith<$Res> {
  __$$_BoundingBoxCopyWithImpl(
      _$_BoundingBox _value, $Res Function(_$_BoundingBox) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? startPoint = null,
    Object? endPoint = null,
    Object? label = freezed,
  }) {
    return _then(_$_BoundingBox(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as Offset,
      endPoint: null == endPoint
          ? _value.endPoint
          : endPoint // ignore: cast_nullable_to_non_nullable
              as Offset,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_BoundingBox extends _BoundingBox with DiagnosticableTreeMixin {
  const _$_BoundingBox(
      {required this.id,
      required this.startPoint,
      required this.endPoint,
      this.label})
      : super._();

  @override
  final int id;
  @override
  final Offset startPoint;
  @override
  final Offset endPoint;
  @override
  final String? label;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoundingBox(id: $id, startPoint: $startPoint, endPoint: $endPoint, label: $label)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoundingBox'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('startPoint', startPoint))
      ..add(DiagnosticsProperty('endPoint', endPoint))
      ..add(DiagnosticsProperty('label', label));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoundingBox &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.endPoint, endPoint) ||
                other.endPoint == endPoint) &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, startPoint, endPoint, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundingBoxCopyWith<_$_BoundingBox> get copyWith =>
      __$$_BoundingBoxCopyWithImpl<_$_BoundingBox>(this, _$identity);
}

abstract class _BoundingBox extends BoundingBox {
  const factory _BoundingBox(
      {required final int id,
      required final Offset startPoint,
      required final Offset endPoint,
      final String? label}) = _$_BoundingBox;
  const _BoundingBox._() : super._();

  @override
  int get id;
  @override
  Offset get startPoint;
  @override
  Offset get endPoint;
  @override
  String? get label;
  @override
  @JsonKey(ignore: true)
  _$$_BoundingBoxCopyWith<_$_BoundingBox> get copyWith =>
      throw _privateConstructorUsedError;
}
