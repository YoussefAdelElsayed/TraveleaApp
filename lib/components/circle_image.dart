import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  String? networkImageLink;
  double? radius;
  bool? withBorder;

  CircleImage({required this.radius,required this.withBorder, required this.networkImageLink,});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(networkImageLink!),
      ),
      backgroundColor: Colors.white,
      radius: (withBorder!)? radius!+2:radius,
    );
  }
}
