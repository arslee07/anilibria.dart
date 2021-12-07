import 'package:anilibria/anilibria.dart';

void main() async {
  final anilibria = Anilibria(Uri.parse('https://api.anilibria.tv/v2'));
  final titles = await anilibria.getUpdates(limit: 10);
  for (final title in titles) {
    print(title.names?.en);
  }
}
