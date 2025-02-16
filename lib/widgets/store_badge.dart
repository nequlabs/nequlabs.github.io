import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

enum StoreType { appStore, playStore }

class StoreBadge extends StatelessWidget {
  final StoreType type;
  final String? url;

  const StoreBadge({
    super.key,
    required this.type,
    this.url,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => launchUrl(Uri.parse(url!)),
      child: Text(type == StoreType.appStore ? 'App Store' : 'Play Store'),
    );
  }
}
