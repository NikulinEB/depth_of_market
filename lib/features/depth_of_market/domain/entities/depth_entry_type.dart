import 'package:flutter/material.dart';

enum DepthEntryType {
  ask,
  bid,
}

extension DepthEntryTypeColor on DepthEntryType {
  Color get color {
    switch (this) {
      case DepthEntryType.ask:
        return Colors.red;
      case DepthEntryType.bid:
        return Colors.green;
    }
  }
}
