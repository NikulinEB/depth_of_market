import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'features/depth_of_market/data/datasources/depth_datasource.dart';
import 'features/depth_of_market/data/repositories/depth_repository.dart';
import 'features/depth_of_market/domain/repositories/depth_repository.dart';
import 'features/depth_of_market/presentation/pages/depth_page.dart';

Future<void> main() async {
  await initDependencies();
  runApp(const MyApp());
}

Future<void> initDependencies() async {
  final getIt = GetIt.instance;
  getIt.registerLazySingleton<DepthDataSource>(() => DepthDataSourceImpl());
  getIt.registerLazySingleton<DepthRepository>(() => DepthRepositoryImpl(depthDataSource: getIt()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Depth of Market',
      home: DepthPage(),
    );
  }
}
