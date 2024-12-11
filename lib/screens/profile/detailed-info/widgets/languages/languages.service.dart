// Project imports:
import '../../../../../common/api/api-service-base.dart';

class LanguagesService extends ApiServiceBase {
  LanguagesService(super.apiService);

  @override
  final String prefix = 'v3.1';

  Future<List<String>> getLanguages() async {
    apiService.setBaseUrl('https://restcountries.com');
    final List<dynamic> res =
        await apiService.get(createApiRequestModel(path: 'all'));

    final List<String> languages = <String>[];
    for (final dynamic country in res) {
      if (country['languages'] != null) {
        final Map<String, dynamic> languageMap =
            country['languages'] as Map<String, dynamic>;
        languages
            .addAll(languageMap.values.map((dynamic lang) => lang.toString()));
      }
    }

    final List<String> uniqueLanguages = languages.toSet().toList()..sort();
    return uniqueLanguages;
  }
}
