import 'package:anilibria/anilibria.dart';

void main() async {
  final anilibria = Anilibria(Uri.parse('https://api.anilibria.tv/v2'));

  // Fetch one title
  final title = await anilibria.getTitle(id: 824);
  print(title.names?.en);

  // Fetch updated titles
  final updates = await anilibria.getUpdates(limit: 10);
  print(updates.map((e) => e.names?.en));

  // Search some titles
  final search = await anilibria.searchTitles(search: 'Maid Dragon');
  print(search.map((e) => e.names?.en));

  // Fetch random title
  final random = await anilibria.getRandomTitle();
  print(random.names?.en);
}
