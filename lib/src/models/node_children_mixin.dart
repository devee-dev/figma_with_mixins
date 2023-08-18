import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:figma/figma.dart';
import 'package:figma/src/converters/node.dart';

part 'node_children_mixin.g.dart';

@CopyWith()
class NodeWithChildren extends Node {
  @NodeJsonConverter()
  final List<Node?>? children;

  NodeWithChildren(
      {required super.id,
      super.name,
      super.rotation,
      super.pluginData,
      super.sharedPluginData,
      required super.type,
      required super.visible,
      this.children,
      super.componentPropertyReferences});

  @override
  List<Object?> get props => [
        ...super.props,
        children,
      ];
}
