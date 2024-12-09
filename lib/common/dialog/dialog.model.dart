// Dart imports:

// Project imports:
import '../app-translation/translation.extensions.dart';

class DialogModel {
  const DialogModel({
    required this.title,
    required this.content,
    this.cancelText,
    this.confirmText,
  });
  final Translation title;
  final Translation content;
  final Translation? cancelText;
  final Translation? confirmText;
}
