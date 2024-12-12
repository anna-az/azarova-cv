mixin UniqueMixin {
  String generateUniqueId() => DateTime.now().millisecondsSinceEpoch.toString();
}
