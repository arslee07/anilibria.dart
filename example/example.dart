import 'package:anilibria/anilibria.dart';

void main() async {
  final anilibria = Anilibria(Uri.parse('https://api.anilibria.tv/v2'));

  // Fetch one title
  final title = await anilibria.getTitle(id: 824);
  print(title.names?.en);

  // Fetch multiple titles
  final titles = await anilibria.getTitles(idList: [3542, 9006]);
  for (final title in titles) {
    print(title.names?.en);
  }

  // Fetch updated titles
  final updates = await anilibria.getUpdates(limit: 10);
  for (final update in updates) {
    print(update.names?.en);
  }
}
