import 'package:flutter/material.dart';
import 'package:stawi/utils/error_reporter.dart';

class StawiErrorWidget extends StatefulWidget {
  final FlutterErrorDetails details;
  const StawiErrorWidget(this.details, {super.key});

  @override
  State<StawiErrorWidget> createState() => _StawiErrorWidgetState();
}

class _StawiErrorWidgetState extends State<StawiErrorWidget> {
  static final Set<String> knownExceptions = {};
  @override
  void initState() {
    super.initState();

    if (knownExceptions.contains(widget.details.exception.toString())) {
      return;
    }
    knownExceptions.add(widget.details.exception.toString());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ErrorReporter(
        context,
        'Error Widget',
      ).onErrorCallback(widget.details.exception, widget.details.stack);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.orange,
      child: Placeholder(
        child: Center(
          child: Material(
            color: Colors.white.withAlpha(230),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
