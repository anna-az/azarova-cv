// Project imports:
import '../app-translation/translation.extensions.dart';

extension MapEnumExtensions on Map<Translation, String> {
  Map<String, String> get st => Map<String, String>.fromEntries(entries.map(
      (MapEntry<Translation, String> entry) =>
          MapEntry<String, String>(entry.key.st, entry.value)));
}
