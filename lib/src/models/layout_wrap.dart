import 'package:json_annotation/json_annotation.dart';

/// Whether this layer uses auto-layout to position its children.
enum LayoutWrap {
  /// No wrap.
  @JsonValue('NO_WRAP')
  noWrap,

  /// wrap.
  @JsonValue('WRAP')
  wrap,
}
