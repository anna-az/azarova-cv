enum ImageAsset {
  loader('$_iconsFolder/loader.svg'),
  check('$_iconsFolder/check.svg'),
  hidePassword('$_iconsFolder/hide-password.svg'),
  showPassword('$_iconsFolder/show-password.svg'),
  search('$_iconsFolder/search.svg'),
  back('$_iconsFolder/back.svg'),
  language('$_iconsFolder/language.svg'),
  theme('$_iconsFolder/theme.svg'),
  skills('$_iconsFolder/skills.svg'),
  store('$_iconsFolder/store.svg'),
  about('$_iconsFolder/about.svg'),
  contacts('$_iconsFolder/contacts.svg'),
  work('$_iconsFolder/work.svg'),
  education('$_iconsFolder/education.svg'),

  logo('$_imagesFolder/logo.png'),
  logoDev('$_imagesFolder/logo-dev.png');

  const ImageAsset(this.path);
  final String path;

  static const String _iconsFolder = 'assets/icons';
  static const String _imagesFolder = 'assets/images';
}
