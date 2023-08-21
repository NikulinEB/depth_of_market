import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../provider/depth_provider.dart';
import '../widgets/depth_list.dart';
import '../widgets/update_depth_button.dart';

const _backgroundColor = Color.fromARGB(255, 20, 21, 23);

class DepthPage extends StatelessWidget {
  const DepthPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DepthProvider>(
      create: (context) => DepthProvider(repository: GetIt.instance()),
      builder: (providerContext, _) => Scaffold(
        backgroundColor: _backgroundColor,
        appBar: AppBar(
          title: const Text('Flutter Example App'),
          backgroundColor: _backgroundColor,
        ),
        body: const SafeArea(child: DepthList()),
        floatingActionButton: const UpdateDepthButton(),
      ),
    );
  }
}
