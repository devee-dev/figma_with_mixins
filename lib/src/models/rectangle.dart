import 'package:figma/src/models.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'rectangle.g.dart';

/// A rectangle is a rectangular-shaped vector that has a width and height and
/// may have rounded corners.
@JsonSerializable()
@CopyWith()
class Rectangle extends Vector implements RectangleCornerMixin {
  /// Radius of each corner of the rectangle if
  /// a single radius is set for all corners.
  @override
  final double? cornerRadius;

  @override
  final double? cornerSmoothing;

  /// Array of length 4 of the radius of each corner of the rectangle,
  /// starting in the top left and proceeding clockwise.
  @override
  final List<double>? rectangleCornerRadii;

  Rectangle({
    required super.id,
    required super.type,
    required super.visible,
    required super.locked,
    required super.exportSettings,
    required super.preserveRatio,
    required super.layoutGrow,
    required super.opacity,
    required super.isMask,
    required super.fills,
    required super.fillGeometry,
    required super.strokes,
    required super.strokeCap,
    required super.strokeJoin,
    required super.strokeDashes,
    required super.strokeMiterAngle,
    super.componentPropertyReferences,
    super.name,
    super.rotation,
    super.pluginData,
    super.sharedPluginData,
    super.blendMode,
    super.layoutAlign,
    super.layoutPositioning,
    super.constraints,
    super.transitionNodeID,
    super.transitionDuration,
    super.transitionEasing,
    super.absoluteBoundingBox,
    super.effects,
    super.size,
    super.relativeTransform,
    super.strokeWeight,
    super.strokeGeometry,
    super.strokeAlign,
    super.styles,
    super.absoluteRenderBounds,
    super.fillOverrideTable,
    super.individualStrokeWeights,
    super.maskType,
    this.cornerRadius,
    this.cornerSmoothing,
    this.rectangleCornerRadii,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        cornerRadius,
        rectangleCornerRadii,
        maskType,
      ];

  factory Rectangle.fromJson(Map<String, dynamic> json) =>
      _$RectangleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RectangleToJson(this);
}
