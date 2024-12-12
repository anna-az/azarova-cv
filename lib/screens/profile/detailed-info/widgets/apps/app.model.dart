class AppModel {
  AppModel({required this.title, this.googlePlayId = '', this.appStoreUrl = ''})
      : assert(googlePlayId.isNotEmpty || appStoreUrl.isNotEmpty,
            'At least one store');
  final String title;
  final String googlePlayId;
  final String appStoreUrl;
}
