import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/l10n.dart';

import 'package:fluffychat/widgets/adaptive_dialogs/adaptive_dialog_action.dart';

enum OkCancelResult { ok, cancel }

Future<OkCancelResult?> showOkCancelAlertDialog({
  required BuildContext context,
  required String title,
  String? message,
  String? okLabel,
  String? cancelLabel,
  bool isDestructive = false,
  bool useRootNavigator = true,
}) =>
    showAdaptiveDialog<OkCancelResult>(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (context) => AlertDialog.adaptive(
        title: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 256),
          child: Text(title),
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 256),
          child: message == null ? null : Text(message),
        ),
        actions: [
          AdaptiveDialogAction(
            onPressed: () => Navigator.of(context)
                .pop<OkCancelResult>(OkCancelResult.cancel),
            child: Text(cancelLabel ?? L10n.of(context).cancel),
          ),
          AdaptiveDialogAction(
            onPressed: () =>
                Navigator.of(context).pop<OkCancelResult>(OkCancelResult.ok),
            child: Text(
              okLabel ?? L10n.of(context).ok,
              style: isDestructive
                  ? TextStyle(color: Theme.of(context).colorScheme.error)
                  : null,
            ),
          ),
        ],
      ),
    );

Future<OkCancelResult?> showOkAlertDialog({
  required BuildContext context,
  required String title,
  String? message,
  String? okLabel,
  bool useRootNavigator = true,
}) =>
    showAdaptiveDialog<OkCancelResult>(
      context: context,
      useRootNavigator: useRootNavigator,
      builder: (context) => AlertDialog.adaptive(
        title: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 256),
          child: Text(title),
        ),
        content: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 256),
          child: message == null ? null : Text(message),
        ),
        actions: [
          AdaptiveDialogAction(
            onPressed: () =>
                Navigator.of(context).pop<OkCancelResult>(OkCancelResult.ok),
            child: Text(okLabel ?? L10n.of(context).close),
          ),
        ],
      ),
    );
