import 'package:figma/src/converters/converters.dart';
import 'package:figma/src/models.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'canvas.g.dart';

/// A Canvas node represents a Page in a Figma File.
/// A Canvas node can then have any number of nodes as its children.
/// Each subtree stemming from a Canvas node will represent a layer
/// (e.g an object) on the Canvas.
@JsonSerializable()
@CopyWith()
class Canvas extends NodeWithChildren {
  /// Background color of the canvas.
  final Color? backgroundColor;

  /// An array of export settings representing images to export from the canvas.
  @JsonKey(defaultValue: [])
  final List<ExportSetting> exportSettings;

  /// An array of starting points for flows attached to the canvas.
  @JsonKey(defaultValue: [])
  final List<FlowStartingPoint> flowStartingPoints;

  /// The device that this canvas is a prototype for.
  final PrototypeDevice prototypeDevice;

  Canvas({
    required super.id,
    required super.visible,
    super.componentPropertyReferences,
    super.name,
    super.rotation,
    super.pluginData,
    super.sharedPluginData,
    required super.type,
    required this.prototypeDevice,
    required this.flowStartingPoints,
    required this.exportSettings,
    super.children,
    this.backgroundColor,
  });

  @override
  List<Object?> get props => [
        ...super.props,
        backgroundColor,
        exportSettings,
        flowStartingPoints,
        prototypeDevice,
      ];

  @override
  factory Canvas.fromJson(Map<String, dynamic> json) => _$CanvasFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CanvasToJson(this);
}
