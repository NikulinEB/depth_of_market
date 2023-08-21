import 'dart:math';

import '../../domain/entities/depth_entry_type.dart';
import '../models/depth_entry.dart';

abstract class DepthDataSource {
  Future<List<DepthEntryModel>> getDepth();
}

class DepthDataSourceImpl implements DepthDataSource {
  final _random = Random();

  @override
  Future<List<DepthEntryModel>> getDepth() {
    var depth = <DepthEntryModel>[
      DepthEntryModel(96.5, _random.nextDouble(), DepthEntryType.ask),
      DepthEntryModel(96.3, _random.nextDouble(), DepthEntryType.ask),
      DepthEntryModel(96, _random.nextDouble(), DepthEntryType.ask),
      DepthEntryModel(95.7, _random.nextDouble(), DepthEntryType.ask),
      DepthEntryModel(95.5, _random.nextDouble(), DepthEntryType.ask),
      DepthEntryModel(95.1, _random.nextDouble(), DepthEntryType.bid),
      DepthEntryModel(94.6, _random.nextDouble(), DepthEntryType.bid),
      DepthEntryModel(93.9, _random.nextDouble(), DepthEntryType.bid),
      DepthEntryModel(93.6, _random.nextDouble(), DepthEntryType.bid),
      DepthEntryModel(93, _random.nextDouble(), DepthEntryType.bid),
    ];

    return Future.delayed(const Duration(seconds: 2)).then((_) => depth);
  }
}
