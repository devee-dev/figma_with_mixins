import 'package:figma/src/converters/converters.dart';
import 'package:figma/src/models.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'document.g.dart';

/// At the root of every File is a Document node, and from that Document
///  node stems any Canvas nodes.
@JsonSerializable()
@CopyWith()
class Document extends NodeWithChildren {
  Document({
    required super.id,
    required super.visible,
    super.componentPropertyReferences,
    super.rotation,
    required super.type,
    super.name,
    super.pluginData,
    super.sharedPluginData,
    super.children,
  });

  @override
  List<Object?> get props => [
        ...super.props,
      ];

  @override
  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DocumentToJson(this);
}
