import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderPractice extends StatefulWidget {
  final String title;
  const AnimatedBuilderPractice({required this.title, super.key});

  @override
  _AnimatedBuilderPracticeState createState() =>
      _AnimatedBuilderPracticeState();
}

class _AnimatedBuilderPracticeState extends State<AnimatedBuilderPractice>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 8),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: false,
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 300.0,
            height: 200.0,
            child: Image.asset("assets/images/view.jpg"),
          ),
          builder: (BuildContext context, child) {
            return Transform.rotate(
              angle: _controller.value * 2.2 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
