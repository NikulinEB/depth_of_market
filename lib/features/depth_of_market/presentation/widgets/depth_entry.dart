import 'package:flutter/material.dart';

import '../../domain/entities/depth_entry.dart';
import '../../domain/entities/depth_entry_type.dart';

const double depthEntryHeight = 24;

class DepthEntryWidget extends StatelessWidget {
  const DepthEntryWidget({
    Key? key,
    required this.entry,
    required this.screenWidth,
  }) : super(key: key);

  final DepthEntry entry;

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        color: entry.type.color,
        height: depthEntryHeight,
        width: screenWidth * entry.volume,
        alignment: Alignment.centerLeft,
        child: Text(
          entry.price == entry.price.toInt() ? entry.price.toStringAsFixed(0) : entry.price.toString(),
          softWrap: false,
          overflow: TextOverflow.visible,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
