class Annotation {
  String label;
  List<AnnotationProperty>? properties;
  Annotation(this.label, this.properties);
  factory Annotation.fromJson(Map<String, dynamic> json) {
    return Annotation(
      json['label'] as String,
      (json['properties'] as List<dynamic>?)
          ?.map((e) => AnnotationProperty.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
  toJson() => {
        'label': label,
        'properties': properties?.map((e) => e.toJson()).toList(),
      };
}

class AnnotationProperty {
  String type;
  AnnotationProperty(this.type);
  factory AnnotationProperty.fromJson(Map<String, dynamic> json) {
    return AnnotationProperty(json['type'] as String);
  }
  toJson() => {'type': type};
}
