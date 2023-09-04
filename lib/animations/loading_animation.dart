import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({super.key});

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  IconData icon = CupertinoIcons.hourglass_bottomhalf_fill;
  int tempo = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animateIcon();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 40),
        const SizedBox(height: 10),
        const Text('Carregando...'),
      ],
    );
  }

  animateIcon() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animationController.forward();
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        setState(() {
          tempo++;
          if (tempo % 2 == 0) {
            icon = CupertinoIcons.hourglass_tophalf_fill;
          } else {
            icon = CupertinoIcons.hourglass;
          }
          if (tempo == 3) {
            setState(() {
              tempo = 0;
            });
          }
        });
        // _animationController.reset();
      }
    });
  }
}
