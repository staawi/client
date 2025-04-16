import 'package:flutter/material.dart';

abstract class ValidatedFieldsWidget extends StatelessWidget {
  const ValidatedFieldsWidget({super.key});

  List<String> fieldsToValidate();
}
