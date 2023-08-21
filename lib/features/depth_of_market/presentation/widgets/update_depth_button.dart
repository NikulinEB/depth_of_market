import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/depth_provider.dart';

const _buttonSize = Size.square(64);
const _backgroundColor = Color.fromARGB(255, 3, 55, 105);
const _border = RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16)));
const _padding = EdgeInsets.all(6);

class UpdateDepthButton extends StatelessWidget {
  const UpdateDepthButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(_buttonSize),
        backgroundColor: MaterialStateProperty.all(_backgroundColor),
        shape: MaterialStateProperty.all(_border),
        padding: MaterialStateProperty.all(_padding),
      ),
      onPressed: Provider.of<DepthProvider>(context, listen: false).getDepth,
      child: const Text('Update'),
    );
  }
}
