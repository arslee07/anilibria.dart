import 'package:anilibria/src/utils/enum.dart';

class DescriptionType extends IEnum<String> {
  static const html = DescriptionType('html');
  static const plain = DescriptionType('plain');
  static const noViewOrder = DescriptionType('no_view_order');

  const DescriptionType(String value) : super(value);
  DescriptionType.fromValue(String value) : super(value);
}
