import 'package:flutter/material.dart';

import 'package:matrix/matrix.dart';

import 'package:stawi/config/themes.dart';
import 'package:stawi/pages/image_viewer/image_viewer_view.dart';
import 'package:stawi/utils/matrix_sdk_extensions/event_extension.dart';
import 'package:stawi/utils/platform_infos.dart';
import 'package:stawi/utils/show_scaffold_dialog.dart';
import 'package:stawi/widgets/share_scaffold_dialog.dart';

class ImageViewer extends StatefulWidget {
  final Event event;
  final Timeline? timeline;
  final BuildContext outerContext;

  const ImageViewer(
    this.event, {
    required this.outerContext,
    this.timeline,
    super.key,
  });

  @override
  ImageViewerController createState() => ImageViewerController();
}

class ImageViewerController extends State<ImageViewer> {
  @override
  void initState() {
    super.initState();
    allEvents = widget.timeline?.events
            .where((event) => event.messageType == MessageTypes.Image)
            .toList()
            .reversed
            .toList() ??
        [widget.event];
    var index =
        allEvents.indexWhere((event) => event.eventId == widget.event.eventId);
    if (index < 0) index = 0;
    pageController = PageController(initialPage: index);
  }

  late final PageController pageController;

  late final List<Event> allEvents;

  void prevImage() async {
    await pageController.previousPage(
      duration: FluffyThemes.animationDuration,
      curve: FluffyThemes.animationCurve,
    );
    if (!mounted) return;
    setState(() {});
  }

  void nextImage() async {
    await pageController.nextPage(
      duration: FluffyThemes.animationDuration,
      curve: FluffyThemes.animationCurve,
    );
    if (!mounted) return;
    setState(() {});
  }

  int get _index => pageController.page?.toInt() ?? 0;

  Event get currentEvent => allEvents[_index];

  bool get canGoNext => _index < allEvents.length - 1;

  bool get canGoBack => _index > 0;

  /// Forward this image to another room.
  void forwardAction() => showScaffoldDialog(
        context: context,
        builder: (context) => ShareScaffoldDialog(
          items: [ContentShareItem(currentEvent.content)],
        ),
      );

  /// Save this file with a system call.
  void saveFileAction(BuildContext context) => currentEvent.saveFile(context);

  /// Save this file with a system call.
  void shareFileAction(BuildContext context) => currentEvent.shareFile(context);

  static const maxScaleFactor = 1.5;

  /// Go back if user swiped it away
  void onInteractionEnds(ScaleEndDetails endDetails) {
    if (PlatformInfos.usesTouchscreen == false) {
      if (endDetails.velocity.pixelsPerSecond.dy >
          MediaQuery.of(context).size.height * maxScaleFactor) {
        Navigator.of(context, rootNavigator: false).pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) => ImageViewerView(this);
}
