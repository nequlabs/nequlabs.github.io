import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'store_badge.dart';

class AppShowcase extends StatelessWidget {
  const AppShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          Text(
            'Our Applications',
            style: Theme.of(context).textTheme.headlineMedium,
          ).animate().fadeIn(),
          const SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              _buildAppCard(
                context,
                'App Name 1',
                'assets/images/app1.png',
                'AI-powered mobile application',
              ),
              _buildAppCard(
                context,
                'App Name 2',
                'assets/images/app2.png',
                'Smart solution for your needs',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAppCard(
    BuildContext context,
    String title,
    String imagePath,
    String description,
  ) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: .1),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            color: Colors.grey[300],
            child: Icon(Icons.mobile_screen_share),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            description,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StoreBadge(type: StoreType.appStore),
              SizedBox(width: 12),
              StoreBadge(type: StoreType.playStore),
            ],
          ),
        ],
      ),
    ).animate().fadeIn().slideX();
  }
}
