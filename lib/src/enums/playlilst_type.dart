import 'package:anilibria/src/utils/enum.dart';

class PlaylistType extends Enum<String> {
  static const array = PlaylistType('array');
  static const object = PlaylistType('object');

  const PlaylistType(String value) : super(value);
  PlaylistType.fromValue(String value) : super(value);
}
