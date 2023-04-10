// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_view_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$hoveredBoxHash() => r'0d8890da9a665e801b742e9136fbe17a8fd0d828';

/// See also [HoveredBox].
@ProviderFor(HoveredBox)
final hoveredBoxProvider = NotifierProvider<HoveredBox, BoundingBox?>.internal(
  HoveredBox.new,
  name: r'hoveredBoxProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$hoveredBoxHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HoveredBox = Notifier<BoundingBox?>;
String _$mousePositionHash() => r'fa84005fe000ecc7646ab0daef1b33f3b7263941';

/// See also [MousePosition].
@ProviderFor(MousePosition)
final mousePositionProvider =
    AutoDisposeNotifierProvider<MousePosition, Offset?>.internal(
  MousePosition.new,
  name: r'mousePositionProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$mousePositionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MousePosition = AutoDisposeNotifier<Offset?>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
