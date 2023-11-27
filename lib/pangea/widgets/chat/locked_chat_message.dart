// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/l10n.dart';

// Project imports:
import 'package:fluffychat/config/app_config.dart';

class LockedChatMessage extends StatelessWidget {
  const LockedChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onInverseSurface,
            borderRadius: BorderRadius.circular(AppConfig.borderRadius / 2),
          ),
          child: Text(
            L10n.of(context)!.lockedChatWarning,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14 * AppConfig.fontSizeFactor,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
