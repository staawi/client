import 'dart:ui';

import 'package:matrix/matrix.dart';

abstract class AppConfig {
  static String _applicationName = 'Stawi';
  static String get applicationName => _applicationName;
  static String? _applicationWelcomeMessage;
  static String? get applicationWelcomeMessage => _applicationWelcomeMessage;
  static String _defaultHomeserver = 'matrix.stawi.im';
  static String get defaultHomeserver => _defaultHomeserver;
  static String _partitionId = '9bsv0s0hijjg02qk7l1g';
  static String get partitionId => _partitionId;

  static double fontSizeFactor = 1;
  static const Color chatColor = primaryColor;
  static Color? colorSchemeSeed = primaryColor;
  static const double messageFontSize = 16.0;
  static const bool allowOtherHomeservers = true;
  static const bool enableRegistration = true;
  static const Color primaryColor = Color(0xFF5625BA);
  static const Color primaryColorLight = Color(0xFFCCBDEA);
  static const Color secondaryColor = Color(0xFF41a2bc);
  static String _privacyUrl =
      'https://stawi.im/docs/privacy';
  static String get privacyUrl => _privacyUrl;
  static const String website = 'https://stawi.im';
  static const String enablePushTutorial =
      'https://stawi.im/docs/Push-Notifications-without-Google-Services';
  static const String encryptionTutorial =
      'https://stawi.im/docs/How-to-use-end-to-end-encryption-in-Stawi';
  static const String startChatTutorial =
      'https://stawi.im/docs/how-to-connect-with-users';
  static const String appId = 'im.stawi';
  static const String appOpenUrlScheme = 'im.stawi';
  static String _webBaseUrl = 'https://stawi.im';
  static String get webBaseUrl => _webBaseUrl;
  static const String sourceCodeUrl = 'https://github.com/antinvestor/matrix';
  static const String supportUrl =
      'https://github.com/antinvestor/matrix/issues';
  static const String changelogUrl =
      'https://github.com/antinvestor/matrix/blob/main/CHANGELOG.md';
  static final Uri newIssueUrl = Uri(
    scheme: 'https',
    host: 'stawi.im',
    path: '/issues/new',
  );
  static bool renderHtml = true;
  static bool hideRedactedEvents = false;
  static bool hideUnknownEvents = true;
  static bool hideUnimportantStateEvents = true;
  static bool separateChatTypes = false;
  static bool autoplayImages = true;
  static bool sendTypingNotifications = true;
  static bool sendPublicReadReceipts = true;
  static bool swipeRightToLeftToReply = true;
  static bool? sendOnEnter;
  static bool showPresences = true;
  static bool experimentalVoip = false;
  static const bool hideTypingUsernames = false;
  static const bool hideAllStateEvents = false;
  static const String inviteLinkPrefix = 'https://stawi.im/#/';
  static const String deepLinkPrefix = 'im.stawi://chat/';
  static const String schemePrefix = 'matrix:';
  static const String pushNotificationsChannelId = 'stawi_push';
  static const String pushNotificationsAppId = 'im.stawi';
  static const String pushNotificationsGatewayUrl =
      'https://stawi.im/_matrix/push/v1/notify';
  static const String pushNotificationsPusherFormat = 'event_id_only';
  static const double borderRadius = 18.0;
  static const double columnWidth = 360.0;
  static final Uri homeserverList = Uri(
    scheme: 'https',
    host: 'stawi.im',
    path: 'servers.json',
  );

  static void loadFromJson(Map<String, dynamic> json) {
    if (json['chat_color'] != null) {
      try {
        colorSchemeSeed = Color(json['chat_color']);
      } catch (e) {
        Logs().w(
          'Invalid color in config.json! Please make sure to define the color in this format: "0xffdd0000"',
          e,
        );
      }
    }
    if (json['application_name'] is String) {
      _applicationName = json['application_name'];
    }
    if (json['application_welcome_message'] is String) {
      _applicationWelcomeMessage = json['application_welcome_message'];
    }
    if (json['default_homeserver'] is String) {
      _defaultHomeserver = json['default_homeserver'];
    }
    if (json['partition_id'] is String) {
      _partitionId = json['partition_id'];
    }

    if (json['privacy_url'] is String) {
      _privacyUrl = json['privacy_url'];
    }
    if (json['web_base_url'] is String) {
      _webBaseUrl = json['web_base_url'];
    }
    if (json['render_html'] is bool) {
      renderHtml = json['render_html'];
    }
    if (json['hide_redacted_events'] is bool) {
      hideRedactedEvents = json['hide_redacted_events'];
    }
    if (json['hide_unknown_events'] is bool) {
      hideUnknownEvents = json['hide_unknown_events'];
    }
  }
}
