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

  /// The horizontal sizing setting on this auto-layout frame or frame child.
  /// FIXED,HUG, FILL
  /// HUG is only valid on auto-layout frames and text nodes. FILL is only valid on auto-layout frame children.
  String? get layoutSizingHorizontal;

  /// The vertical sizing setting on this auto-layout frame or frame child.
  /// FIXED,HUG, FILL
  /// HUG is only valid on auto-layout frames and text nodes. FILL is only valid on auto-layout frame children.
  String? get layoutSizingVertical;

  ///DEPRECATED
  /// The horizontal padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  //final num? horizontalPadding;

  /// The vertical padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  //final num? verticalPadding;
}
