import 'package:figma/src/models.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'component_set.g.dart';

/// A node containing a set of variants of a component.
@JsonSerializable()
@CopyWith()
class ComponentSet extends Component {

  ComponentSet({
    super.key,
    super.fileKey,
    super.nodeId,
    super.thumbnailUrl,
    super.name,
    super.description,
    super.createdAt,
    super.updatedAt,
    super.user,
    super.containingFrame,
    super.containingPage,
    required super.componentPropertyDefinitions,
  });


  factory ComponentSet.fromJson(Map<String, dynamic> json) =>
      _$ComponentSetFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ComponentSetToJson(this);
}
