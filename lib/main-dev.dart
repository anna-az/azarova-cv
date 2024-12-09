// Project imports:
import 'flavors.dart';
import 'main-both.dart';

Future<void> main() async {
  F.appFlavor = Flavor.dev;
  await mainForBothEnv();
}
