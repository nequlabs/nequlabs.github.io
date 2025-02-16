import 'package:flutter/material.dart';
import 'package:nequ_web/core/constants/app_constants.dart';
import 'package:nequ_web/core/localization/app_localizations.dart';
import 'package:nequ_web/widgets/footer.dart';
import '../widgets/app_showcase.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:nequ_web/core/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    Container(
                      child: Image.asset(
                        AppConstants.logoPath,
                        height: 100,
                      ),
                    ).animate().fadeIn().scale(),
                    const SizedBox(height: 20),
                    Text(
                      l10n.appTagline,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      l10n.appDescription,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white.withValues(alpha: .8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppShowcase(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
