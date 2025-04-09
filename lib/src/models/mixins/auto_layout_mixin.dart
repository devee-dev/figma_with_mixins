import 'package:figma/figma.dart';

abstract class AutoLayoutMixin {
  /// Determines how the auto-layout frame’s children should be aligned in
  /// the primary axis direction. This property is only applicable for
  /// auto-layout frames.
  PrimaryAxisAlignItems? get primaryAxisAlignItems;

  /// Determines how the auto-layout frame’s children should be aligned in
  /// the counter axis direction. This property is only applicable for
  /// auto-layout frames.
  CounterAxisAlignItems? get counterAxisAlignItems;

  /// Whether this layer uses auto-layout to position its children.
  LayoutMode? get layoutMode;

  /// Whether the counter axis has a fixed length (determined by the user)
  /// or an automatic length (determined by the layout engine). This property
  /// is only applicable for auto-layout frames.
  CounterAxisSizingMode? get counterAxisSizingMode;

  /// Whether the primary axis has a fixed length (determined by the user) or
  /// an automatic length (determined by the layout engine). This property is
  /// only applicable for auto-layout frames.
  PrimaryAxisSizingMode? get primaryAxisSizingMode;

  /// The distance between children of the frame.
  /// This property is only applicable for auto-layout frames.
  num? get itemSpacing;

  ///Applicable only on auto-layout frames. Determines the canvas stacking order of layers in this frame. When true, the first layer will be draw on top.
  bool? get itemReverseZIndex;

  ///Applicable only on auto-layout frames. Determines whether strokes are included in layout calculations. When true, auto-layout frames behave like css box-sizing: border-box.
  bool? get strokesIncludedInLayout;

  //Determines whether this layer should use wrapping auto-layout. Defaults to "NO_WRAP".
  LayoutWrap? get layoutWrap;

  ///DEPRECATED
  /// The horizontal padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  //final num? horizontalPadding;

  /// The vertical padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  //final num? verticalPadding;
}
