// Project imports:
import 'json-serializable.interface.dart';

abstract class IJsonSerializableWithId implements IJsonSerializable {
  int get id;
}
