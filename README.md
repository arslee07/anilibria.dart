# `anilibria.dart`

A simple and robust way to interact with Anilibria API.

## Example

```dart
import 'package:anilibria/anilibria.dart';

void main() async {
  final anilibria = Anilibria(Uri.parse('https://api.wwnd.space/v2'));

  // Fetch one title
  final title = await anilibria.getTitle(id: 824);
  print(title.names?.en);

  // Fetch updated titles
  final updates = await anilibria.getUpdates(limit: 10);
  print(updates.map((e) => e.names?.en));

  // Search some titles
  final search = await anilibria.searchTitles(search: 'Maid Dragon');
  print(search.map((e) => e.names?.en));
}

```
