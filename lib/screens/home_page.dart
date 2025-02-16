import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../widgets/app_showcase.dart';
import '../widgets/footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                  ],
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/nequ_logo.png',
                      height: 100,
                    ).animate().fadeIn().scale(),
                    const SizedBox(height: 20),
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Modern Mobile Applications',
                          textStyle: const TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                      isRepeatingAnimation: false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'AI-Powered Development Process',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withValues(alpha: .8),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // App Showcase Section
            const AppShowcase(),

            // Footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
