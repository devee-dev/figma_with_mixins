// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_children_mixin.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NodeWithChildrenCWProxy {
  NodeWithChildren id(String id);

  NodeWithChildren name(String? name);

  NodeWithChildren rotation(double? rotation);

  NodeWithChildren pluginData(dynamic pluginData);

  NodeWithChildren sharedPluginData(dynamic sharedPluginData);

  NodeWithChildren type(NodeTypes type);

  NodeWithChildren visible(bool visible);

  NodeWithChildren children(List<Node?>? children);

  NodeWithChildren componentPropertyReferences(
      Map<String, String>? componentPropertyReferences);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NodeWithChildren(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NodeWithChildren(...).copyWith(id: 12, name: "My name")
  /// ````
  NodeWithChildren call({
    String? id,
    String? name,
    double? rotation,
    dynamic pluginData,
    dynamic sharedPluginData,
    NodeTypes? type,
    bool? visible,
    List<Node?>? children,
    Map<String, String>? componentPropertyReferences,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNodeWithChildren.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNodeWithChildren.copyWith.fieldName(...)`
class _$NodeWithChildrenCWProxyImpl implements _$NodeWithChildrenCWProxy {
  const _$NodeWithChildrenCWProxyImpl(this._value);

  final NodeWithChildren _value;

  @override
  NodeWithChildren id(String id) => this(id: id);

  @override
  NodeWithChildren name(String? name) => this(name: name);

  @override
  NodeWithChildren rotation(double? rotation) => this(rotation: rotation);

  @override
  NodeWithChildren pluginData(dynamic pluginData) =>
      this(pluginData: pluginData);

  @override
  NodeWithChildren sharedPluginData(dynamic sharedPluginData) =>
      this(sharedPluginData: sharedPluginData);

  @override
  NodeWithChildren type(NodeTypes type) => this(type: type);

  @override
  NodeWithChildren visible(bool visible) => this(visible: visible);

  @override
  NodeWithChildren children(List<Node?>? children) => this(children: children);

  @override
  NodeWithChildren componentPropertyReferences(
          Map<String, String>? componentPropertyReferences) =>
      this(componentPropertyReferences: componentPropertyReferences);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NodeWithChildren(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NodeWithChildren(...).copyWith(id: 12, name: "My name")
  /// ````
  NodeWithChildren call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? rotation = const $CopyWithPlaceholder(),
    Object? pluginData = const $CopyWithPlaceholder(),
    Object? sharedPluginData = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? visible = const $CopyWithPlaceholder(),
    Object? children = const $CopyWithPlaceholder(),
    Object? componentPropertyReferences = const $CopyWithPlaceholder(),
  }) {
    return NodeWithChildren(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      rotation: rotation == const $CopyWithPlaceholder()
          ? _value.rotation
          // ignore: cast_nullable_to_non_nullable
          : rotation as double?,
      pluginData:
          pluginData == const $CopyWithPlaceholder() || pluginData == null
              ? _value.pluginData
              // ignore: cast_nullable_to_non_nullable
              : pluginData as dynamic,
      sharedPluginData: sharedPluginData == const $CopyWithPlaceholder() ||
              sharedPluginData == null
          ? _value.sharedPluginData
          // ignore: cast_nullable_to_non_nullable
          : sharedPluginData as dynamic,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as NodeTypes,
      visible: visible == const $CopyWithPlaceholder() || visible == null
          ? _value.visible
          // ignore: cast_nullable_to_non_nullable
          : visible as bool,
      children: children == const $CopyWithPlaceholder()
          ? _value.children
          // ignore: cast_nullable_to_non_nullable
          : children as List<Node?>?,
      componentPropertyReferences:
          componentPropertyReferences == const $CopyWithPlaceholder()
              ? _value.componentPropertyReferences
              // ignore: cast_nullable_to_non_nullable
              : componentPropertyReferences as Map<String, String>?,
    );
  }
}

extension $NodeWithChildrenCopyWith on NodeWithChildren {
  /// Returns a callable class that can be used as follows: `instanceOfNodeWithChildren.copyWith(...)` or like so:`instanceOfNodeWithChildren.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NodeWithChildrenCWProxy get copyWith => _$NodeWithChildrenCWProxyImpl(this);
}
