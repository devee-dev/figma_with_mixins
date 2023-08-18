import 'package:figma/figma.dart';

abstract class FillsMixin {
  /// An array of fill paints applied to the node
  List<Paint>? get fills;

  /// Only specified if parameter geometry=paths is used. An array of paths
  /// representing the object fill
  List<dynamic>? get fillGeometry;
}
