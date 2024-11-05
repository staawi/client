import 'dart:async';

import 'package:flutter/material.dart';

import 'package:async/async.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

import 'package:stawi/utils/localized_exception_extension.dart';
import 'package:stawi/widgets/adaptive_dialog_action.dart';

/// Displays a loading dialog which reacts to the given [future]. The dialog
/// will be dismissed and the value will be returned when the future completes.
/// If an error occured, then [onError] will be called and this method returns
/// null.
Future<Result<T>> showFutureLoadingDialog<T>({
  required BuildContext context,
  required Future<T> Function() future,
  String? title,
  String? backLabel,
  String Function(dynamic exception)? onError,
  bool barrierDismissible = false,
  bool delay = true,
}) async {
  final futureExec = future();
  final resultFuture = ResultFuture(futureExec);

  if (delay) {
    var i = 3;
    while (i > 0) {
      final result = resultFuture.result;
      if (result != null) {
        if (result.isError) break;
        return result;
      }
      await Future.delayed(const Duration(milliseconds: 100));
      i--;
    }
  }

  final result = await showAdaptiveDialog<Result<T>>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (BuildContext context) => LoadingDialog<T>(
      future: futureExec,
      title: title,
      backLabel: backLabel,
      onError: onError,
    ),
  );
  return result ??
      Result.error(
        Exception('FutureDialog canceled'),
        StackTrace.current,
      );
}

class LoadingDialog<T> extends StatefulWidget {
  final String? title;
  final String? backLabel;
  final Future<T> future;
  final String Function(dynamic exception)? onError;

  const LoadingDialog({
    super.key,
    required this.future,
    this.title,
    this.onError,
    this.backLabel,
  });
  @override
  LoadingDialogState<T> createState() => LoadingDialogState<T>();
}

class LoadingDialogState<T> extends State<LoadingDialog> {
  Object? exception;
  StackTrace? stackTrace;

  @override
  void initState() {
    super.initState();
    widget.future.then(
      (result) => Navigator.of(context).pop<Result<T>>(Result.value(result)),
      onError: (e, s) => setState(() {
        exception = e;
        stackTrace = s;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final exception = this.exception;
    final titleLabel = exception != null
        ? widget.onError?.call(exception) ??
            exception.toLocalizedString(context)
        : widget.title ?? L10n.of(context).loadingPleaseWait;

    return AlertDialog.adaptive(
      content: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 256),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (exception == null)
              const CircularProgressIndicator.adaptive()
            else
              Icon(
                Icons.error_outline_outlined,
                color: Theme.of(context).colorScheme.error,
                size: 48,
              ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                titleLabel,
                maxLines: 2,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      actions: exception == null
          ? null
          : [
              AdaptiveDialogAction(
                onPressed: () => Navigator.of(context).pop<Result<T>>(
                  Result.error(
                    exception,
                    stackTrace,
                  ),
                ),
                child: Text(widget.backLabel ?? L10n.of(context).close),
              ),
            ],
    );
  }
}

extension DeprecatedApiAccessExtension<T> on Result<T> {
  T? get result => asValue?.value;

  Object? get error => asError?.error;
}
