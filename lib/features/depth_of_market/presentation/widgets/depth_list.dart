import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/depth_provider.dart';
import 'depth_entry.dart';

class DepthList extends StatelessWidget {
  const DepthList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Consumer<DepthProvider>(
      builder: (context, depthProvider, child) => Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: depthProvider.depth
                .map((e) => DepthEntryWidget(
                      entry: e,
                      screenWidth: screenWidth,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
