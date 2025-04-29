import 'package:figma/src/models.dart';
import 'package:json_annotation/json_annotation.dart';

/// Converts a JSON decoded object to a [Node] specific instance regarding
/// its `type` property.
class NodeJsonConverter implements JsonConverter<Node?, Object?> {
  const NodeJsonConverter();

  /// Parses a JSON object into a [Node] object.
  @override
  Node? fromJson(Object? json) {
    if (json == null) {
      return null;
    }
    final node = Node.fromJson(json as Map<String, dynamic>);
    switch (node.type) {
      case NodeTypes.CANVAS:
        return Canvas.fromJson(json);
      case NodeTypes.FRAME:
        return Frame.fromJson(json);

      case NodeTypes.VECTOR:
        return Vector.fromJson(json);
      case NodeTypes.STAR:
        return Star.fromJson(json);
      case NodeTypes.BOOLEAN_OPERATION:
        return BooleanOperation.fromJson(json);
      case NodeTypes.SECTION:
        return Frame.fromJson(json);
      case NodeTypes.COMPONENT:
        return ComponentNode.fromJson(json);
      case NodeTypes.COMPONENT_SET:
        return ComponentNode.fromJson(json);
      case NodeTypes.LINE:
        return Line.fromJson(json);
      case NodeTypes.TEXT:
        return Text.fromJson(json);
      case NodeTypes.ELLIPSE:
        return Ellipse.fromJson(json);
      case NodeTypes.GROUP:
        return Group.fromJson(json);
      case NodeTypes.RECTANGLE:
        return Rectangle.fromJson(json);
      case NodeTypes.REGULAR_POLYGON:
        return RegularPolygon.fromJson(json);
      case NodeTypes.SLICE:
        return Slice.fromJson(json);
      case NodeTypes.INSTANCE:
        return Instance.fromJson(json);
      case NodeTypes.DOCUMENT:
        return Document.fromJson(json);
      // default:
      //   throw UnsupportedError('Unsupported node type : ${node.type}');
    }
  }

  /// Parses a [Node] object into a JSON object
  @override
  Object? toJson(Node? object) {
    if (object == null) {
      return null;
    }
    return object.toJson();
  }
}
