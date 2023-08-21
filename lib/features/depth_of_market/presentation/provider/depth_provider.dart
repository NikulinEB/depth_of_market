import 'package:flutter/foundation.dart';

import '../../domain/entities/depth_entry.dart';
import '../../domain/repositories/depth_repository.dart';

class DepthProvider with ChangeNotifier {
  DepthProvider({
    required this.repository,
  }) {
    getDepth();
  }

  final DepthRepository repository;

  List<DepthEntry> get depth => _depth;

  List<DepthEntry> _depth = [];

  Future<void> getDepth() async {
    _depth = await repository.getDepth();
    notifyListeners();
  }
}
