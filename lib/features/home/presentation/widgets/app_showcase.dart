import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../domain/repositories/app_repository.dart';
import '../../data/models/app_model.dart';
import 'store_badge.dart';

class AppShowcase extends StatelessWidget {
  final AppRepository repository = AppRepository();

  AppShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    final apps = repository.getApps();

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
            children: apps.map((app) => _buildAppCard(context, app)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppCard(BuildContext context, AppModel app) {
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
            child: const Icon(Icons.mobile_screen_share),
          ),
          const SizedBox(height: 16),
          Text(
            app.name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 8),
          Text(
            app.description,
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
