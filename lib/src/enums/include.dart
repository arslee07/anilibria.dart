import 'package:anilibria/src/utils/enum.dart';

class Include extends Enum<String> {
  static const rawPoster = Include('raw_poster');
  static const rawTorrent = Include('raw_torrent');
  static const torrentMeta = Include('torrent_meta');

  const Include(String value) : super(value);
  Include.fromValue(String value) : super(value);
}
