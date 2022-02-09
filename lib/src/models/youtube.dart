class Youtube {
  final int? id;
  final String? title;
  final String? image;
  final String? youtubeId;
  final int? comments;
  final int? views;
  final DateTime? timestamp;

  Youtube({
    required this.id,
    required this.title,
    required this.image,
    required this.youtubeId,
    required this.comments,
    required this.views,
    required this.timestamp,
  });

  Youtube.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        image = json['image'],
        youtubeId = json['youtube_id'],
        comments = json['comments'],
        views = json['views'],
        timestamp = json['timestamp'] == null
            ? null
            : DateTime.fromMillisecondsSinceEpoch(json['timestamp'] * 1000);
}
