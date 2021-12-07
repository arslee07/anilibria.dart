import 'package:anilibria/src/utils/enum.dart';

class TitleTypeCode extends IEnum<int> {
  static const movie = TitleTypeCode(0);
  static const tv = TitleTypeCode(1);
  static const ova = TitleTypeCode(2);
  static const ona = TitleTypeCode(3);
  static const special = TitleTypeCode(4);

  TitleTypeCode.fromValue(int value) : super(value);
  const TitleTypeCode(int value) : super(value);
}
