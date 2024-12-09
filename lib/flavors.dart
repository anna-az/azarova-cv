enum Flavor {
  dev,
  prod,
}

mixin F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return 'Azarova CV dev';
      case Flavor.prod:
        return 'Azarova CV';
      default:
        return 'title';
    }
  }
}
