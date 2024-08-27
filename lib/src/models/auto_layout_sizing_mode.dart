import 'package:json_annotation/json_annotation.dart';

enum AutoLayoutSizingMode {
  @JsonValue('FIXED')
  fixed,

  /// Primary axis has an automatic length.
  @JsonValue('HUG')
  hug,

  /// Primary axis has an automatic length.
  @JsonValue('FILL')
  fill,
}
