import 'package:stawi/config/themes.dart';
import 'package:stawi/pages/new_group_type/new_group.dart';
import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/flutter_currency_picker.dart';
import 'package:stawi/l10n/l10n.dart';

class GroupCurrencyStep extends StatelessWidget {
  final NewGroupController controller;

  const GroupCurrencyStep(this.controller, {super.key});

  @override
  Widget build(BuildContext context) {
    CurrencyProvider.initFromContext(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CurrencySelector(
          value: controller.payload.groupCurrency,
          hintText: 'Currency Type (Code)',
          fieldBackground:
              Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.1),
          update: (value) {
            final payload = controller.payload;
            payload.groupCurrency = value.code;
            controller.setPayload(payload);
          },
        ),
        AnimatedSize(
          duration: FluffyThemes.animationDuration,
          curve: FluffyThemes.animationCurve,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 32),
            trailing: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.info_outlined),
            ),
            subtitle: Text(L10n.of(context).currencySelectDescription),
          ),
        ),
      ],
    );
  }
}
