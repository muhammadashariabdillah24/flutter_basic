// EXTRACT WIDGET (KOTAK WARNA)

import 'package:flutter/material.dart';

// Extract widget / reusable widget

class KotakWarna extends StatelessWidget {
  const KotakWarna({
    Key? key,
    required this.text,
    required this.warna,
  }) : super(key: key);

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 200,
      height: 200,
      color: warna,
      child: Center(child: Text(text)),
    );
  }
}
