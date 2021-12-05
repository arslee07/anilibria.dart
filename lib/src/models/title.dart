class Title {
  final int? id;
  final String? code;
  final TitleNames? names;
  final String? announce;
  final TitleStatus? status;
  final Poster? poster;
  final int? updated;
  final int? lastChange;
  final TypeModel? type;
  final List<String>? genres;
  final TeamModel? team;
  final SeasonModel? season;
  final String? description;
  final int? inFavorites;
  final BlockedModel? blocked;
  final Player? player;
  final Torrents? torrents;

  Title({
    required this.id,
    required this.code,
    required this.names,
    required this.announce,
    required this.status,
    required this.poster,
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
        poster =
            json['poster'] == null ? null : Poster.fromJson(json['poster']),
        updated = json['updated'],
        lastChange = json['last_change'],
        type = json['type'] == null ? null : TypeModel.fromJson(json['type']),
        genres =
            json['genres'] == null ? null : List<String>.from(json['genres']),
        team = json['team'] == null ? null : TeamModel.fromJson(json['team']),
        season = json['season'] == null
            ? null
            : SeasonModel.fromJson(json['season']),
        description = json['description'],
        inFavorites = json['in_favorites'],
        blocked = json['blocked'] == null
            ? null
            : BlockedModel.fromJson(json['blocked']),
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
  final int? code;

  TitleStatus({
    required this.string,
    required this.code,
  });

  TitleStatus.fromJson(Map<String, dynamic> json)
      : string = json['string'],
        code = json['code'];
}

class Poster {
  final String? url;
  final int? updatedTimestamp;
  final String? rawBase64File;

  Poster({
    required this.url,
    required this.updatedTimestamp,
    required this.rawBase64File,
  });

  Poster.fromJson(Map<String, dynamic> json)
      : url = json['url'],
        updatedTimestamp = json['updated_timestamp'],
        rawBase64File = json['raw_base64_file'];
}

class TypeModel {
  final String? fullString;
  final int? code;
  final String? string;
  final int? series;
  final String? length;

  TypeModel({
    required this.fullString,
    required this.code,
    required this.string,
    required this.series,
    required this.length,
  });

  TypeModel.fromJson(Map<String, dynamic> json)
      : fullString = json['full_string'],
        code = json['code'],
        string = json['string'],
        series = json['series'],
        length = json['length'];
}

class TeamModel {
  final List<String>? voice;
  final List<String>? translator;
  final List<String>? editing;
  final List<String>? decor;
  final List<String>? timing;

  TeamModel({
    required this.voice,
    required this.translator,
    required this.editing,
    required this.decor,
    required this.timing,
  });

  TeamModel.fromJson(Map<String, dynamic> json)
      : voice = List<String>.from(json['voice']),
        translator = List<String>.from(json['translator']),
        editing = List<String>.from(json['editing']),
        decor = List<String>.from(json['decor']),
        timing = List<String>.from(json['timing']);
}

class SeasonModel {
  final String? string;
  final int? code;
  final int? year;
  final int? weekDay;

  SeasonModel({
    required this.string,
    required this.code,
    required this.year,
    required this.weekDay,
  });

  SeasonModel.fromJson(Map<String, dynamic> json)
      : string = json['string'],
        code = json['code'],
        year = json['year'],
        weekDay = json['week_day'];
}

class BlockedModel {
  final bool? blocked;
  final bool? wakanim;

  BlockedModel({
    required this.blocked,
    required this.wakanim,
  });

  BlockedModel.fromJson(Map<String, dynamic> json)
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
  final int? uploadedTimestamp;
  final String? metadata;
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
        uploadedTimestamp = json['uploaded_timestamp'],
        metadata = json['metadata'],
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
