import 'package:achi_assignment/screens/onboarding/onboarding1.dart';
import 'package:achi_assignment/screens/onboarding/onboarding2.dart';
import 'package:achi_assignment/screens/onboarding/onboarding3.dart';
import 'package:achi_assignment/widgets/custombutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final _controller = PageController();
  final pages = [
    OnboardingOne(),
    OnboardingTwo(),
    OnboardingThree(),
  ];

  int currentIndex = 0;
  AnimationController? _animationController;
  Animation<double>? _animation;
  bool showButton = true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController!);
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                return pages[index];
              },
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                  if (currentIndex == 2) {
                    _animationController?.forward();
                    showButton = false;
                  } else {
                    _animationController?.reverse();
                    showButton = true;
                  }
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _controller.jumpToPage(2);
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(90, 20),
                      elevation: 0,
                      backgroundColor: Color(0xffE8E0EA),
                    ),
                    child: Text(
                      "Skip",
                      style: GoogleFonts.lexend(
                        color: Color(0xff6318AF),
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (currentIndex != 2)
              Container(
                alignment: Alignment(0, 0.39),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: pages.length,
                  effect: SlideEffect(
                    dotColor: Color(0xffE0D4EC),
                    activeDotColor: Color(0xff6318AF),
                    dotHeight: 10,
                    dotWidth: 30,
                  ),
                ),
              )
            else
              Container(
                alignment: Alignment(0, 0.5),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: pages.length,
                  effect: SlideEffect(
                    dotColor: Color(0xffE0D4EC),
                    activeDotColor: Color(0xff6318AF),
                    dotHeight: 10,
                    dotWidth: 30,
                  ),
                ),
              ),
            AnimatedBuilder(
              animation: _animationController!,
              builder: (context, child) {
                return Positioned(
                  bottom: 100,
                  right: showButton
                      ? 180
                      : 110, // Set different positions based on the condition
                  child: Opacity(
                    opacity: showButton ? 1 : _animation!.value,
                    child: Transform.scale(
                      scale: showButton ? 1 : _animation!.value,
                      child: child,
                    ),
                  ),
                );
              },
              child: currentIndex != 2
                  ? CustomButton(
                      size: 100.0,
                      innerColor: Color(0xff6017AA),
                      outerColor: Color(0xffE0D4EC),
                      onPressed: () {
                        _controller.nextPage(
                          duration: Duration(milliseconds: 1),
                          curve: Curves.decelerate,
                        );
                      },
                    )
                  : Container(
                      width: 230,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                      child: ElevatedButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.lexend(
                                  color: Color(0xff6318AF),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 29,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 26,
                                backgroundColor: Color(0xff6318AF),
                                child: Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffE0D4EC),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50))),
                        onPressed: () {},
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
