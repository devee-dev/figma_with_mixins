import 'package:figma/figma.dart';

abstract class LayoutMixin {
  /// Keep height and width constrained to same ratio
  bool? get preserveRatio;

  ///The rotation of the node in degrees.
  ///Returns values from -180 to 180. Identical to Math.atan2(-m10, m00) in the relativeTransform matrix.
  double? get rotation;

  /// This property is applicable only for direct children of auto-layout frames,
  /// ignored otherwise. Determines whether a layer should stretch along the parent’s
  /// primary axis. A `0` corresponds to a fixed size and `1` corresponds to stretch
  double? get layoutGrow;

  ///This property is applicable only for direct children of auto-layout frames.
  ///Determines whether a layer's size and position should be dermined by auto-layout settings or manually adjustable.
  LayoutPositioning? get layoutPositioning;

  /// How the layer is aligned inside an auto-layout frame. This property is
  /// only provided for direct children of auto-layout frames.
  LayoutAlign? get layoutAlign;

  /// Horizontal and vertical layout constraints for node
  LayoutConstraint? get constraints;

  /// The bounds of the node that does not include rendered properties like drop shadows or strokes.
  /// The x and y inside this property represent the absolute position of the node on the page.
  SizeRectangle? get absoluteBoundingBox;

  /// Width and height of element. This is different from the width and height
  /// of the bounding box in that the absolute bounding box represents the
  /// element after scaling and rotation. Only present if geometry=paths
  /// is passed.
  Vector2D? get size;

  /// The top two rows of a matrix that represents the 2D transform of this
  /// node relative to its parent. The bottom row of the matrix is implicitly
  /// always (0, 0, 1). Use to transform coordinates in geometry. Only present
  /// if `geometry=paths` is passed.
  List<List<double>>? get relativeTransform;
}
