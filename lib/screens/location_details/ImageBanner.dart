import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String path;
  final double height;

  const ImageBanner({@required this.path, this.height = 200.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: this.height),
      decoration: BoxDecoration(color: Colors.red[300]),
      child: Image.asset(
        path,
        fit: BoxFit.cover,
      ),
    );
  }
}
