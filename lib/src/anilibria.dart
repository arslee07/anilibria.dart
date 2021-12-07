import 'dart:convert';
import 'package:http/http.dart';

import 'package:anilibria/src/enums/include.dart';
import 'package:anilibria/src/enums/description_type.dart';
import 'package:anilibria/src/enums/playlilst_type.dart';
import 'package:anilibria/src/models/title.dart';
import 'package:anilibria/src/utils/get_url.dart';

/// Generic Anilibria API interface.
abstract class IAnilibria {
  Future<Iterable<Title>> getUpdates({
    Iterable<String>? filter,
    Iterable<String>? remove,
    Iterable<Include>? include,
    int? limit,
    DateTime? since,
    DescriptionType? descriptionType,
    PlaylistType? playlistType,
    int? after,
  });
}

class Anilibria extends IAnilibria {
  final Uri _baseUrl;
  final Client _client;

  Anilibria(this._baseUrl) : _client = Client();

  @override
  Future<Iterable<Title>> getUpdates({
    Iterable<String>? filter,
    Iterable<String>? remove,
    Iterable<Include>? include,
    int? limit,
    DateTime? since,
    DescriptionType? descriptionType,
    PlaylistType? playlistType,
    int? after,
  }) async {
    final res = await _client.get(
      getUrl(
        _baseUrl,
        '/getUpdates',
        {
          if (filter != null) 'filter': filter.join(','),
          if (remove != null) 'remove': remove.join(','),
          if (include != null) 'include': include.join(','),
          if (limit != null) 'limit': limit.toString(),
          if (since != null) 'since': since.millisecondsSinceEpoch.toString(),
          if (descriptionType != null)
            'description_type': descriptionType.value,
          if (playlistType != null) 'playlist_type': playlistType.value,
          if (after != null) 'after': after.toString(),
        },
      ),
    );
    final json = jsonDecode(utf8.decode(res.bodyBytes));

    return [for (final e in json) Title.fromJson(e)];
  }
}
