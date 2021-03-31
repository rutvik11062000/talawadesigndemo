import 'package:flutter/material.dart';

Scaffold WrapperScaffold(Widget widget) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(child: Container(height: 700, width: 350, child: widget)),
  );
}
