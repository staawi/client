import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';
import 'package:stawi/l10n/l10n.dart';
import 'package:stawi/services/stawi/payloads/voting_mode_event.dart';
import 'package:stawi/widgets/matrix.dart';

import 'voting_mode_controller.dart';

class VotingModeView extends StatefulWidget {
  final Room? room;

  const VotingModeView({super.key, this.room});

  @override
  State<VotingModeView> createState() => _VotingModeViewState();
}

class _VotingModeViewState extends State<VotingModeView> {
  late final VotingModeController controller;

  @override
  void initState() {
    super.initState();
    final room =
        widget.room ??
        Matrix.of(context).client.getRoomById(Matrix.of(context).activeRoomId!);
    controller = VotingModeController(room: room!);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) {
        final error = controller.error;
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: controller.loading ? null : Navigator.of(context).pop,
            ),
            title: Text(L10n.of(context).votingMode),
            actions: [
              if (controller.loading)
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: CircularProgressIndicator(),
                  ),
                )
              else
                TextButton(
                  onPressed: () async {
                    final success = await controller.saveVotingMode();
                    if (success && mounted) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text(L10n.of(context).save),
                ),
            ],
          ),
          body: ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              if (error != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(8),
                    color: theme.colorScheme.errorContainer,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        error,
                        style: TextStyle(
                          color: theme.colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 16),
              Text(
                L10n.of(context).votingMode,
                style: theme.textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              // Normal Voting Option
              _buildVotingOption(
                context,
                VotingMode.normal,
                Icons.how_to_vote_outlined,
              ),

              // Threshold slider - only shown for normal voting mode
              if (controller.votingMode == VotingMode.normal)
                _buildThresholdSlider(context),

              const SizedBox(height: 12),
              // Delegated Voting Option
              _buildVotingOption(
                context,
                VotingMode.delegated,
                Icons.supervised_user_circle_outlined,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildVotingOption(
    BuildContext context,
    VotingMode mode,
    IconData icon,
  ) {
    final theme = Theme.of(context);
    final isSelected = controller.votingMode == mode;

    return Material(
      color:
          isSelected
              ? theme.colorScheme.primaryContainer.withValues(alpha: 0.3)
              : theme.cardColor,
      borderRadius: BorderRadius.circular(12),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => controller.setVotingMode(mode),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor:
                    isSelected ? theme.colorScheme.primary : theme.dividerColor,
                child: Icon(
                  icon,
                  color:
                      isSelected
                          ? theme.colorScheme.onPrimary
                          : theme.colorScheme.onSurface,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mode.name(context),
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      mode.description(context),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              if (isSelected)
                Icon(Icons.check_circle, color: theme.colorScheme.primary),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds a slider widget to adjust the threshold percentage for normal voting mode
  Widget _buildThresholdSlider(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            L10n.of(context).votingThreshold,
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 8),

          // Description
          Text(
            L10n.of(context).votingThresholdDescription,
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),

          // Slider with percentage display
          Row(
            children: [
              Expanded(
                child: Slider(
                  value: controller.thresholdPercentage.toDouble(),
                  min: minThresholdPercentage.toDouble(),
                  max: maxThresholdPercentage.toDouble(),
                  divisions: maxThresholdPercentage - minThresholdPercentage,
                  label: '${controller.thresholdPercentage}%',
                  onChanged: (value) {
                    setState(() {
                      controller.thresholdPercentage = value.round();
                    });
                  },
                ),
              ),
              // Display current percentage
              Container(
                width: 48,
                alignment: Alignment.center,
                child: Text(
                  '${controller.thresholdPercentage}%',
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
