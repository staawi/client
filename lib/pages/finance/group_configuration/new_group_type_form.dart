import 'package:flutter/material.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/pages/finance/group_configuration/steps/completed_step.dart';
import 'package:stawi/widgets/abstract_validated_widget.dart';

import 'new_group_type.dart';

class NewGroupTypeForm extends StatefulWidget {
  final NewGroupTypeController controller;

  const NewGroupTypeForm(this.controller, {super.key});

  @override
  State<NewGroupTypeForm> createState() => _NewGroupTypeFormState();
}

class _NewGroupTypeFormState extends State<NewGroupTypeForm> {
  @override
  Widget build(BuildContext context) {
    final steps = widget.controller.generateStepsRequired(context);

    if (widget.controller.isComplete) {
      return SuccessGroupCreateStep(widget.controller);
    }

    return Form(
      key: widget.controller.formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Theme(
        // Override the stepper theme to ensure proper scrolling
        data: Theme.of(context).copyWith(
          scrollbarTheme: const ScrollbarThemeData(
            thumbVisibility: WidgetStatePropertyAll(true),
          ),
        ),
        child: Stepper(
          physics: const NeverScrollableScrollPhysics(),
          controlsBuilder: (context, details) {
            return Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed:
                          widget.controller.loading
                              ? null
                              : details.onStepContinue,
                      child:
                          widget.controller.loading
                              ? const LinearProgressIndicator()
                              : Text(
                                widget.controller.isLastStep()
                                    ? L10n.of(context).submit
                                    : "Next",
                              ),
                    ),
                  ),
                  if (!widget.controller.isFirstStep) ...[
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: details.onStepCancel,
                        child: const Text("Back"),
                      ),
                    ),
                  ],
                ],
              ),
            );
          },
          type: StepperType.vertical,
          key: ValueKey(steps.length),
          steps: widget.controller.groupCreateSteps,
          currentStep: widget.controller.getCurrentStep,
          onStepContinue: () {
            if (widget.controller.isLastStep()) {
              if (widget.controller.isPayloadValid()) {
                widget.controller.setIsComplete();
                widget.controller.submitAction();
              } else {
                // Show a snackbar with validation errors
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(L10n.of(context).fixErrorsInStep),
                    backgroundColor: Theme.of(context).colorScheme.error,
                  ),
                );
              }
            } else {
              final currentStep = widget.controller.getCurrentStep;
              final newStep = currentStep + 1;
              final activeStep = steps[currentStep];
              if (activeStep.content is ValidatedFieldsWidget) {
                widget.controller.setActiveFields(
                  (activeStep.content as ValidatedFieldsWidget)
                      .fieldsToValidate(),
                );
              }
              widget.controller.setCurrentStep(newStep);
            }
          },
          onStepCancel: () {
            if (!widget.controller.isFirstStep) {
              widget.controller.setCurrentStep(
                widget.controller.getCurrentStep - 1,
              );
            }
          },
          onStepTapped: (step) => widget.controller.setCurrentStep(step),
        ),
      ),
    );
  }
}
