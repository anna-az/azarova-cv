// Flutter imports:
import 'package:flutter/cupertino.dart';

// Project imports:
import '../../styles/insets.styles.dart';

class VSpace extends StatelessWidget {
  const VSpace(this.size, {super.key});
  final double size;

  @override
  Widget build(BuildContext context) => SizedBox(height: size);

  static VSpace get s => VSpace(Insets.s);
  static VSpace get xs => VSpace(Insets.xs);
  static VSpace get sm => VSpace(Insets.sm);
  static VSpace get med => VSpace(Insets.med);
  static VSpace get regular => VSpace(Insets.regular);
  static VSpace get lg => VSpace(Insets.large);
  static VSpace get xl => VSpace(Insets.xl);
  static VSpace get xxl => VSpace(Insets.xxl);
  static VSpace get xxxl => VSpace(Insets.xxxl);
}

class HSpace extends StatelessWidget {
  const HSpace(this.size, {super.key});
  final double size;

  @override
  Widget build(BuildContext context) => SizedBox(width: size);

  static HSpace get s => HSpace(Insets.s);
  static HSpace get xs => HSpace(Insets.xs);
  static HSpace get sm => HSpace(Insets.sm);
  static HSpace get med => HSpace(Insets.med);
  static HSpace get reg => HSpace(Insets.regular);
  static HSpace get lg => HSpace(Insets.large);
  static HSpace get xl => HSpace(Insets.xl);
  static HSpace get xxl => HSpace(Insets.xxl);
  static HSpace get xxxl => HSpace(Insets.xxxl);
}
