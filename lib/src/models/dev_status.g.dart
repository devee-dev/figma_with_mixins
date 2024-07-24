// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dev_status.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DevStatusCWProxy {
  DevStatus type(DevStatusType type);

  DevStatus description(String? description);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DevStatus(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DevStatus(...).copyWith(id: 12, name: "My name")
  /// ````
  DevStatus call({
    DevStatusType? type,
    String? description,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfDevStatus.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfDevStatus.copyWith.fieldName(...)`
class _$DevStatusCWProxyImpl implements _$DevStatusCWProxy {
  const _$DevStatusCWProxyImpl(this._value);

  final DevStatus _value;

  @override
  DevStatus type(DevStatusType type) => this(type: type);

  @override
  DevStatus description(String? description) => this(description: description);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `DevStatus(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// DevStatus(...).copyWith(id: 12, name: "My name")
  /// ````
  DevStatus call({
    Object? type = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return DevStatus(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as DevStatusType,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
    );
  }
}

extension $DevStatusCopyWith on DevStatus {
  /// Returns a callable class that can be used as follows: `instanceOfDevStatus.copyWith(...)` or like so:`instanceOfDevStatus.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DevStatusCWProxy get copyWith => _$DevStatusCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DevStatus _$DevStatusFromJson(Map<String, dynamic> json) => DevStatus(
      type: $enumDecode(_$DevStatusTypeEnumMap, json['type']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$DevStatusToJson(DevStatus instance) => <String, dynamic>{
      'type': _$DevStatusTypeEnumMap[instance.type]!,
      'description': instance.description,
    };

const _$DevStatusTypeEnumMap = {
  DevStatusType.readyForDev: 'READY_FOR_DEV',
  DevStatusType.completed: 'COMPLETED',
};
