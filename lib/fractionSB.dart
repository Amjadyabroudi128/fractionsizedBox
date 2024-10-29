import 'package:flutter/material.dart';

class fractionSB extends StatelessWidget {
  const fractionSB({
    super.key,
    required this.smalContainer,
  });

  final Color smalContainer;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      widthFactor: 0.9, // 90 percent of the parent widget
      heightFactor: 0.4, // 40 percent of the parent widget
      child: Container(
        color: smalContainer,
      ),
    );
  }
}
