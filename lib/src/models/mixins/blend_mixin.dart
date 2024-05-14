import 'package:figma/figma.dart';

abstract class BlendMixin {
  double get opacity;

  BlendMode? get blendMode;
}
