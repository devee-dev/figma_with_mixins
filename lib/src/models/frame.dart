import 'package:figma/src/converters/converters.dart';
import 'package:figma/src/models.dart';
import 'package:figma/src/models/dev_status.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

import 'auto_layout_sizing_mode.dart';

part 'frame.g.dart';

/// A Figma frame.
@JsonSerializable()
@CopyWith()
class Frame extends NodeWithChildren
    implements
        LayoutMixin,
        StrokesMixin,
        FillsMixin,
        RectangleCornerMixin,
        PaddingMixin,
        EffectsMixin,
        AutoLayoutMixin,
        BlendMixin,
        MaskMixin {
  /// If true, layer is locked and cannot be edited.
  @JsonKey(defaultValue: false)
  final bool locked;

  // Whether the node is marked Ready for dev or Completed.
  // If the node does not have a status, the property is null.
  final DevStatus? devStatus;

  /// An array of fill paints applied to the node.
  @override
  @JsonKey(defaultValue: [])
  final List<Paint> fills;

  /// Only specified if parameter geometry=paths is used. An array of paths
  /// representing the object fill
  @override
  final List<dynamic>? fillGeometry;

  /// An array of stroke paints applied to the node.
  @override
  @JsonKey(defaultValue: [])
  final List<Paint> strokes;

  /// The weight of strokes on the node.
  @override
  final double? strokeWeight;

  /// The weight of strokes on the node per side, if they vary.
  @override
  final StrokeWeights? individualStrokeWeights;

  /// A string enum with value of [StrokeCap.none], [StrokeCap.round],
  /// [StrokeCap.squary], [StrokeCap.lineArrow] or [StrokeCap.triangleArrow],
  /// describing the end caps of vector paths.
  @override
  final StrokeCap? strokeCap;

  /// A string enum with value of [StrokeJoin.miter], [StrokeJoin.bevel], or
  /// [StrokeCap.round], describing how corners in vector paths are rendered.
  @override
  final StrokeJoin? strokeJoin;

  /// An array of floating point numbers describing the pattern of dash length
  /// and gap lengths that the vector path follows. For example a value of
  /// [1, 2] indicates that the path has a dash of length 1 followed by a gap
  /// of length 2, repeated.
  @override
  final List<double>? strokeDashes;

  /// Only valid if strokeJoin is [StrokeJoin.miter]. The corner angle, in
  /// degrees, below which strokeJoin will be set to [StrokeJoin.bevel] to
  /// avoid super sharp corners. By default this is 28.96 degrees.
  @override
  final double? strokeMiterAngle;

  /// Only specified if parameter geometry=paths is used. An array of paths
  /// representing the object stroke
  @override
  final List<dynamic>? strokeGeometry;

  /// Position of stroke relative to vector outline, as a string enum.
  @override
  final StrokeAlign? strokeAlign;

  /// Radius of each corner of the frame if a single radius is set for all corners.
  @override
  final double? cornerRadius;

  @override
  final double? cornerSmoothing;

  /// Array of length 4 of the radius of each corner of the frame,
  /// starting in the top left and proceeding clockwise.
  @override
  final List<double>? rectangleCornerRadii;

  /// An array of export settings representing images to export from node.
  @JsonKey(defaultValue: [])
  final List<ExportSetting> exportSettings;

  /// How this node blends with nodes behind it in the scene.
  @override
  final BlendMode? blendMode;

  /// How this node masks with nodes behind it in the scene.
  @override
  final MaskType? maskType;

  /// Keep height and width constrained to same ratio.
  @override
  @JsonKey(defaultValue: false)
  final bool preserveRatio;

  /// This property is applicable only for direct children of auto-layout frames,
  /// ignored otherwise. Determines whether a layer should stretch along the parent’s
  /// primary axis. A `0` corresponds to a fixed size and `1` corresponds to stretch.
  @override
  @JsonKey(defaultValue: 0.0)
  final double layoutGrow;

  /// Horizontal and vertical layout constraints for node.
  @override
  final LayoutConstraint? constraints;

  /// How the layer is aligned inside an auto-layout frame.
  /// This property is only provided for direct children
  /// of auto-layout frames.
  ///
  /// In horizontal auto-layout frames, "MIN" and "MAX" correspond to
  /// "TOP" and "BOTTOM". In vertical auto-layout frames, "MIN" and "MAX"
  /// correspond to "LEFT" and "RIGHT".
  @override
  final LayoutAlign? layoutAlign;

  //Determines whether this layer should use wrapping auto-layout. Defaults to "NO_WRAP".
  @override
  final LayoutWrap? layoutWrap;

  /// Node ID of node to transition to in prototyping.
  final String? transitionNodeID;

  /// The duration of the prototyping transition on this node (in milliseconds).
  final double? transitionDuration;

  /// Opacity of the node.
  @override
  @JsonKey(defaultValue: 1.0)
  final double opacity;

  /// Bounding box of the node in absolute space coordinates.
  @override
  final SizeRectangle? absoluteBoundingBox;

  /// The bounds of the rendered node in the file in absolute space coordinates.
  final SizeRectangle? absoluteRenderBounds;

  /// Width and height of element. This is different from the width and height
  /// of the bounding box in that the absolute bounding box represents the
  /// element after scaling and rotation. Only present if geometry=paths
  /// is passed.
  @override
  final Vector2D? size;

  /// The top two rows of a matrix that represents the 2D transform of this
  /// node relative to its parent. The bottom row of the matrix is implicitly
  /// always (0, 0, 1). Use to transform coordinates in geometry. Only present
  /// if `geometry=paths` is passed.
  @override
  final List<List<double>>? relativeTransform;

  /// Whether or not this node clip content outside of its bounds.
  final bool? clipsContent;

  /// Whether this layer uses auto-layout to position its children.
  @override
  @JsonKey(defaultValue: LayoutMode.none)
  final LayoutMode? layoutMode;

  /// Whether the counter axis has a fixed length (determined by the user)
  /// or an automatic length (determined by the layout engine). This property
  /// is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: CounterAxisSizingMode.auto)
  final CounterAxisSizingMode counterAxisSizingMode;

  /// Whether the primary axis has a fixed length (determined by the user) or
  /// an automatic length (determined by the layout engine). This property is
  /// only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: PrimaryAxisSizingMode.auto)
  final PrimaryAxisSizingMode primaryAxisSizingMode;

  /// Determines how the auto-layout frame’s children should be aligned in
  /// the primary axis direction. This property is only applicable for
  /// auto-layout frames.
  @override
  @JsonKey(defaultValue: PrimaryAxisAlignItems.min)
  final PrimaryAxisAlignItems primaryAxisAlignItems;

  /// Determines how the auto-layout frame’s children should be aligned in
  /// the counter axis direction. This property is only applicable for
  /// auto-layout frames.
  @override
  @JsonKey(defaultValue: CounterAxisAlignItems.min)
  final CounterAxisAlignItems counterAxisAlignItems;

  /// The horizontal sizing setting on this auto-layout frame or frame child.
  /// FIXED,HUG, FILL
  /// HUG is only valid on auto-layout frames and text nodes. FILL is only valid on auto-layout frame children.
  @override
  final AutoLayoutSizingMode? layoutSizingHorizontal;

  /// The vertical sizing setting on this auto-layout frame or frame child.
  /// FIXED,HUG, FILL
  /// HUG is only valid on auto-layout frames and text nodes. FILL is only valid on auto-layout frame children.
  @override
  final AutoLayoutSizingMode? layoutSizingVertical;

  /// The padding betweeen the left border of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: 0.0)
  final double paddingLeft;

  /// The padding betweeen the top border of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: 0.0)
  final double paddingTop;

  /// The padding betweeen the right border of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: 0.0)
  final double paddingRight;

  /// The padding betweeen the bottom border of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: 0.0)
  final double paddingBottom;

  /// The horizontal padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  @JsonKey(defaultValue: 0.0)
  final double horizontalPadding;

  /// The vertical padding between the borders of the frame and its children.
  /// This property is only applicable for auto-layout frames.
  @JsonKey(defaultValue: 0.0)
  final double verticalPadding;

  /// The distance between children of the frame.
  /// This property is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: 0.0)
  final double itemSpacing;

  /// Determines whether a layer's size and position should be determined by
  /// auto-layout settings or manually adjustable.
  @override
  @JsonKey(defaultValue: LayoutPositioning.auto)
  final LayoutPositioning layoutPositioning;

  /// Determines the canvas stacking order of layers in this frame. When true,
  /// the first layer will be draw on top. This property is only applicable
  /// for auto-layout frames.
  @override
  @JsonKey(defaultValue: false)
  final bool itemReverseZIndex;

  /// Determines whether strokes are included in layout calculations. When true,
  /// auto-layout frames behave like css "box-sizing: border-box". This property
  /// is only applicable for auto-layout frames.
  @override
  @JsonKey(defaultValue: false)
  final bool strokesIncludedInLayout;

  /// An array of layout grids attached to this node. [Group] nodes do not
  /// have this attribute.
  @JsonKey(defaultValue: [])
  final List<LayoutGrid> layoutGrids;

  /// Defines the scrolling behavior of the frame, if there exist contents
  /// outside of the frame boundaries. The frame can either scroll vertically,
  /// horizontally, or in both directions to the extents of the content
  /// contained within it. This behavior can be observed in a prototype.
  @JsonKey(defaultValue: OverflowDirection.none)
  final OverflowDirection overflowDirection;

  /// An array of effects attached to this node.
  @override
  @JsonKey(defaultValue: [])
  final List<Effect> effects;

  /// Does this node mask sibling nodes in front of it?
  @JsonKey(defaultValue: false)
  final bool isMask;

  /// Does this mask ignore fill style (like gradients) and effects?
  @JsonKey(defaultValue: false)
  final bool isMaskOutline;

  /// A mapping of a StyleType to style ID (see [Style]) of styles present on
  /// this node. The style ID can be used to look up more information about the
  /// style in the top-level styles field.
  final Map<StyleTypeKey, String>? styles;

  Frame({
    required super.id,
    required super.visible,
    super.componentPropertyReferences,
    super.name,
    super.rotation,
    super.pluginData,
    super.sharedPluginData,
    this.devStatus,
    this.layoutSizingHorizontal,
    this.layoutSizingVertical,
    required super.type,
    required this.locked,
    required this.fills,
    required this.strokes,
    required this.exportSettings,
    required super.children,
    required this.opacity,
    required this.primaryAxisAlignItems,
    required this.counterAxisAlignItems,
    required this.primaryAxisSizingMode,
    required this.counterAxisSizingMode,
    required this.paddingBottom,
    required this.paddingLeft,
    required this.paddingRight,
    required this.paddingTop,
    required this.horizontalPadding,
    required this.verticalPadding,
    required this.itemSpacing,
    required this.layoutGrids,
    required this.overflowDirection,
    required this.effects,
    required this.isMask,
    required this.isMaskOutline,
    required this.layoutPositioning,
    required this.itemReverseZIndex,
    required this.strokesIncludedInLayout,
    required this.preserveRatio,
    required this.layoutGrow,
    this.absoluteBoundingBox,
    this.absoluteRenderBounds,
    this.fillGeometry,
    this.size,
    this.strokeWeight,
    this.individualStrokeWeights,
    this.strokeCap,
    this.strokeJoin,
    this.strokeDashes,
    this.strokeMiterAngle,
    this.strokeGeometry,
    this.strokeAlign,
    this.cornerRadius,
    this.cornerSmoothing,
    this.rectangleCornerRadii,
    this.blendMode,
    this.maskType,
    this.constraints,
    this.layoutAlign,
    this.layoutWrap,
    this.transitionNodeID,
    this.transitionDuration,
    this.relativeTransform,
    this.clipsContent,
    this.layoutMode,
    this.styles,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        devStatus,
        locked,
        fills,
        fillGeometry,
        strokes,
        strokeWeight,
        individualStrokeWeights,
        strokeCap,
        strokeJoin,
        strokeDashes,
        strokeMiterAngle,
        strokeGeometry,
        strokeAlign,
        cornerRadius,
        cornerSmoothing,
        rectangleCornerRadii,
        exportSettings,
        blendMode,
        maskType,
        preserveRatio,
        layoutGrow,
        constraints,
        layoutAlign,
        transitionNodeID,
        transitionDuration,
        opacity,
        absoluteBoundingBox,
        size,
        relativeTransform,
        clipsContent,
        layoutMode,
        layoutWrap,
        primaryAxisSizingMode,
        primaryAxisAlignItems,
        counterAxisSizingMode,
        counterAxisAlignItems,
        layoutSizingHorizontal,
        layoutSizingVertical,
        paddingTop,
        paddingLeft,
        paddingRight,
        paddingBottom,
        horizontalPadding,
        verticalPadding,
        itemSpacing,
        layoutGrids,
        overflowDirection,
        effects,
        isMask,
        isMaskOutline,
        layoutPositioning,
        itemReverseZIndex,
        strokesIncludedInLayout,
        styles,
      ];

  factory Frame.fromJson(Map<String, dynamic> json) => _$FrameFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FrameToJson(this);
}
