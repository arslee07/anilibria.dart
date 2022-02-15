import 'package:anilibria/src/models/title.dart';

class Schedule {
  final int? day;
  final List<Title>? list;

  Schedule({
    required this.day,
    required this.list,
  });

  Schedule.fromJson(Map<String, dynamic> json)
      : day = json['day'],
        list = json['list'] == null
            ? null
            : [for (final e in json['list']) Title.fromJson(e)];
}
