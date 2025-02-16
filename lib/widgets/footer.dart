import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Icon(Icons.apps, size: 60),
          const SizedBox(height: 20),
          Text(
            'Creating Next Generation Mobile Applications',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _SocialLink(icon: Icons.email, url: 'mailto:contact@nequ.dev'),
              SizedBox(width: 20),
              _SocialLink(icon: Icons.link, url: 'https://nequlabs.github.io/'),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            '© ${DateTime.now().year} Nequ Labs. All rights reserved.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _SocialLink extends StatelessWidget {
  final IconData icon;
  final String url;

  const _SocialLink({
    required this.icon,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      onPressed: () => launchUrl(Uri.parse(url)),
    );
  }
}
