import 'package:anilibria/src/enums/codes/season_code.dart';
import 'package:anilibria/src/enums/codes/title_status_code.dart';
import 'package:anilibria/src/enums/codes/title_type_code.dart';

class Title {
  final int? id;
  final String? code;
  final TitleNames? names;
  final String? announce;
  final TitleStatus? status;
  final Posters? posters;
  final DateTime? updated;
  final DateTime? lastChange;
  final TitleType? type;
  final List<String>? genres;
  final Team? team;
  final Season? season;
  final String? description;
  final int? inFavorites;
  final Blocked? blocked;
  final Player? player;
  final Torrents? torrents;

  Title({
    required this.id,
    required this.code,
    required this.names,
    required this.announce,
    required this.status,
    required this.posters,
    required this.updated,
    required this.lastChange,
    required this.type,
    required this.genres,
    required this.team,
    required this.season,
    required this.description,
    required this.inFavorites,
    required this.blocked,
    required this.player,
    required this.torrents,
  });

  Title.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        code = json['code'],
        names =
            json['names'] == null ? null : TitleNames.fromJson(json['names']),
        announce = json['announce'],
        status = json['status'] == null
            ? null
            : TitleStatus.fromJson(json['status']),
        posters =
            json['posters'] == null ? null : Posters.fromJson(json['posters']),
        updated = json['updated'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(json['updated'] * 1000),
        lastChange = json['last_change'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(json['last_change'] * 1000),
        type = json['type'] == null ? null : TitleType.fromJson(json['type']),
        genres =
            json['genres'] == null ? null : List<String>.from(json['genres']),
        team = json['team'] == null ? null : Team.fromJson(json['team']),
        season =
            json['season'] == null ? null : Season.fromJson(json['season']),
        description = json['description'],
        inFavorites = json['in_favorites'],
        blocked =
            json['blocked'] == null ? null : Blocked.fromJson(json['blocked']),
        player =
            json['player'] == null ? null : Player.fromJson(json['player']),
        torrents = json['torrents'] == null
            ? null
            : Torrents.fromJson(json['torrents']);
}

class TitleNames {
  final String? ru;
  final String? en;
  final String? alternative;

  TitleNames({
    required this.ru,
    required this.en,
    required this.alternative,
  });

  TitleNames.fromJson(Map<String, dynamic> json)
      : ru = json['ru'],
        en = json['en'],
        alternative = json['alternative'];
}

class TitleStatus {
  final String? string;
  final TitleStatusCode? code;

  TitleStatus({
    required this.string,
    required this.code,
  });

  TitleStatus.fromJson(Map<String, dynamic> json)
      : string = json['string'],
        code = json['code'] == null ? null : TitleStatusCode(json['code']);
}

class Posters {
  final Poster? small;
  final Poster? medium;
  final Poster? original;

  Posters({this.small, this.medium, this.original});

  Posters.fromJson(Map<String, dynamic> json)
      : small = json['small'] == null ? null : Poster.fromJson(json['small']),
        medium =
            json['medium'] == null ? null : Poster.fromJson(json['medium']),
        original =
            json['original'] == null ? null : Poster.fromJson(json['original']);
}

class Poster {
  final String? url;
  final String? rawBase64File;

  Poster({
    required this.url,
    required this.rawBase64File,
  });

  Poster.fromJson(Map<String, dynamic> json)
      : url = json['url'],
        rawBase64File = json['raw_base64_file'];
}

class TitleType {
  final String? fullString;
  final TitleTypeCode? code;
  final String? string;
  final int? series;
  final int? length;

  TitleType({
    required this.fullString,
    required this.code,
    required this.string,
    required this.series,
    required this.length,
  });

  TitleType.fromJson(Map<String, dynamic> json)
      : fullString = json['full_string'],
        code = json['code'] == null ? null : TitleTypeCode(json['code']),
        string = json['string'],
        series = json['series'],
        length = json['length'];
}

class Team {
  final List<String>? voice;
  final List<String>? translator;
  final List<String>? editing;
  final List<String>? decor;
  final List<String>? timing;

  Team({
    required this.voice,
    required this.translator,
    required this.editing,
    required this.decor,
    required this.timing,
  });

  Team.fromJson(Map<String, dynamic> json)
      : voice = List<String>.from(json['voice']),
        translator = List<String>.from(json['translator']),
        editing = List<String>.from(json['editing']),
        decor = List<String>.from(json['decor']),
        timing = List<String>.from(json['timing']);
}

class Season {
  final String? string;
  final SeasonCode? code;
  final int? year;
  final int? weekDay;

  Season({
    required this.string,
    required this.code,
    required this.year,
    required this.weekDay,
  });

  Season.fromJson(Map<String, dynamic> json)
      : string = json['string'],
        code = json['code'] == null ? null : SeasonCode(json['code']),
        year = json['year'],
        weekDay = json['week_day'];
}

class Blocked {
  final bool? blocked;
  final bool? wakanim;

  Blocked({
    required this.blocked,
    required this.wakanim,
  });

  Blocked.fromJson(Map<String, dynamic> json)
      : blocked = json['blocked'],
        wakanim = json['bakanim'];
}

class Player {
  final String? alternativePlayer;
  final String? host;
  final Series? series;
  final List<Serie>? playlist;

  Player({
    required this.alternativePlayer,
    required this.host,
    required this.series,
    required this.playlist,
  });

  Player.fromJson(Map<String, dynamic> json)
      : alternativePlayer = json['alternative_player'],
        host = json['host'],
        series =
            json['series'] == null ? null : Series.fromJson(json['series']),
        playlist = json['playlist'] == null
            ? null
            : json['playlist'] is Map<String, dynamic>
                ? [for (final e in json['playlist'].values) Serie.fromJson(e)]
                : [for (final e in json['playlist']) Serie.fromJson(e)];
}

class Series {
  final int? first;
  final int? last;
  final String? string;

  Series({
    required this.first,
    required this.last,
    required this.string,
  });

  Series.fromJson(Map<String, dynamic> json)
      : first = json['first'],
        last = json['last'],
        string = json['string'];
}

class Serie {
  final int? serie;
  final int? createdTimestamp;
  final Hls? hls;

  Serie({
    required this.serie,
    required this.createdTimestamp,
    required this.hls,
  });

  Serie.fromJson(Map<String, dynamic> json)
      : serie = json['serie'],
        createdTimestamp = json['created_timestamp'],
        hls = json['hls'] == null ? null : Hls.fromJson(json['hls']);
}

class Hls {
  final String? fhd;
  final String? hd;
  final String? sd;

  Hls({
    required this.fhd,
    required this.hd,
    required this.sd,
  });

  Hls.fromJson(Map<String, dynamic> json)
      : fhd = json['fhd'],
        hd = json['hd'],
        sd = json['sd'];
}

class Torrents {
  final Series? series;
  final List<Torrent>? list;

  Torrents({
    required this.series,
    required this.list,
  });

  Torrents.fromJson(Map<String, dynamic> json)
      : series =
            json['series'] == null ? null : Series.fromJson(json['series']),
        list = json['list'] == null
            ? null
            : [for (final e in json['list']) Torrent.fromJson(e)];
}

class Torrent {
  final int? torrentId;
  final Series? series;
  final TorrentQuality? quality;
  final int? leechers;
  final int? seeders;
  final int? downloads;
  final int? totalSize;
  final String? url;
  final DateTime? uploadedTimestamp;
  final TorrentMetadata? metadata;
  final String? rawBase64File;

  Torrent({
    required this.torrentId,
    required this.series,
    required this.quality,
    required this.leechers,
    required this.seeders,
    required this.downloads,
    required this.totalSize,
    required this.url,
    required this.uploadedTimestamp,
    required this.metadata,
    required this.rawBase64File,
  });

  Torrent.fromJson(Map<String, dynamic> json)
      : torrentId = json['torrent_id'],
        series =
            json['series'] == null ? null : Series.fromJson(json['series']),
        quality = json['quality'] == null
            ? null
            : TorrentQuality.fromJson(json['quality']),
        leechers = json['leechers'],
        seeders = json['seeders'],
        downloads = json['downloads'],
        totalSize = json['total_size'],
        url = json['url'],
        uploadedTimestamp = json['uploaded_timestamp'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(
                json['uploaded_timestamp'] * 1000),
        metadata = json['metadata'] == null
            ? null
            : TorrentMetadata.fromJson(json['metadata']),
        rawBase64File = json['raw_base64_file'];
}

class TorrentQuality {
  final String? string;
  final String? type;
  final int? resolution;
  final String? encoder;
  final bool? lqAudio;

  TorrentQuality({
    required this.string,
    required this.type,
    required this.resolution,
    required this.encoder,
    required this.lqAudio,
  });

  TorrentQuality.fromJson(Map<String, dynamic> json)
      : string = json['string'],
        type = json['type'],
        resolution = json['resolution'],
        encoder = json['encoder'],
        lqAudio = json['lq_audio'];
}

class TorrentMetadata {
  final String? hash;
  final String? name;
  final List<String>? announce;
  final DateTime? createdTimestamp;
  final List<TorrentFile>? filesList;

  TorrentMetadata({
    required this.hash,
    required this.name,
    required this.announce,
    required this.createdTimestamp,
    required this.filesList,
  });

  TorrentMetadata.fromJson(Map<String, dynamic> json)
      : hash = json['hash'],
        name = json['name'],
        announce = json['files_list'],
        createdTimestamp = json['created_timestamp'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(
                json['created_timestamp'] * 1000),
        filesList = json['files_list'] == null
            ? null
            : [for (final e in json['files_list']) TorrentFile.fromJson(e)];
}

class TorrentFile {
  final String file;
  final int size;
  final int offset;

  TorrentFile({
    required this.file,
    required this.size,
    required this.offset,
  });

  TorrentFile.fromJson(Map<String, dynamic> json)
      : file = json['file'],
        size = json['size'],
        offset = json['file'];
}
