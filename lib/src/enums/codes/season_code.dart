import 'package:anilibria/src/utils/enum.dart';

class SeasonCode extends IEnum<int> {
  static const winter = SeasonCode(1);
  static const spring = SeasonCode(2);
  static const summer = SeasonCode(3);
  static const autumn = SeasonCode(4);

  SeasonCode.fromValue(int value) : super(value);
  const SeasonCode(int value) : super(value);
}
