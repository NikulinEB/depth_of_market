import '../entities/depth_entry.dart';

abstract class DepthRepository {
  Future<List<DepthEntry>> getDepth();
}
