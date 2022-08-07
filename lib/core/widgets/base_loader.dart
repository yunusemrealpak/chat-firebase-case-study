import 'package:flutter/material.dart';

class BaseLoader extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  const BaseLoader({Key? key, required this.isLoading, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
         Container(
           color: Colors.black.withOpacity(0.2),
           child: const Center(
              child: CircularProgressIndicator.adaptive(valueColor: AlwaysStoppedAnimation<Color>(Colors.white)),
            ),
         ),
      ],
    );
  }
}
