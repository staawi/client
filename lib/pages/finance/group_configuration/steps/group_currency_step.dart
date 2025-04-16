import 'package:flutter/material.dart';
import 'package:flutter_currency_picker/flutter_currency_picker.dart';
import 'package:stawi/config/themes.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/new_group_type.dart';
import 'package:stawi/widgets/abstract_validated_widget.dart';

class GroupCurrencyStep extends ValidatedFieldsWidget {
  final NewGroupTypeController controller;

  const GroupCurrencyStep(this.controller, {super.key});

  @override
  List<String> fieldsToValidate() {
    return ['groupCurrency'];
  }

  @override
  Widget build(BuildContext context) {
    CurrencyProvider.initFromContext(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FormField<Currency>(
          validator: (_) => controller.getFieldError('groupCurrency'),
          builder: (formFieldState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CurrencySelector(
                  value: controller.payload.groupCurrency,
                  hintText: 'Currency Type (Code)',
                  fieldBackground: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.1),
                  update: (value) {
                    final payload = controller.payload;
                    payload.groupCurrency = value.code;
                    controller.setPayload(payload);

                    // Clear any error
                    controller.clearFieldError('groupCurrency');
                  },
                ),
                if (formFieldState.hasError)
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 8.0),
                    child: Text(
                      formFieldState.errorText!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
              ],
            );
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
