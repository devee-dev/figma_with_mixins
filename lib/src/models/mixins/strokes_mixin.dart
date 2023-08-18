import 'package:figma/figma.dart';

abstract class StrokesMixin {
  /// An array of stroke paints applied to the node
  List<Paint>? get strokes;

  /// The weight of strokes on the node
  num? get strokeWeight;

  /// Position of stroke relative to vector outline, as a string enum
  StrokeAlign? get strokeAlign;

  /// A string enum with value of [StrokeCap.none], [StrokeCap.round],
  /// [StrokeCap.squary], [StrokeCap.lineArrow] or [StrokeCap.triangleArrow],
  /// describing the end caps of vector paths.
  StrokeCap? get strokeCap;

  /// A string enum with value of [StrokeJoin.miter], [StrokeJoin.bevel], or
  /// [StrokeCap.round], describing how corners in vector paths are rendered.
  StrokeJoin? get strokeJoin;

  /// An array of floating point numbers describing the pattern of dash length
  /// and gap lengths that the vector path follows. For example a value of
  /// [1, 2] indicates that the path has a dash of length 1 followed by a gap
  /// of length 2, repeated.
  List<double>? get strokeDashes;

  /// Only valid if strokeJoin is [StrokeJoin.miter]. The corner angle, in
  /// degrees, below which strokeJoin will be set to [StrokeJoin.bevel] to
  /// avoid super sharp corners. By default this is 28.96 degrees.
  double? get strokeMiterAngle;

  /// The weight of strokes on the node per side, if they vary.
  StrokeWeights? get individualStrokeWeights;

  /// Only specified if parameter geometry=paths is used. An array of paths
  /// representing the object stroke
  List<dynamic>? get strokeGeometry;
}
