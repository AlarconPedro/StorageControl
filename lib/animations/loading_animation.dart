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
  late IconData icon;
  int tempo = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(startAnimation(), size: 40),
        const SizedBox(height: 10),
        const Text('Carregando...'),
      ],
    );
  }

  IconData startAnimation() {
    tempo <= 500
        ? setState(() {
            icon = CupertinoIcons.hourglass_bottomhalf_fill;
          })
        : tempo > 500 && tempo <= 1000
            ? setState(() {
                icon = CupertinoIcons.hourglass;
              })
            : tempo > 1000 && tempo <= 1500
                ? setState(() {
                    icon = CupertinoIcons.hourglass_tophalf_fill;
                  })
                : setState(() => tempo = 0);
    //   AnimatedBuilder(
    //     animation: _animationController,
    //     builder: (context, child) {
    //       return Transform.rotate(
    //         angle: _animationController.value * 6.3,
    //         child: child,
    //       );
    //     },
    //     child: Icon(icon, size: 40),
    //   );
    //   _animationController.forward();
    return icon;
  }

  void correrTempo() {
    Future.delayed(const Duration(milliseconds: 1), () {
      if (tempo <= 2000) {
        setState(() {
          tempo += 1;
        });
      } else {
        setState(() {
          tempo = 0;
        });
      }
    });
  }
}
