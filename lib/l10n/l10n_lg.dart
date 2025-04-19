// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Ganda Luganda (`lg`).
class L10nLg extends L10n {
  L10nLg([String locale = 'lg']) : super(locale);

  @override
  String get alwaysUse24HourFormat => 'sikyamu';

  @override
  String get repeatPassword => 'Ddamu akasumuluzo';

  @override
  String get notAnImage => 'Si fayiro ya kifaananyi.';

  @override
  String get remove => 'Sangula';

  @override
  String get importNow => 'Twala kati kati kati';

  @override
  String get importEmojis => 'Twala Emojis';

  @override
  String get importFromZipFile => 'Twala okuva mu fayiro ya .zip';

  @override
  String get exportEmotePack => 'Kfulumya ekibina kya Emojis ng\'ekifaananyi .zip';

  @override
  String get replace => 'Sikiza';

  @override
  String get about => 'Kukwata';

  @override
  String aboutHomeserver(String homeserver) {
    return 'Kukwata $homeserver';
  }

  @override
  String get accept => 'Kkiriza';

  @override
  String acceptedTheInvitation(String username) {
    return '👍 $username akkirizza okusiibwako';
  }

  @override
  String get account => 'Akawunti';

  @override
  String activatedEndToEndEncryption(String username) {
    return '🔐 $username akyusizza enkizo okuva ku nkomerero okutuuka ku nkomerero';
  }

  @override
  String get addEmail => 'Gatta email';

  @override
  String get confirmMatrixId => 'Nsaba okakase Matrix ID yo okusobola okuggyawo akawunti yo.';

  @override
  String supposedMxid(String mxid) {
    return 'Kino kilina kubeera $mxid';
  }

  @override
  String get addChatDescription => 'Gatta ennongosereza ya chat...';

  @override
  String get addToSpace => 'Gatta mu kifo';

  @override
  String get admin => 'Omukulembeze';

  @override
  String get alias => 'erinnya erirala';

  @override
  String get all => 'Byonna';

  @override
  String get allChats => 'Chat zonna';

  @override
  String get commandHint_googly => 'Tuma amaso agalaba';

  @override
  String get commandHint_cuddle => 'Tuma okunyweza';

  @override
  String get commandHint_hug => 'Tuma okunyweza';

  @override
  String googlyEyesContent(String senderName) {
    return '$senderName akuwa amaso agalaba';
  }

  @override
  String cuddleContent(String senderName) {
    return '$senderName akunyweza';
  }

  @override
  String hugContent(String senderName) {
    return '$senderName akunyweza';
  }

  @override
  String answeredTheCall(String senderName) {
    return '$senderName azzeemu essimu';
  }

  @override
  String get anyoneCanJoin => 'Buli omu ayinza okwegatta';

  @override
  String get appLock => 'Okukwata App';

  @override
  String get appLockDescription => 'Kaka app bw\'etakozesebwa n\'ekyama';

  @override
  String get archive => 'Kukwatibwa';

  @override
  String get areGuestsAllowedToJoin => 'Abagenyi bayinzibwa okwegatta';

  @override
  String get areYouSure => 'Okakasa?';

  @override
  String get areYouSureYouWantToLogout => 'Okakasa oyagala okufuluma?';

  @override
  String get askSSSSSign => 'Okusobola okuteekawo omuntu omulala, nyiga akasumuluzo ko ak\'ekyama oba ekisumuluzo eky\'okuddamu.';

  @override
  String askVerificationRequest(String username) {
    return 'Kkiriza okusaba okuno okuva eri $username?';
  }

  @override
  String get autoplayImages => 'Zannya obutereevu stickers n\'emoji ezikola';

  @override
  String badServerLoginTypesException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Server esobola okuyingiza mu ngeri zino:\n$serverVersions\nNaye app eno esobola kuyingiza mu ngeri zino zokka:\n$supportedVersions';
  }

  @override
  String get sendTypingNotifications => 'Tuma obubaka bw\'okuwandiika';

  @override
  String get swipeRightToLeftToReply => 'Sikula okuva ddyo okugenda ku kkono okuddamu';

  @override
  String get sendOnEnter => 'Tuma nga okoze Enter';

  @override
  String badServerVersionsException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Server esobola okuddamu Spec versions:\n$serverVersions\nNaye app eno esobola zokka $supportedVersions';
  }

  @override
  String countChatsAndCountParticipants(int chats, int participants) {
    return '$chats chats n\'abantu $participants';
  }

  @override
  String get noMoreChatsFound => 'Tewali chats ndala zizuuliddwa...';

  @override
  String get noChatsFoundHere => 'Tewali chats zizuuliddwa wano kati. Tandika chat empya n\'omuntu ng\'okozesa akatundu akali wansi. ⤵️';

  @override
  String get joinedChats => 'Chats ezigattiddwa';

  @override
  String get unread => 'Tekyasomeddwa';

  @override
  String get space => 'Ekifo';

  @override
  String get spaces => 'Ebifo';

  @override
  String get banFromChat => 'Goba mu chat';

  @override
  String get banned => 'Agobeddwa';

  @override
  String bannedUser(String username, String targetName) {
    return '$username agobye $targetName';
  }

  @override
  String get blockDevice => 'Siba ekikozesebwa';

  @override
  String get blocked => 'Kizibiddwa';

  @override
  String get botMessages => 'Obubaka bwa bot';

  @override
  String get cancel => 'Sazaamu';

  @override
  String cantOpenUri(String uri) {
    return 'Tekisoboka okuggyawo URI $uri';
  }

  @override
  String get changeDeviceName => 'Kyusa erinnya ly\'ekikozesebwa';

  @override
  String changedTheChatAvatar(String username) {
    return '$username akyusizza avatar ya chat';
  }

  @override
  String changedTheChatDescriptionTo(String username, String description) {
    return '$username changed the chat description to: \'$description\'';
  }

  @override
  String changedTheChatNameTo(String username, String chatname) {
    return '$username changed the chat name to: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(String username) {
    return '$username changed the chat permissions';
  }

  @override
  String changedTheDisplaynameTo(String username, String displayname) {
    return '$username changed their displayname to: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(String username) {
    return '$username changed the guest access rules';
  }

  @override
  String changedTheGuestAccessRulesTo(String username, String rules) {
    return '$username changed the guest access rules to: $rules';
  }

  @override
  String changedTheHistoryVisibility(String username) {
    return '$username changed the history visibility';
  }

  @override
  String changedTheHistoryVisibilityTo(String username, String rules) {
    return '$username changed the history visibility to: $rules';
  }

  @override
  String changedTheJoinRules(String username) {
    return '$username changed the join rules';
  }

  @override
  String changedTheJoinRulesTo(String username, String joinRules) {
    return '$username changed the join rules to: $joinRules';
  }

  @override
  String changedTheProfileAvatar(String username) {
    return '$username changed their avatar';
  }

  @override
  String changedTheRoomAliases(String username) {
    return '$username changed the room aliases';
  }

  @override
  String changedTheRoomInvitationLink(String username) {
    return '$username changed the invitation link';
  }

  @override
  String get changePassword => 'Kyusa akasumuluzo';

  @override
  String get changeTheHomeserver => 'Kyusa homeserver';

  @override
  String get changeTheme => 'Kyusa omusono gwo';

  @override
  String get changeTheNameOfTheGroup => 'Kyusa erinnya ly\'ekibina';

  @override
  String get changeYourAvatar => 'Kyusa ekifaananyi kyo';

  @override
  String get channelCorruptedDecryptError => 'Enkizo efudde obubi';

  @override
  String get chat => 'Chat';

  @override
  String get yourChatBackupHasBeenSetUp => 'Obukopi bwa chat bwo buteekeddwawo.';

  @override
  String get chatBackup => 'Obukopi bwa chat';

  @override
  String get chatBackupDescription => 'Obubaka bwo obukadde bukumiddwa n\'ekisumuluzo eky\'okuddamu. Kkiriza nti tokyerabira.';

  @override
  String get chatDetails => 'Ebisingawo ku chat';

  @override
  String get chatHasBeenAddedToThisSpace => 'Chat egattiddwa mu kifo kino';

  @override
  String get chats => 'Chat';

  @override
  String get chooseAStrongPassword => 'Londa akasumuluzo akalungi';

  @override
  String get clearArchive => 'Sangula archive';

  @override
  String get close => 'Ggalawo';

  @override
  String get commandHint_markasdm => 'Mark as direct message room for the giving Matrix ID';

  @override
  String get commandHint_markasgroup => 'Mark as group';

  @override
  String get commandHint_ban => 'Ban the given user from this room';

  @override
  String get commandHint_clearcache => 'Clear cache';

  @override
  String get commandHint_create => 'Create an empty group chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_discardsession => 'Discard session';

  @override
  String get commandHint_dm => 'Start a direct chat\nUse --no-encryption to disable encryption';

  @override
  String get commandHint_html => 'Send HTML-formatted text';

  @override
  String get commandHint_invite => 'Invite the given user to this room';

  @override
  String get commandHint_join => 'Join the given room';

  @override
  String get commandHint_kick => 'Remove the given user from this room';

  @override
  String get commandHint_leave => 'Leave this room';

  @override
  String get commandHint_me => 'Describe yourself';

  @override
  String get commandHint_myroomavatar => 'Set your picture for this room (by mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Set your display name for this room';

  @override
  String get commandHint_op => 'Set the given user\'s power level (default: 50)';

  @override
  String get commandHint_plain => 'Send unformatted text';

  @override
  String get commandHint_react => 'Send reply as a reaction';

  @override
  String get commandHint_send => 'Send text';

  @override
  String get commandHint_unban => 'Unban the given user from this room';

  @override
  String get commandInvalid => 'Command invalid';

  @override
  String commandMissing(String command) {
    return '$command is not a command.';
  }

  @override
  String get compareEmojiMatch => 'Please compare the emojis';

  @override
  String get compareNumbersMatch => 'Please compare the numbers';

  @override
  String get configureChat => 'Configure chat';

  @override
  String get confirm => 'Kakasa';

  @override
  String get connect => 'Gatta';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Omukutu agattiddwa mu kibina';

  @override
  String get containsDisplayName => 'Kirimu erinnya erirabika';

  @override
  String get containsUserName => 'Kirimu erinnya ly\'omukozesa';

  @override
  String get contentHasBeenReported => 'Ekikozesebwa kino kiweereddwa abakulira server';

  @override
  String get copiedToClipboard => 'Kopeddwa ku clipboard';

  @override
  String get copy => 'Koppa';

  @override
  String get copyToClipboard => 'Koppa ku clipboard';

  @override
  String couldNotDecryptMessage(String error) {
    return 'Tekisobose kusumulula obubaka: $error';
  }

  @override
  String countParticipants(int count) {
    return '$count participants';
  }

  @override
  String get create => 'Tonda';

  @override
  String createdTheChat(String username) {
    return '💬 $username created the chat';
  }

  @override
  String get createGroup => 'Tonda ekibina';

  @override
  String get createNewSpace => 'Ekifo kipya';

  @override
  String get currentlyActive => 'Currently active';

  @override
  String get darkTheme => 'Dark';

  @override
  String dateAndTimeOfDay(String date, String timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(String month, String day) {
    return '$month-$day';
  }

  @override
  String dateWithYear(String year, String month, String day) {
    return '$year-$month-$day';
  }

  @override
  String get deactivateAccountWarning => 'This will deactivate your user account. This can not be undone! Are you sure?';

  @override
  String get defaultPermissionLevel => 'Default permission level for new users';

  @override
  String get delete => 'Delete';

  @override
  String get deleteAccount => 'Delete account';

  @override
  String get deleteMessage => 'Delete message';

  @override
  String get device => 'Device';

  @override
  String get deviceId => 'Device ID';

  @override
  String get devices => 'Devices';

  @override
  String get directChats => 'Chat za ddala';

  @override
  String get allRooms => 'Ebisinge byonna';

  @override
  String get displaynameHasBeenChanged => 'Erinnya erirabika likyusiddwa';

  @override
  String get downloadFile => 'Teeka fayiro wansi';

  @override
  String get edit => 'Kyuusa';

  @override
  String get editBlockedServers => 'Kyuusa amaservers agazibiddwa';

  @override
  String get chatPermissions => 'Obukusa bwa chat';

  @override
  String get editDisplayname => 'Kyuusa erinnya erirabika';

  @override
  String get editRoomAliases => 'Kyuusa amannya amalala g\'ekisenge';

  @override
  String get editRoomAvatar => 'Kyuusa ekifaananyi ky\'ekisenge';

  @override
  String get emoteExists => 'Emote eriyo dda!';

  @override
  String get emoteInvalid => 'Emote shortcode si ntuufu!';

  @override
  String get emoteKeyboardNoRecents => 'Emote ezikozeeko ziweebwa wano...';

  @override
  String get emotePacks => 'Emote pack z\'ekisenge';

  @override
  String get emoteSettings => 'Enteekateeka za emote';

  @override
  String get globalChatId => 'ID ya chat y\'ensi yonna';

  @override
  String get accessAndVisibility => 'Okuyingira n\'okulabika';

  @override
  String get accessAndVisibilityDescription => 'Ani ayinza okwegatta ku chat eno n\'engeri chat gy\'eyinza okuzuulibwamu.';

  @override
  String get calls => 'Okuyita';

  @override
  String get customEmojisAndStickers => 'Emojis n\'estickers ez\'ekikozesebwa';

  @override
  String get customEmojisAndStickersBody => 'Gatta oba gabana emojis oba stickers ez\'ekikozesebwa mu chat yonna.';

  @override
  String get emoteShortcode => 'Emote shortcode';

  @override
  String get emoteWarnNeedToPick => 'Lina okulonda emote shortcode n\'ekifaananyi!';

  @override
  String get emptyChat => 'Chat teriiko kintu';

  @override
  String get enableEmotesGlobally => 'Kozesa emote pack buli wamu';

  @override
  String get enableEncryption => 'Teekawo enkizo';

  @override
  String get enableEncryptionWarning => 'Tosobola kuddamu kuggyawo enkizo. Okakasa?';

  @override
  String get encrypted => 'Kiziddwa';

  @override
  String get encryption => 'Enkizo';

  @override
  String get encryptionNotEnabled => 'Enkizo teriiko';

  @override
  String endedTheCall(String senderName) {
    return '$senderName ended the call';
  }

  @override
  String get enterAnEmailAddress => 'Yingiza email';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Yingiza homeserver yo';

  @override
  String errorObtainingLocation(String error) {
    return 'Wabaddemu ensobi mu kufuna ekifo: $error';
  }

  @override
  String get everythingReady => 'Byonna bitegekeddwa!';

  @override
  String get extremeOffensive => 'Kivumirira nnyo';

  @override
  String get fileName => 'Erinnya lya fayiro';

  @override
  String get stawi => 'Stawi';

  @override
  String get fontSize => 'Obunene bw\'ennukuta';

  @override
  String get forward => 'Sindikira mu maaso';

  @override
  String get fromJoining => 'Okuva mu kwetaba';

  @override
  String get fromTheInvitation => 'Okuva mu kusaba';

  @override
  String get goToTheNewRoom => 'Genda mu kisenge kipya';

  @override
  String get group => 'Ekibina';

  @override
  String get chatDescription => 'Ennongosereza ya chat';

  @override
  String get chatDescriptionHasBeenChanged => 'Ennongosereza ya chat ekyusiddwa';

  @override
  String get groupIsPublic => 'Ekibina kya buli omu';

  @override
  String get groups => 'Ebibiina';

  @override
  String groupWith(String displayname) {
    return 'Group with $displayname';
  }

  @override
  String get guestsAreForbidden => 'Guests are forbidden';

  @override
  String get guestsCanJoin => 'Guests can join';

  @override
  String hasWithdrawnTheInvitationFor(String username, String targetName) {
    return '$username has withdrawn the invitation for $targetName';
  }

  @override
  String get help => 'Buyambi';

  @override
  String get hideRedactedEvents => 'Kwekka ebintu ebyasaziddwaamu';

  @override
  String get hideRedactedMessages => 'Kwekka obubaka obwasaziddwaamu';

  @override
  String get hideRedactedMessagesBody => 'If someone redacts a message, this message won\'t be visible in the chat anymore.';

  @override
  String get hideInvalidOrUnknownMessageFormats => 'Kwekka obubaka obutamanyiddwa oba obutaliimu';

  @override
  String get howOffensiveIsThisContent => 'Ekikozesebwa kino kivumirira kitya?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Obulamu';

  @override
  String get block => 'Block';

  @override
  String get blockedUsers => 'Blocked users';

  @override
  String get blockListDescription => 'You can block users who are disturbing you. You won\'t be able to receive any messages or room invites from the users on your personal block list.';

  @override
  String get blockUsername => 'Ignore username';

  @override
  String get iHaveClickedOnLink => 'I have clicked on the link';

  @override
  String get incorrectPassphraseOrKey => 'Akasumuluzo oba ekisumuluzo eky\'okuddamu tekituufu';

  @override
  String get inoffensive => 'Tekivumirira';

  @override
  String get inviteContact => 'Invite contact';

  @override
  String inviteContactToGroupQuestion(String contact, String groupName) {
    return 'Do you want to invite $contact to the chat \"$groupName\"?';
  }

  @override
  String inviteContactToGroup(String groupName) {
    return 'Invite contact to $groupName';
  }

  @override
  String get noChatDescriptionYet => 'Tewali nnongosereza ya chat etondebwa';

  @override
  String get tryAgain => 'Gezaako nate';

  @override
  String get invalidServerName => 'Erinnya lya server si lituufu';

  @override
  String get invited => 'Ayitiddwa';

  @override
  String get redactMessageDescription => 'The message will be redacted for all participants in this conversation. This cannot be undone.';

  @override
  String get optionalRedactReason => '(Optional) Reason for redacting this message...';

  @override
  String invitedUser(String username, String targetName) {
    return '📩 $username invited $targetName';
  }

  @override
  String get invitedUsersOnly => 'Invited users only';

  @override
  String get inviteForMe => 'Invite for me';

  @override
  String inviteText(String username, String link) {
    return '$username invited you to stawi. Visit invitation link $link to connect';
  }

  @override
  String get isTyping => 'awandiika…';

  @override
  String joinedTheChat(String username) {
    return '👋 $username joined the chat';
  }

  @override
  String get joinRoom => 'Genda mu kisenge';

  @override
  String kicked(String username, String targetName) {
    return '👞 $username kicked $targetName';
  }

  @override
  String kickedAndBanned(String username, String targetName) {
    return '🙅 $username kicked and banned $targetName';
  }

  @override
  String get kickFromChat => 'Kick from chat';

  @override
  String lastActiveAgo(String localizedTimeShort) {
    return 'Last active: $localizedTimeShort';
  }

  @override
  String get leave => 'Fuluma';

  @override
  String get leftTheChat => 'Afuddewo chat';

  @override
  String get license => 'Layisensi';

  @override
  String get lightTheme => 'Ekyeewuunyo';

  @override
  String loadCountMoreParticipants(int count) {
    return 'Load $count more participants';
  }

  @override
  String get dehydrate => 'Export session and wipe device';

  @override
  String get dehydrateWarning => 'This action cannot be undone. Ensure you safely store the backup file.';

  @override
  String get dehydrateTor => 'TOR Users: Export session';

  @override
  String get dehydrateTorLong => 'For TOR users, it is recommended to export the session before closing the window.';

  @override
  String get hydrateTor => 'TOR Users: Import session export';

  @override
  String get hydrateTorLong => 'Did you export your session last time on TOR? Quickly import it and continue chatting.';

  @override
  String get hydrate => 'Restore from backup file';

  @override
  String get loadingPleaseWait => 'Ebituufu... Linda katono.';

  @override
  String get loadMore => 'Gatta ebisingawo...';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get contactPermissionDeniedNotice => 'Contact permission denied. Please grant them to be able to connect with others.';

  @override
  String get login => 'Yingira';

  @override
  String logInTo(String homeserver) {
    return 'Log in to $homeserver';
  }

  @override
  String get logout => 'Fuluma';

  @override
  String get memberChanges => 'Enkyukakyuka z\'abantu';

  @override
  String get mention => 'Gamba';

  @override
  String get messages => 'Obubaka';

  @override
  String get messagesStyle => 'Obubaka:';

  @override
  String get moderator => 'Omulamuzi';

  @override
  String get muteChat => 'Ssiliza chat';

  @override
  String get needPantalaimonWarning => 'Please be aware that you need Pantalaimon to use end-to-end encryption for now.';

  @override
  String get newChat => 'Chat empya';

  @override
  String get newMessageInStawi => '💬 Obubaka empya mu Stawi';

  @override
  String get newVerificationRequest => 'Okusaba okuggya okw\'okukakasa!';

  @override
  String get next => 'Weddako';

  @override
  String get no => 'Nedda';

  @override
  String get noConnectionToTheServer => 'Tewali kukwatagana na server';

  @override
  String get noEmotesFound => 'Tewali emote zizuuliddwa. 😕';

  @override
  String get noEncryptionForPublicRooms => 'You can only activate encryption as soon as the room is no longer publicly accessible.';

  @override
  String get noGoogleServicesWarning => 'Firebase Cloud Messaging doesn\'t appear to be available on your device. To still receive push notifications, we recommend installing ntfy. With ntfy or another Unified Push provider you can receive push notifications in a data secure way. You can download ntfy from the PlayStore or from F-Droid.';

  @override
  String noMatrixServer(String server1, String server2) {
    return '$server1 is no matrix server, use $server2 instead?';
  }

  @override
  String get shareInviteLink => 'Share invite link';

  @override
  String get scanQrCode => 'Scan QR code';

  @override
  String get none => 'Tewali';

  @override
  String get noPasswordRecoveryDescription => 'You have not added a way to recover your password yet.';

  @override
  String get noPermission => 'No permission';

  @override
  String get noRoomsFound => 'No rooms found…';

  @override
  String get notifications => 'Obubaka obulabula';

  @override
  String get notificationsEnabledForThisAccount => 'Obubaka obulabula buteekeddwako ku akawunti eno';

  @override
  String numUsersTyping(int count) {
    return '$count users are typing…';
  }

  @override
  String get obtainingLocation => 'Obtaining location…';

  @override
  String get offensive => 'Offensive';

  @override
  String get offline => 'Tewali ku mutimbagano';

  @override
  String get ok => 'Kale';

  @override
  String get online => 'Ku mutimbagano';

  @override
  String get onlineKeyBackupEnabled => 'Online Key Backup is enabled';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'Oops, something went wrong…';

  @override
  String get openAppToReadMessages => 'Bikkula app osome obubaka';

  @override
  String get openCamera => 'Bikkula kamera';

  @override
  String get openVideoCamera => 'Bikkula kamera ya video';

  @override
  String get oneClientLoggedOut => 'One of your clients has been logged out';

  @override
  String get addAccount => 'Add account';

  @override
  String get editBundlesForAccount => 'Edit bundles for this account';

  @override
  String get addToBundle => 'Add to bundle';

  @override
  String get removeFromBundle => 'Remove from this bundle';

  @override
  String get bundleName => 'Bundle name';

  @override
  String get enableMultiAccounts => '(BETA) Enable multi accounts on this device';

  @override
  String get openInMaps => 'Open in maps';

  @override
  String get link => 'Link';

  @override
  String get serverRequiresEmail => 'This server needs to validate your email address for registration.';

  @override
  String get or => 'Or';

  @override
  String get participant => 'Omwetabye';

  @override
  String get passphraseOrKey => 'Akasumuluzo oba ekisumuluzo eky\'okuddamu';

  @override
  String get password => 'Akasumuluzo';

  @override
  String get passwordForgotten => 'Werabidde akasumuluzo';

  @override
  String get passwordHasBeenChanged => 'Akasumuluzo kakyusiddwa';

  @override
  String get hideMemberChangesInPublicChats => 'Hide member changes in public chats';

  @override
  String get hideMemberChangesInPublicChatsBody => 'Do not show in the chat timeline if someone joins or leaves a public chat to improve readability.';

  @override
  String get overview => 'Overview';

  @override
  String get notifyMeFor => 'Notify me for';

  @override
  String get passwordRecoverySettings => 'Password recovery settings';

  @override
  String get passwordRecovery => 'Password recovery';

  @override
  String get people => 'Abantu';

  @override
  String get pickImage => 'Londa ekifaananyi';

  @override
  String get pin => 'Pina';

  @override
  String play(String fileName) {
    return 'Play $fileName';
  }

  @override
  String get pleaseChoose => 'Londa';

  @override
  String get pleaseChooseAPasscode => 'Londa akasumuluzo';

  @override
  String get pleaseClickOnLink => 'Nyiga ku link mu email olwo ogende mu maaso.';

  @override
  String get pleaseEnter4Digits => 'Yingiza enamba nnya oba leka nga tewali kuteekawo app lock.';

  @override
  String get pleaseEnterRecoveryKey => 'Yingiza ekisumuluzo eky\'okuddamu:';

  @override
  String get pleaseEnterYourPassword => 'Yingiza akasumuluzo ko';

  @override
  String get pleaseEnterYourPin => 'Yingiza PIN yo';

  @override
  String get pleaseEnterYourUsername => 'Yingiza erinnya lyo';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Goberera ebiragiro ku mukutu olwo nyiga weddako.';

  @override
  String get privacy => 'Ekyama';

  @override
  String get publicRooms => 'Ebisinge bya buli omu';

  @override
  String get pushRules => 'Push rules';

  @override
  String get reason => 'Ensonga';

  @override
  String get recording => 'Okutereka eddoboozi';

  @override
  String redactedBy(String username) {
    return 'Redacted by $username';
  }

  @override
  String get directChat => 'Direct chat';

  @override
  String redactedByBecause(String username, String reason) {
    return 'Redacted by $username because: \"$reason\"';
  }

  @override
  String redactedAnEvent(String username) {
    return '$username redacted an event';
  }

  @override
  String get redactMessage => 'Redact message';

  @override
  String get register => 'Weewandiise';

  @override
  String get reject => 'Gana';

  @override
  String rejectedTheInvitation(String username) {
    return '$username rejected the invitation';
  }

  @override
  String get rejoin => 'Rejoin';

  @override
  String get removeAllOtherDevices => 'Sangula ebikozesebwa ebirala byonna';

  @override
  String removedBy(String username) {
    return 'Removed by $username';
  }

  @override
  String get removeDevice => 'Sangula ekikozesebwa';

  @override
  String get unbanFromChat => 'Unban from chat';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => 'Ddamu';

  @override
  String get reportMessage => 'Lapoota obubaka';

  @override
  String get requestPermission => 'Saba olukusa';

  @override
  String get roomHasBeenUpgraded => 'Room has been upgraded';

  @override
  String get roomVersion => 'Room version';

  @override
  String get saveFile => 'Tereka fayiro';

  @override
  String get search => 'Noonya';

  @override
  String get security => 'Obukuumi';

  @override
  String get recoveryKey => 'Ekisumuluzo eky\'okuddamu';

  @override
  String get recoveryKeyLost => 'Ekisumuluzo eky\'okuddamu kibuze?';

  @override
  String seenByUser(String username) {
    return 'Seen by $username';
  }

  @override
  String get send => 'Tuma';

  @override
  String get sendAMessage => 'Tuma obubaka';

  @override
  String get sendAsText => 'Tuma nga text';

  @override
  String get sendAudio => 'Tuma eddoboozi';

  @override
  String get sendFile => 'Tuma fayiro';

  @override
  String get sendImage => 'Tuma ekifaananyi';

  @override
  String sendImages(int count) {
    return 'Send $count image';
  }

  @override
  String get sendMessages => 'Tuma obubaka';

  @override
  String get sendOriginal => 'Tuma nga bwe kiri';

  @override
  String get sendSticker => 'Tuma sticker';

  @override
  String get sendVideo => 'Tuma video';

  @override
  String sentAFile(String username) {
    return '📁 $username sent a file';
  }

  @override
  String sentAnAudio(String username) {
    return '🎤 $username sent an audio';
  }

  @override
  String sentAPicture(String username) {
    return '🖼️ $username sent a picture';
  }

  @override
  String sentASticker(String username) {
    return '😊 $username sent a sticker';
  }

  @override
  String sentAVideo(String username) {
    return '🎥 $username sent a video';
  }

  @override
  String sentCallInformations(String senderName) {
    return '$senderName sent call information';
  }

  @override
  String get separateChatTypes => 'Yawulamu Direct Chats ne Groups';

  @override
  String get setAsCanonicalAlias => 'Teekawo erinnya erikulu';

  @override
  String get setCustomEmotes => 'Teekawo emote zo';

  @override
  String get setChatDescription => 'Teekawo ennongosereza ya chat';

  @override
  String get setInvitationLink => 'Teekawo link y\'okuyita';

  @override
  String get setPermissionsLevel => 'Teekawo ddaala ly\'okukiriza';

  @override
  String get setStatus => 'Teekawo obudde';

  @override
  String get settings => 'Enteekateeka';

  @override
  String get share => 'Gabana';

  @override
  String sharedTheLocation(String username) {
    return '$username shared their location';
  }

  @override
  String get shareLocation => 'Gabana ekifo';

  @override
  String get showPassword => 'Laga akasumuluzo';

  @override
  String get presenceStyle => 'Presence:';

  @override
  String get presencesToggle => 'Show status messages from other users';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Leka';

  @override
  String get sourceCode => 'Kodi y\'omugatto';

  @override
  String get spaceIsPublic => 'Space is public';

  @override
  String get spaceName => 'Space name';

  @override
  String startedACall(String senderName) {
    return '$senderName started a call';
  }

  @override
  String get startFirstChat => 'Tandika chat yo esooka';

  @override
  String get status => 'Obudde';

  @override
  String get statusExampleMessage => 'Oli otya leero?';

  @override
  String get submit => 'Tuma';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String synchronizingPleaseWaitCounter(String percentage) {
    return ' Synchronizing… ($percentage%)';
  }

  @override
  String get systemTheme => 'Omusono gwa system';

  @override
  String get theyDontMatch => 'Tegyakwatagana';

  @override
  String get theyMatch => 'Gyakwatagana';

  @override
  String get title => 'Stawi';

  @override
  String get toggleFavorite => 'Kyusa ogende ku by\'okukwata';

  @override
  String get toggleMuted => 'Kyusa ssiliza';

  @override
  String get toggleUnread => 'Laga/Tekalaga nga tekisomeddwa';

  @override
  String get tooManyRequestsWarning => 'Obusaba bungi. Gezaako nate!';

  @override
  String get transferFromAnotherDevice => 'Ggya okuva ku kikozesebwa ekirala';

  @override
  String get tryToSendAgain => 'Gezaako okutuma nate';

  @override
  String get unavailable => 'Tekiri ku mutimbagano';

  @override
  String unbannedUser(String username, String targetName) {
    return '$username unbanned $targetName';
  }

  @override
  String get unblockDevice => 'Ggyawo okusiba ekikozesebwa';

  @override
  String get unknownDevice => 'Ekikozesebwa ekitamanyiddwa';

  @override
  String get unknownEncryptionAlgorithm => 'Enkizo etamanyiddwa';

  @override
  String unknownEvent(String type) {
    return 'Ekintu ekitamanyiddwa \'$type\'';
  }

  @override
  String get unmuteChat => 'Ggyawo ssiliza ku chat';

  @override
  String get unpin => 'Ggyawo pina';

  @override
  String unreadChats(int unreadCount) {
    String _temp0 = intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount unread chats',
      one: '1 unread chat',
    );
    return '$_temp0';
  }

  @override
  String userAndOthersAreTyping(String username, int count) {
    return '$username and $count others are typing…';
  }

  @override
  String userAndUserAreTyping(String username, String username2) {
    return '$username and $username2 are typing…';
  }

  @override
  String userIsTyping(String username) {
    return '$username is typing…';
  }

  @override
  String userLeftTheChat(String username) {
    return '🚪 $username left the chat';
  }

  @override
  String get username => 'Username';

  @override
  String userSentUnknownEvent(String username, String type) {
    return '$username sent a $type event';
  }

  @override
  String get unverified => 'Unverified';

  @override
  String get verified => 'Verified';

  @override
  String get verify => 'Verify';

  @override
  String get verifyStart => 'Start Verification';

  @override
  String get verifySuccess => 'You successfully verified!';

  @override
  String get verifyTitle => 'Verifying other account';

  @override
  String get videoCall => 'Video call';

  @override
  String get visibilityOfTheChatHistory => 'Visibility of the chat history';

  @override
  String get visibleForAllParticipants => 'Visible for all participants';

  @override
  String get visibleForEveryone => 'Visible for everyone';

  @override
  String get voiceMessage => 'Voice message';

  @override
  String get waitingPartnerAcceptRequest => 'Waiting for partner to accept the request…';

  @override
  String get waitingPartnerEmoji => 'Waiting for partner to accept the emoji…';

  @override
  String get waitingPartnerNumbers => 'Waiting for partner to accept the numbers…';

  @override
  String get wallpaper => 'Wallpaper:';

  @override
  String get warning => 'Warning!';

  @override
  String get weSentYouAnEmail => 'We sent you an email';

  @override
  String get whoCanPerformWhichAction => 'Who can perform which action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Who is allowed to join this group';

  @override
  String get whyDoYouWantToReportThis => 'Why do you want to report this?';

  @override
  String get wipeChatBackup => 'Wipe your chat backup to create a new recovery key?';

  @override
  String get withTheseAddressesRecoveryDescription => 'With these addresses you can recover your password.';

  @override
  String get writeAMessage => 'Write a message…';

  @override
  String get yes => 'Yee';

  @override
  String get you => 'Ggwe';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Tewakyali mu chat eno';

  @override
  String get youHaveBeenBannedFromThisChat => 'Ogobeddwa mu chat eno';

  @override
  String get yourPublicKey => 'Ekisumuluzo kyo ekya buli omu';

  @override
  String get messageInfo => 'Message info';

  @override
  String get time => 'Time';

  @override
  String get messageType => 'Message Type';

  @override
  String get sender => 'Sender';

  @override
  String get openGallery => 'Open gallery';

  @override
  String get removeFromSpace => 'Remove from space';

  @override
  String get addToSpaceDescription => 'Select a space to add this chat to it.';

  @override
  String get start => 'Tandika';

  @override
  String get pleaseEnterRecoveryKeyDescription => 'To unlock your old messages, please enter your recovery key that has been generated in a previous session. Your recovery key is NOT your password.';

  @override
  String get publish => 'Gaba';

  @override
  String videoWithSize(String size) {
    return 'Video ($size)';
  }

  @override
  String get openChat => 'Bikkula Chat';

  @override
  String get markAsRead => 'Laga nga kisomeddwa';

  @override
  String get reportUser => 'Lapoota omukozesa';

  @override
  String get dismiss => 'Ggyawo';

  @override
  String reactedWith(String sender, String reaction) {
    return '$sender reacted with $reaction';
  }

  @override
  String get pinMessage => 'Pina mu kisenge';

  @override
  String get confirmEventUnpin => 'Okakasa okuggyawo pina ku kikolwa kino?';

  @override
  String get emojis => 'Emojis';

  @override
  String get placeCall => 'Place call';

  @override
  String get voiceCall => 'Voice call';

  @override
  String get unsupportedAndroidVersion => 'Android version eno teriiko';

  @override
  String get unsupportedAndroidVersionLong => 'Kino kyetaaga Android version empya. Kebera updates oba Lineage OS support.';

  @override
  String get videoCallsBetaWarning => 'Okuyita kwa video kukyali mu beta. Kisobola obutakola bulungi ku nsi yonna.';

  @override
  String get experimentalVideoCalls => 'Okuyita kwa video okw\'okukozesebwa';

  @override
  String get emailOrUsername => 'Email oba erinnya';

  @override
  String get indexedDbErrorTitle => 'Private mode issues';

  @override
  String get indexedDbErrorLong => 'The message storage is unfortunately not enabled in private mode by default.\nPlease visit\n - about:config\n - set dom.indexedDB.privateBrowsing.enabled to true\nOtherwise, it is not possible to run Stawi.';

  @override
  String switchToAccount(String number) {
    return 'Switch to account $number';
  }

  @override
  String get nextAccount => 'Akawunti eddako';

  @override
  String get previousAccount => 'Akawunti eyise';

  @override
  String get addWidget => 'Gatta widget';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Ebbaluwa ya text';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Kya kko';

  @override
  String get widgetName => 'Erinnya';

  @override
  String get widgetUrlError => 'Eno si URL etuufu.';

  @override
  String get widgetNameError => 'Teekawo erinnya erirabika.';

  @override
  String get errorAddingWidget => 'Error adding the widget.';

  @override
  String get youRejectedTheInvitation => 'You rejected the invitation';

  @override
  String get youJoinedTheChat => 'You joined the chat';

  @override
  String get youAcceptedTheInvitation => '👍 You accepted the invitation';

  @override
  String youBannedUser(String user) {
    return 'You banned $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(String user) {
    return 'You have withdrawn the invitation for $user';
  }

  @override
  String youInvitedToBy(String alias) {
    return '📩 You have been invited via link to:\n$alias';
  }

  @override
  String youInvitedBy(String user) {
    return '📩 You have been invited by $user';
  }

  @override
  String invitedBy(String user) {
    return '📩 Invited by $user';
  }

  @override
  String youInvitedUser(String user) {
    return '📩 You invited $user';
  }

  @override
  String youKicked(String user) {
    return '👞 You kicked $user';
  }

  @override
  String youKickedAndBanned(String user) {
    return '🙅 You kicked and banned $user';
  }

  @override
  String youUnbannedUser(String user) {
    return 'You unbanned $user';
  }

  @override
  String hasKnocked(String user) {
    return '🚪 $user has knocked';
  }

  @override
  String get usersMustKnock => 'Users must knock';

  @override
  String get noOneCanJoin => 'No one can join';

  @override
  String userWouldLikeToChangeTheChat(String user) {
    return '$user would like to join the chat.';
  }

  @override
  String get noPublicLinkHasBeenCreatedYet => 'No public link has been created yet';

  @override
  String get knock => 'Knock';

  @override
  String get users => 'Users';

  @override
  String get unlockOldMessages => 'Unlock old messages';

  @override
  String get storeInSecureStorageDescription => 'Store the recovery key in the secure storage of this device.';

  @override
  String get saveKeyManuallyDescription => 'Save this key manually by triggering the system share dialog or clipboard.';

  @override
  String get storeInAndroidKeystore => 'Store in Android KeyStore';

  @override
  String get storeInAppleKeyChain => 'Store in Apple KeyChain';

  @override
  String get storeSecurlyOnThisDevice => 'Store securely on this device';

  @override
  String countFiles(int count) {
    return '$count files';
  }

  @override
  String get user => 'User';

  @override
  String get custom => 'Custom';

  @override
  String get foregroundServiceRunning => 'This notification appears when the foreground service is running.';

  @override
  String get screenSharingTitle => 'screen sharing';

  @override
  String get screenSharingDetail => 'You are sharing your screen in FuffyChat';

  @override
  String get callingPermissions => 'Calling permissions';

  @override
  String get callingAccount => 'Calling account';

  @override
  String get callingAccountDetails => 'Allows Stawi to use the native android dialer app.';

  @override
  String get appearOnTop => 'Appear on top';

  @override
  String get appearOnTopDetails => 'Allows the app to appear on top (not needed if you already have Stawi setup as a calling account)';

  @override
  String get otherCallingPermissions => 'Microphone, camera and other Stawi permissions';

  @override
  String get whyIsThisMessageEncrypted => 'Why is this message unreadable?';

  @override
  String get noKeyForThisMessage => 'This can happen if the message was sent before you have signed in to your account at this device.\n\nIt is also possible that the sender has blocked your device or something went wrong with the internet connection.\n\nAre you able to read the message on another session? Then you can transfer the message from it! Go to Settings > Devices and make sure that your devices have verified each other. When you open the room the next time and both sessions are in the foreground, the keys will be transmitted automatically.\n\nDo you not want to lose the keys when logging out or switching devices? Make sure that you have enabled the chat backup in the settings.';

  @override
  String get newGroup => 'New group';

  @override
  String get newSpace => 'New space';

  @override
  String get enterSpace => 'Enter space';

  @override
  String get enterRoom => 'Enter room';

  @override
  String get allSpaces => 'All spaces';

  @override
  String numChats(String number) {
    return '$number chats';
  }

  @override
  String get hideUnimportantStateEvents => 'Hide unimportant state events';

  @override
  String get hidePresences => 'Hide Status List?';

  @override
  String get doNotShowAgain => 'Do not show again';

  @override
  String wasDirectChatDisplayName(String oldDisplayName) {
    return 'Empty chat (was $oldDisplayName)';
  }

  @override
  String get newSpaceDescription => 'Spaces allows you to consolidate your chats and build private or public communities.';

  @override
  String get encryptThisChat => 'Encrypt this chat';

  @override
  String get disableEncryptionWarning => 'For security reasons you can not disable encryption in a chat, where it has been enabled before.';

  @override
  String get sorryThatsNotPossible => 'Sorry... that is not possible';

  @override
  String get deviceKeys => 'Device keys:';

  @override
  String get reopenChat => 'Reopen chat';

  @override
  String get noBackupWarning => 'Warning! Without enabling chat backup, you will lose access to your encrypted messages. It is highly recommended to enable the chat backup first before logging out.';

  @override
  String get noOtherDevicesFound => 'No other devices found';

  @override
  String fileIsTooBigForServer(String max) {
    return 'Unable to send! The server only supports attachments up to $max.';
  }

  @override
  String fileHasBeenSavedAt(String path) {
    return 'File has been saved at $path';
  }

  @override
  String get jumpToLastReadMessage => 'Jump to last read message';

  @override
  String get readUpToHere => 'Read up to here';

  @override
  String get jump => 'Jump';

  @override
  String get openLinkInBrowser => 'Open link in browser';

  @override
  String get reportErrorDescription => '😭 Oh no. Something went wrong. If you want, you can report this bug to the developers.';

  @override
  String get report => 'report';

  @override
  String get signInWithPassword => 'Sign in with password';

  @override
  String get pleaseTryAgainLaterOrChooseDifferentServer => 'Please try again later or choose a different server.';

  @override
  String signInWith(String provider) {
    return 'Sign in with $provider';
  }

  @override
  String get profileNotFound => 'The user could not be found on the server. Maybe there is a connection problem or the user doesn\'t exist.';

  @override
  String get setTheme => 'Set theme:';

  @override
  String get setColorTheme => 'Set color theme:';

  @override
  String get invite => 'Invite';

  @override
  String get inviteGroupChat => '📨 Invite group chat';

  @override
  String get invitePrivateChat => '📨 Invite private chat';

  @override
  String get invalidInput => 'Invalid input!';

  @override
  String wrongPinEntered(int seconds) {
    return 'Wrong pin entered! Try again in $seconds seconds...';
  }

  @override
  String get pleaseEnterANumber => 'Please enter a number greater than 0';

  @override
  String get archiveRoomDescription => 'The chat will be moved to the archive. Other users will be able to see that you have left the chat.';

  @override
  String get roomUpgradeDescription => 'The chat will then be recreated with the new room version. All participants will be notified that they need to switch to the new chat. You can find out more about room versions at https://spec.matrix.org/latest/rooms/';

  @override
  String get removeDevicesDescription => 'You will be logged out of this device and will no longer be able to receive messages.';

  @override
  String get banUserDescription => 'The user will be banned from the chat and will not be able to enter the chat again until they are unbanned.';

  @override
  String get unbanUserDescription => 'The user will be able to enter the chat again if they try.';

  @override
  String get kickUserDescription => 'The user is kicked out of the chat but not banned. In public chats, the user can rejoin at any time.';

  @override
  String get makeAdminDescription => 'Once you make this user admin, you may not be able to undo this as they will then have the same permissions as you.';

  @override
  String get pushNotificationsNotAvailable => 'Push notifications not available';

  @override
  String get learnMore => 'Learn more';

  @override
  String get yourGlobalUserIdIs => 'Your global user-ID is: ';

  @override
  String noUsersFoundWithQuery(String query) {
    return 'Unfortunately no user could be found with \"$query\". Please check whether you made a typo.';
  }

  @override
  String get knocking => 'Knocking';

  @override
  String chatCanBeDiscoveredViaSearchOnServer(String server) {
    return 'Chat can be discovered via the search on $server';
  }

  @override
  String get searchChatsRooms => 'Search for #chats, @users...';

  @override
  String get nothingFound => 'Nothing found...';

  @override
  String get groupName => 'Group name';

  @override
  String get groupDescription => 'Group description';

  @override
  String get groupConfiguration => 'Group Configuration';

  @override
  String get groupType => 'Group type';

  @override
  String get groupTypeProduct => 'Product Group';

  @override
  String get groupTypeGrameen => 'Default Group';

  @override
  String get groupTypeVoluntary => 'Voluntary Group';

  @override
  String get groupTypeFunding => 'Funding Group';

  @override
  String get groupTypeTemporary => 'Temporary Group';

  @override
  String get groupTypeMerryGoRound => 'Merry Go Round Group';

  @override
  String get groupTypeDescriptionDefault => 'Members are able to save and lend themselves within the group periodically under the grameen methodology. Loans are proportional to the amount of money they save based on allowed leverage settings.';

  @override
  String get groupTypeDescriptionFunding => 'Members of these groups start them for the purpose of lending to grameen groups and gaining some profit. There is no tenure as the members only set a duration in which they are willing to lock their funds for lending to groups. There is a chance of experiencing indefinate lock on some funds when groups are penalized for inactivity.';

  @override
  String get groupTypeDescriptionTemporary => 'These are groups setup with very specific purposes with a definite deadline, they can be for occasions such as funeral fund raisers, wedding and introduction meetings.';

  @override
  String get groupTypeDescriptionVoluntary => 'Organized groups that have a schedule of contribution from the members. Conditions occur in real life before the group does something for the user, example : 1. In church setup, believers may need to make contributions on a weekly basis towards sunday offerings. have a monthly 10% contribution or have a yearly contribution. 2. Teacher unions or groups members contribute a certain fees every so often towards a calamity befalling a member, They may have a conditions such that in case a member does not contribute then when they have issues they will not receive similar assistance.';

  @override
  String get groupTypeDescriptionMerryGoRound => 'Members contribute and have a schedule of a single individual receiving a portion of the periodic savings. This can be say 70% of the contributions with the rest of the contributions shared out equally at the end of the groups cycle.';

  @override
  String get groupTypeDescriptionProduct => 'Product groups are system groups that aid with the functionality of the whole system';

  @override
  String get groupSecret => 'Group secret';

  @override
  String get currency => 'Currency';

  @override
  String get currencySelectDescription => 'Represents the Currency that will be utilized for handling group funds';

  @override
  String get periodicSetup => 'Cycling parameters';

  @override
  String get periodType => 'Period type';

  @override
  String get periodicTypeDescription => 'Period type represents the duration between which members have an obligation towards their group';

  @override
  String get periodTypeWeekly => 'Weekly';

  @override
  String get periodTypeBiWeekly => 'BiWeekly';

  @override
  String get periodTypeMonthly => 'Monthly';

  @override
  String get periodicSavingAmount => 'Periodic Saving Amount';

  @override
  String get periodicSavingAmountDescription => 'Amount saved periodically by members of the group';

  @override
  String get finalizeGroupConfiguration => 'Finalize Group configuration';

  @override
  String finalizeGroupConfigurationDescription(String groupName) {
    return 'Your group $groupName will be configured shortly';
  }

  @override
  String get groupTerminationDate => 'Group termination date';

  @override
  String get groupTerminationDateDescription => 'Date after which the objective of the group would have been completed';

  @override
  String get groupCreationSuccessful => 'Successfully Queued Group Create Request';

  @override
  String groupCreationSuccessfulDescription(String groupName) {
    return 'Group with the name $groupName is being configured, this will take a moment. \n\n Add all the members to the group from your contacts';
  }

  @override
  String get createGroupAndInviteUsers => 'Create a group and invite users';

  @override
  String get groupCanBeFoundViaSearch => 'Group can be found via search';

  @override
  String get wrongRecoveryKey => 'Sorry... this does not seem to be the correct recovery key.';

  @override
  String get startConversation => 'Start conversation';

  @override
  String get commandHint_sendraw => 'Send raw json';

  @override
  String get databaseMigrationTitle => 'Database is optimized';

  @override
  String get databaseMigrationBody => 'Please wait. This may take a moment.';

  @override
  String get leaveEmptyToClearStatus => 'Leave empty to clear your status.';

  @override
  String get select => 'Select';

  @override
  String get searchForUsers => 'Search for @users...';

  @override
  String get pleaseEnterYourCurrentPassword => 'Please enter your current password';

  @override
  String get newPassword => 'New password';

  @override
  String get pleaseChooseAStrongPassword => 'Please choose a strong password';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get passwordIsWrong => 'Your entered password is wrong';

  @override
  String get publicLink => 'Public link';

  @override
  String get publicChatAddresses => 'Public chat addresses';

  @override
  String get createNewAddress => 'Create new address';

  @override
  String get joinSpace => 'Join space';

  @override
  String get publicSpaces => 'Public spaces';

  @override
  String get addChatOrSubSpace => 'Add chat or sub space';

  @override
  String get subspace => 'Subspace';

  @override
  String get decline => 'Decline';

  @override
  String get thisDevice => 'This device:';

  @override
  String get initAppError => 'An error occured while init the app';

  @override
  String get userRole => 'User role';

  @override
  String minimumPowerLevel(String level) {
    return '$level is the minimum power level.';
  }

  @override
  String searchIn(String chat) {
    return 'Search in chat \"$chat\"...';
  }

  @override
  String get searchMore => 'Search more...';

  @override
  String get gallery => 'Gallery';

  @override
  String get files => 'Files';

  @override
  String databaseBuildErrorBody(String url, String error) {
    return 'Unable to build the SQlite database. The app tries to use the legacy database for now. Please report this error to the developers at $url. The error message is: $error';
  }

  @override
  String sessionLostBody(String url, String error) {
    return 'Your session is lost. Please report this error to the developers at $url. The error message is: $error';
  }

  @override
  String restoreSessionBody(String url, String error) {
    return 'The app now tries to restore your session from the backup. Please report this error to the developers at $url. The error message is: $error';
  }

  @override
  String forwardMessageTo(String roomName) {
    return 'Forward message to $roomName?';
  }

  @override
  String get sendReadReceipts => 'Send read receipts';

  @override
  String get sendTypingNotificationsDescription => 'Other participants in a chat can see when you are typing a new message.';

  @override
  String get sendReadReceiptsDescription => 'Other participants in a chat can see when you have read a message.';

  @override
  String get formattedMessages => 'Formatted messages';

  @override
  String get formattedMessagesDescription => 'Display rich message content like bold text using markdown.';

  @override
  String get verifyOtherUser => '🔐 Verify other user';

  @override
  String get verifyOtherUserDescription => 'If you verify another user, you can be sure that you know who you are really writing to. 💪\n\nWhen you start a verification, you and the other user will see a popup in the app. There you will then see a series of emojis or numbers that you have to compare with each other.\n\nThe best way to do this is to meet up or start a video call. 👭';

  @override
  String get verifyOtherDevice => '🔐 Verify other device';

  @override
  String get verifyOtherDeviceDescription => 'When you verify another device, those devices can exchange keys, increasing your overall security. 💪 When you start a verification, a popup will appear in the app on both devices. There you will then see a series of emojis or numbers that you have to compare with each other. It\'s best to have both devices handy before you start the verification. 🤳';

  @override
  String acceptedKeyVerification(String sender) {
    return '$sender accepted key verification';
  }

  @override
  String canceledKeyVerification(String sender) {
    return '$sender canceled key verification';
  }

  @override
  String completedKeyVerification(String sender) {
    return '$sender completed key verification';
  }

  @override
  String isReadyForKeyVerification(String sender) {
    return '$sender is ready for key verification';
  }

  @override
  String requestedKeyVerification(String sender) {
    return '$sender requested key verification';
  }

  @override
  String startedKeyVerification(String sender) {
    return '$sender started key verification';
  }

  @override
  String get transparent => 'Transparent';

  @override
  String get incomingMessages => 'Incoming messages';

  @override
  String get stickers => 'Stickers';

  @override
  String get discover => 'Discover';

  @override
  String get commandHint_ignore => 'Ignore the given matrix ID';

  @override
  String get commandHint_unignore => 'Unignore the given matrix ID';

  @override
  String unreadChatsInApp(String appname, String unread) {
    return '$appname: $unread unread chats';
  }

  @override
  String get noDatabaseEncryption => 'Database encryption is not supported on this platform';

  @override
  String thereAreCountUsersBlocked(Object count) {
    return 'Right now there are $count users blocked.';
  }

  @override
  String get restricted => 'Restricted';

  @override
  String get knockRestricted => 'Knock restricted';

  @override
  String goToSpace(Object space) {
    return 'Go to space: $space';
  }

  @override
  String get markAsUnread => 'Mark as unread';

  @override
  String userLevel(int level) {
    return '$level - User';
  }

  @override
  String moderatorLevel(int level) {
    return '$level - Moderator';
  }

  @override
  String adminLevel(int level) {
    return '$level - Admin';
  }

  @override
  String get changeGeneralChatSettings => 'Change general chat settings';

  @override
  String get inviteOtherUsers => 'Invite other users to this chat';

  @override
  String get changeTheChatPermissions => 'Change the chat permissions';

  @override
  String get changeTheVisibilityOfChatHistory => 'Change the visibility of the chat history';

  @override
  String get changeTheCanonicalRoomAlias => 'Change the main public chat address';

  @override
  String get sendRoomNotifications => 'Send a @room notifications';

  @override
  String get changeTheDescriptionOfTheGroup => 'Change the description of the chat';

  @override
  String get chatPermissionsDescription => 'Define which power level is necessary for certain actions in this chat. The power levels 0, 50 and 100 are usually representing users, moderators and admins, but any gradation is possible.';

  @override
  String updateInstalled(String version) {
    return '🎉 Update $version installed!';
  }

  @override
  String get changelog => 'Changelog';

  @override
  String get sendCanceled => 'Sending canceled';

  @override
  String get loginWithMatrixId => 'Login with Matrix-ID';

  @override
  String get discoverHomeservers => 'Discover homeservers';

  @override
  String get whatIsAHomeserver => 'What is a homeserver?';

  @override
  String get homeserverDescription => 'All your data is stored on the homeserver, just like an email provider. You can choose which homeserver you want to use, while you can still communicate with everyone. Learn more at at https://matrix.org.';

  @override
  String get doesNotSeemToBeAValidHomeserver => 'Doesn\'t seem to be a compatible homeserver. Wrong URL?';

  @override
  String get calculatingFileSize => 'Calculating file size...';

  @override
  String get prepareSendingAttachment => 'Prepare sending attachment...';

  @override
  String get sendingAttachment => 'Sending attachment...';

  @override
  String get generatingVideoThumbnail => 'Generating video thumbnail...';

  @override
  String get compressVideo => 'Compressing video...';

  @override
  String sendingAttachmentCountOfCount(int index, int length) {
    return 'Sending attachment $index of $length...';
  }

  @override
  String serverLimitReached(int seconds) {
    return 'Server limit reached! Waiting $seconds seconds...';
  }

  @override
  String get oneOfYourDevicesIsNotVerified => 'One of your devices is not verified';

  @override
  String get noticeChatBackupDeviceVerification => 'Note: When you connect all your devices to the chat backup, they are automatically verified.';

  @override
  String get continueText => 'Continue';

  @override
  String get welcomeText => 'Create or join groups with the aim of saving, getting credit or offering loans to other members';

  @override
  String get blur => 'Blur:';

  @override
  String get opacity => 'Opacity:';

  @override
  String get setWallpaper => 'Set wallpaper';

  @override
  String get manageAccount => 'Manage account';

  @override
  String get noContactInformationProvided => 'Server does not provide any valid contact information';

  @override
  String get contactServerAdmin => 'Contact server admin';

  @override
  String get contactServerSecurity => 'Contact server security';

  @override
  String get supportPage => 'Support page';

  @override
  String get serverInformation => 'Server information:';

  @override
  String get name => 'Name';

  @override
  String get version => 'Version';

  @override
  String get website => 'Website';

  @override
  String get compress => 'Compress';

  @override
  String get boldText => 'Bold text';

  @override
  String get italicText => 'Italic text';

  @override
  String get strikeThrough => 'Strikethrough';

  @override
  String get pleaseFillOut => 'Please fill out';

  @override
  String get invalidUrl => 'Invalid url';

  @override
  String get addLink => 'Add link';

  @override
  String get unableToJoinChat => 'Unable to join chat. Maybe the other party has already closed the conversation.';

  @override
  String get previous => 'Previous';

  @override
  String get otherPartyNotLoggedIn => 'The other party is currently not logged in and therefore cannot receive messages!';

  @override
  String appWantsToUseForLogin(String server) {
    return 'Use \'$server\' to log in';
  }

  @override
  String get appWantsToUseForLoginDescription => 'You hereby allow the app and website to share information about you.';

  @override
  String get open => 'Open';

  @override
  String get waitingForServer => 'Waiting for server...';

  @override
  String get appIntroduction => 'Join or create friendly chat groups with the aim of growing financially. Learn more at https://stawi.im or just tap *Continue*.';

  @override
  String get newChatRequest => '📩 New chat request';

  @override
  String get contentNotificationSettings => 'Content notification settings';

  @override
  String get generalNotificationSettings => 'General notification settings';

  @override
  String get roomNotificationSettings => 'Room notification settings';

  @override
  String get userSpecificNotificationSettings => 'User specific notification settings';

  @override
  String get otherNotificationSettings => 'Other notification settings';

  @override
  String get notificationRuleContainsUserName => 'Contains User Name';

  @override
  String get notificationRuleContainsUserNameDescription => 'Notifies the user when a message contains their username.';

  @override
  String get notificationRuleMaster => 'Mute all notifications';

  @override
  String get notificationRuleMasterDescription => 'Overrides all other rules and disables all notifications.';

  @override
  String get notificationRuleSuppressNotices => 'Suppress Automated Messages';

  @override
  String get notificationRuleSuppressNoticesDescription => 'Suppresses notifications from automated clients like bots.';

  @override
  String get notificationRuleInviteForMe => 'Invite for Me';

  @override
  String get notificationRuleInviteForMeDescription => 'Notifies the user when they are invited to a room.';

  @override
  String get notificationRuleMemberEvent => 'Member Event';

  @override
  String get notificationRuleMemberEventDescription => 'Suppresses notifications for membership events.';

  @override
  String get notificationRuleIsUserMention => 'User Mention';

  @override
  String get notificationRuleIsUserMentionDescription => 'Notifies the user when they are directly mentioned in a message.';

  @override
  String get notificationRuleContainsDisplayName => 'Contains Display Name';

  @override
  String get notificationRuleContainsDisplayNameDescription => 'Notifies the user when a message contains their display name.';

  @override
  String get notificationRuleIsRoomMention => 'Room Mention';

  @override
  String get notificationRuleIsRoomMentionDescription => 'Notifies the user about room mentions.';

  @override
  String get notificationRuleRoomnotif => 'Room Notification';

  @override
  String get notificationRuleRoomnotifDescription => 'Notifies the user about room deactivation messages.';

  @override
  String get notificationRuleTombstone => 'Tombstone';

  @override
  String get notificationRuleTombstoneDescription => 'Notifies the user about room deactivation messages.';

  @override
  String get notificationRuleReaction => 'Reaction';

  @override
  String get notificationRuleReactionDescription => 'Suppresses notifications for reactions.';

  @override
  String get notificationRuleRoomServerAcl => 'Room Server ACL';

  @override
  String get notificationRuleRoomServerAclDescription => 'Suppresses notifications for room server access control lists (ACL).';

  @override
  String get notificationRuleSuppressEdits => 'Suppress Edits';

  @override
  String get notificationRuleSuppressEditsDescription => 'Suppresses notifications for edited messages.';

  @override
  String get notificationRuleCall => 'Call';

  @override
  String get notificationRuleCallDescription => 'Notifies the user about calls.';

  @override
  String get notificationRuleEncryptedRoomOneToOne => 'Encrypted Room One-to-One';

  @override
  String get notificationRuleEncryptedRoomOneToOneDescription => 'Notifies the user about messages in encrypted one-to-one rooms.';

  @override
  String get notificationRuleRoomOneToOne => 'Room One-to-One';

  @override
  String get notificationRuleRoomOneToOneDescription => 'Notifies the user about messages in one-to-one rooms.';

  @override
  String get notificationRuleMessage => 'Message';

  @override
  String get notificationRuleMessageDescription => 'Notifies the user about general messages.';

  @override
  String get notificationRuleEncrypted => 'Encrypted';

  @override
  String get notificationRuleEncryptedDescription => 'Notifies the user about messages in encrypted rooms.';

  @override
  String get notificationRuleJitsi => 'Jitsi';

  @override
  String get notificationRuleJitsiDescription => 'Notifies the user about Jitsi widget events.';

  @override
  String get notificationRuleServerAcl => 'Suppress Server ACL Events';

  @override
  String get notificationRuleServerAclDescription => 'Suppresses notifications for Server ACL events.';

  @override
  String unknownPushRule(String rule) {
    return 'Unknown push rule \'$rule\'';
  }

  @override
  String get deletePushRuleCanNotBeUndone => 'If you delete this notification setting, this can not be undone.';

  @override
  String get more => 'More';

  @override
  String get shareKeysWith => 'Share keys with...';

  @override
  String get shareKeysWithDescription => 'Which devices should be trusted so that they can read along your messages in encrypted chats?';

  @override
  String get allDevices => 'All devices';

  @override
  String get crossVerifiedDevicesIfEnabled => 'Cross verified devices if enabled';

  @override
  String get crossVerifiedDevices => 'Cross verified devices';

  @override
  String get verifiedDevicesOnly => 'Verified devices only';

  @override
  String get poll => 'Poll';

  @override
  String get question => 'Question';

  @override
  String get answer => 'Answer';

  @override
  String get resultsDisclosed => 'Results disclosed';

  @override
  String get resultsUndisclosed => 'Results undisclosed';

  @override
  String get addAnswer => 'Add answer';

  @override
  String get deleteAnswer => 'Delete answer';

  @override
  String startedAPoll(String sender) {
    return '$sender started a poll';
  }

  @override
  String countVotes(int votes, num percentage) {
    String _temp0 = intl.Intl.pluralLogic(
      votes,
      locale: localeName,
      other: '$votes votes',
      one: '1 vote',
    );
    return '$_temp0 - $percentage%';
  }

  @override
  String get chatSettings => 'Chat Settings';

  @override
  String get finance => 'Finance';

  @override
  String get savingsOptions => 'Savings Options';

  @override
  String get votingMode => 'Voting Mode';

  @override
  String get normalVoting => 'Normal Voting';

  @override
  String get delegatedVoting => 'Delegated Voting';

  @override
  String get normalVotingDescription => 'All members vote directly on proposals. Each member has one vote and decisions are made by majority.';

  @override
  String get delegatedVotingDescription => 'Members can delegate their voting power to trusted representatives who vote on their behalf, allowing for expertise-based decision making.';

  @override
  String get votingThreshold => 'Voting Threshold';

  @override
  String get votingThresholdDescription => 'Percentage of members required to vote on a motion before action is taken or canceled.';

  @override
  String get save => 'Save';

  @override
  String get enterContactName => 'Enter contact name';

  @override
  String errorFieldRequired(String fieldName) {
    return 'field is empty, please fill it out';
  }

  @override
  String errorFieldShouldBeNumeric(String fieldName) {
    return 'field is not a valid number';
  }

  @override
  String errorFieldShouldBeInTheFuture(String fieldName) {
    return 'field is should be in the future';
  }

  @override
  String get fixErrorsInStep => 'Please fix the errors in this step before proceeding';

  @override
  String get calendarSelection => 'Savings Date';

  @override
  String get selectStartDate => 'Select Start Date';

  @override
  String get startDateDescription => 'Choose a starting date for your group savings. Future saving dates will be highlighted based on your period type.';

  @override
  String get groupSchedule => 'Group Schedule';

  @override
  String get futureSavingDates => 'Based on your selection, these are your next schedule dates:';

  @override
  String get totalBalance => 'Total Balance';

  @override
  String get groupSettings => 'Group Settings';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get back => 'Back';

  @override
  String get general => 'General';

  @override
  String get loans => 'Loans';

  @override
  String get contributions => 'Contributions';

  @override
  String settingsCount(int n) {
    return '$n settings';
  }

  @override
  String get loanTenure => 'Loan Tenure';

  @override
  String get loanTenureDescription => 'The maximum number of weeks members can borrow for';

  @override
  String get groupTenure => 'Group Tenure';

  @override
  String get groupTenureDescription => 'The total duration of the group before shares are distributed';

  @override
  String get interestRate => 'Interest Rate';

  @override
  String get interestRateDescription => 'The percentage charged on loans';

  @override
  String get socialFundContribution => 'Social Fund Contribution';

  @override
  String get socialFundContributionDescription => 'The amount each member contributes to the social fund';

  @override
  String get allowEarlyWithdrawal => 'Allow Early Withdrawal';

  @override
  String get allowEarlyWithdrawalDescription => 'Whether members can withdraw funds before the end of the group tenure';

  @override
  String get requireSavingsBeforeLoan => 'Require Savings Before Loan';

  @override
  String get requireSavingsBeforeLoanDescription => 'Whether members must have savings before they can take a loan';

  @override
  String get weeks => 'weeks';

  @override
  String get months => 'months';

  @override
  String get year => 'year';
}
