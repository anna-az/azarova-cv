// Project imports:
import '../../../../../../common/base/image-asset.dart';

enum Store {
  appStore('https://apps.apple.com/ca/app/', ImageAsset.appStore),
  googlePlay(
      'https://play.google.com/store/apps/details?id=', ImageAsset.googlePlay);

  const Store(this.url, this.image);
  final String url;
  final ImageAsset image;
}
