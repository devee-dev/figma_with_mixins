abstract class CornerMixin {
  /// Radius of each corner of the rectangle if
  /// a single radius is set for all corners
  num? get cornerRadius;

// A value of 0 is the default and means that the corner is perfectly circular.
//A value of 0.6 means the corner matches the iOS 7 "squircle" icon shape. Other values produce various other curves.
  num? get cornerSmoothing;
}

abstract class RectangleCornerMixin {
  /// Radius of each corner of the rectangle if
  /// a single radius is set for all corners
  num? get cornerRadius;

  num? get cornerSmoothing;

  /// Array of length 4 of the radius of each corner of the rectangle,
  /// starting in the top left and proceeding clockwise
  List<num>? get rectangleCornerRadii;
}
