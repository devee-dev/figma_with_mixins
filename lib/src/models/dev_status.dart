import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'dev_status.g.dart';

enum DevStatusType {
  @JsonValue("READY_FOR_DEV")
  readyForDev,
  @JsonValue("COMPLETED")
  completed
}

@JsonSerializable()
@CopyWith()
class DevStatus extends Equatable {
  final DevStatusType type;
  final String? description;
  @override
  List<Object?> get props => [type, description];

  DevStatus({required this.type, this.description});

  factory DevStatus.fromJson(Map<String, dynamic> json) =>
      _$DevStatusFromJson(json);
  Map<String, dynamic> toJson() => _$DevStatusToJson(this);
}
