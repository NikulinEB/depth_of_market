import 'depth_entry_type.dart';

class DepthEntry {
  final double price;
  final double volume;
  final DepthEntryType type;

  DepthEntry(
    this.price,
    this.volume,
    this.type,
  );
}
