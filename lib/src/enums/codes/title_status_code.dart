import 'package:anilibria/src/utils/enum.dart';

class TitleStatusCode extends IEnum<int> {
  static const inWork = TitleStatusCode(0);
  static const completed = TitleStatusCode(1);
  static const hidden = TitleStatusCode(2);
  static const notOngoing = TitleStatusCode(3);

  TitleStatusCode.fromValue(int value) : super(value);
  const TitleStatusCode(int value) : super(value);
}
