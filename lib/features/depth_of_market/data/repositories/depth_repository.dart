import '../../domain/entities/depth_entry.dart';
import '../../domain/repositories/depth_repository.dart';
import '../datasources/depth_datasource.dart';

class DepthRepositoryImpl implements DepthRepository {
  DepthRepositoryImpl({
    required this.depthDataSource,
  });

  final DepthDataSource depthDataSource;

  @override
  Future<List<DepthEntry>> getDepth() async {
    List<DepthEntry> depthList;
    try {
      depthList = await depthDataSource.getDepth();
    } catch (e) {
      depthList = [];
    }
    return depthList;
  }
}
