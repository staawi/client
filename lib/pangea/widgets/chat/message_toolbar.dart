import 'dart:async';
import 'package:fluffychat/config/themes.dart';
import 'package:fluffychat/pages/chat/chat.dart';
import 'package:fluffychat/pangea/models/pangea_message_event.dart';
import 'package:fluffychat/pangea/utils/any_state_holder.dart';
import 'package:fluffychat/pangea/utils/error_handler.dart';
import 'package:fluffychat/pangea/utils/overlay.dart';
import 'package:fluffychat/pangea/widgets/chat/message_audio_card.dart';
import 'package:fluffychat/pangea/widgets/chat/message_text_selection.dart';
import 'package:fluffychat/pangea/widgets/chat/message_translation_card.dart';
import 'package:fluffychat/pangea/widgets/chat/overlay_message.dart';
import 'package:fluffychat/pangea/widgets/igc/word_data_card.dart';
import 'package:fluffychat/widgets/matrix.dart';
import 'package:flutter/material.dart';
import 'package:matrix/matrix.dart';

enum MessageMode { translation, play, definition }

class ToolbarDisplayController {
  final FocusNode focusNode = FocusNode();
  final PangeaMessageEvent pangeaMessageEvent;
  final String targetId;
  final bool immersionMode;
  final ChatController controller;

  MessageToolbar? toolbar;
  String? overlayId;
  double? messageWidth;

  final toolbarModeStream = StreamController<MessageMode>.broadcast();

  ToolbarDisplayController({
    required this.pangeaMessageEvent,
    required this.targetId,
    required this.immersionMode,
    required this.controller,
  });

  void setToolbar() {
    toolbar ??= MessageToolbar(
      textSelection: MessageTextSelection(),
      room: pangeaMessageEvent.room,
      toolbarModeStream: toolbarModeStream,
      pangeaMessageEvent: pangeaMessageEvent,
      immersionMode: immersionMode,
      controller: controller,
    );

    final LayerLinkAndKey layerLinkAndKey =
        MatrixState.pAnyState.layerLinkAndKey(targetId);
    final targetRenderBox =
        layerLinkAndKey.key.currentContext?.findRenderObject();
    if (targetRenderBox == null) return;
    final Size transformTargetSize = (targetRenderBox as RenderBox).size;
    messageWidth = transformTargetSize.width;
  }

  void showToolbar(BuildContext context, {MessageMode? mode}) {
    if (highlighted) return;
    if (controller.selectMode) {
      controller.clearSelectedEvents();
    }
    focusNode.unfocus();
    Widget overlayEntry;
    try {
      overlayEntry = Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: pangeaMessageEvent.ownMessage
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          toolbar!,
          OverlayMessage(
            pangeaMessageEvent.event,
            timeline: pangeaMessageEvent.timeline,
            immersionMode: immersionMode,
            ownMessage: pangeaMessageEvent.ownMessage,
            toolbarController: this,
            width: messageWidth,
          ),
        ],
      );
    } catch (err) {
      ErrorHandler.logError(e: err, s: StackTrace.current);
      return;
    }
    OverlayUtil.showOverlay(
      context: context,
      child: overlayEntry,
      transformTargetId: targetId,
      targetAnchor: pangeaMessageEvent.ownMessage
          ? Alignment.bottomRight
          : Alignment.bottomLeft,
      followerAnchor: pangeaMessageEvent.ownMessage
          ? Alignment.bottomRight
          : Alignment.bottomLeft,
      backgroundColor: const Color.fromRGBO(0, 0, 0, 1).withAlpha(164),
    );

    if (MatrixState.pAnyState.overlay != null) {
      overlayId = MatrixState.pAnyState.overlay.hashCode.toString();
    }

    if (mode != null) {
      Future.delayed(
        const Duration(milliseconds: 100),
        () => toolbarModeStream.add(mode),
      );
    }
  }

  bool get highlighted =>
      MatrixState.pAnyState.overlay.hashCode.toString() == overlayId;
}

class MessageToolbar extends StatefulWidget {
  final MessageTextSelection textSelection;
  final Room room;
  final PangeaMessageEvent pangeaMessageEvent;
  final StreamController<MessageMode> toolbarModeStream;
  final bool immersionMode;
  final ChatController controller;

  const MessageToolbar({
    super.key,
    required this.textSelection,
    required this.room,
    required this.pangeaMessageEvent,
    required this.toolbarModeStream,
    required this.immersionMode,
    required this.controller,
  });

  @override
  MessageToolbarState createState() => MessageToolbarState();
}

class MessageToolbarState extends State<MessageToolbar> {
  Widget? child;
  MessageMode? _currentMode;
  late StreamSubscription<String?> _selectionStream;
  late StreamSubscription<MessageMode> _toolbarModeStream;

  IconData _getIconData(MessageMode mode) {
    switch (mode) {
      case MessageMode.translation:
        return Icons.g_translate;
      case MessageMode.play:
        return Icons.play_arrow;
      case MessageMode.definition:
        return Icons.book;
      default:
        return Icons.error; // Icon to indicate an error or unsupported mode
    }
  }

  bool _enabledButton(MessageMode mode) {
    switch (mode) {
      case MessageMode.translation:
        return true;
      case MessageMode.play:
        return true;
      case MessageMode.definition:
        debugPrint("checking");
        return widget.textSelection.selectedText != null;
      default:
        return false;
    }
  }

  void updateMode(MessageMode newMode) {
    debugPrint("updating toolbar mode");
    setState(() => _currentMode = newMode);
    switch (_currentMode) {
      case MessageMode.translation:
        showTranslation();
        break;
      case MessageMode.play:
        playAudio();
        break;
      case MessageMode.definition:
        showDefinition();
        break;
      default:
        break;
    }
    setState(() {});
  }

  void showTranslation() {
    debugPrint("show translation");
    child = MessageTranslationCard(
      messageEvent: widget.pangeaMessageEvent,
      immersionMode: widget.immersionMode,
    );
  }

  void playAudio() {
    debugPrint("play audio");
    child = MessageAudioCard(
      messageEvent: widget.pangeaMessageEvent,
    );
  }

  void showDefinition() {
    if (widget.textSelection.selectedText == null ||
        widget.textSelection.selectedText!.isEmpty) {
      return;
    }

    child = WordDataCard(
      word: widget.textSelection.selectedText!,
      wordLang: widget.pangeaMessageEvent.messageDisplayLangCode,
      fullText: widget.textSelection.messageText,
      fullTextLang: widget.pangeaMessageEvent.messageDisplayLangCode,
      hasInfo: false,
      room: widget.room,
    );
  }

  void showImage() {}

  void spellCheck() {}

  void showMore() {
    MatrixState.pAnyState.closeOverlay();
    widget.controller.onSelectMessage(widget.pangeaMessageEvent.event);
  }

  @override
  void initState() {
    super.initState();
    _toolbarModeStream = widget.toolbarModeStream.stream.listen((mode) {
      updateMode(mode);
    });
  }

  @override
  void dispose() {
    _selectionStream.cancel();
    _toolbarModeStream.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          border: Border.all(
            width: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        constraints: const BoxConstraints(
          maxWidth: 300,
          minWidth: 300,
          maxHeight: 300,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: SingleChildScrollView(
                child: AnimatedSize(
                  duration: FluffyThemes.animationDuration,
                  child: Column(
                    children: [
                      child ?? const SizedBox(),
                      SizedBox(height: child == null ? 0 : 20),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: MessageMode.values.map((mode) {
                    return IconButton(
                      icon: Icon(_getIconData(mode)),
                      onPressed:
                          _enabledButton(mode) ? () => updateMode(mode) : null,
                    );
                  }).toList() +
                  [
                    IconButton(
                      icon: Icon(Icons.adaptive.more_outlined),
                      onPressed: showMore,
                    ),
                  ],
            ),
          ],
        ),
      ),
    );
  }
}
