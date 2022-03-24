import 'package:anilibria/src/utils/enum.dart';

class TitleStatusCode extends IEnum<int> {
  static const inWork = TitleStatusCode(1);
  static const completed = TitleStatusCode(2);
  static const hidden = TitleStatusCode(3);
  static const notOngoing = TitleStatusCode(4);

  TitleStatusCode.fromValue(int value) : super(value);
  const TitleStatusCode(int value) : super(value);
}
