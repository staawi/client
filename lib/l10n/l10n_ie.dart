// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Interlingue Occidental (`ie`).
class L10nIe extends L10n {
  L10nIe([String locale = 'ie']) : super(locale);

  @override
  String get alwaysUse24HourFormat => 'false';

  @override
  String get repeatPassword => 'Repetir li contrasigne';

  @override
  String get notAnImage => 'Ne es un file de image.';

  @override
  String get remove => 'Remover';

  @override
  String get importNow => 'Importar nu';

  @override
  String get importEmojis => 'Importar Emojis';

  @override
  String get importFromZipFile => 'Importar ex file .zip';

  @override
  String get exportEmotePack => 'Exportar Emote-pack quam .zip';

  @override
  String get replace => 'Replacer';

  @override
  String get about => 'Pri';

  @override
  String aboutHomeserver(String homeserver) {
    return 'Pri $homeserver';
  }

  @override
  String get accept => 'Acceptar';

  @override
  String acceptedTheInvitation(String username) {
    return '$username ha acceptat li invitation';
  }

  @override
  String get account => 'Conto';

  @override
  String activatedEndToEndEncryption(String username) {
    return '🔐 $username ha activat ciffration de extrem a extrem';
  }

  @override
  String get addEmail => 'Adjunter e-post';

  @override
  String get confirmMatrixId => 'Ples confirmar vor Matrix ID por destructer vor conto.';

  @override
  String supposedMxid(String mxid) {
    return 'To deve esser $mxid';
  }

  @override
  String get addChatDescription => 'Adjunter un description de conversation...';

  @override
  String get addToSpace => 'Adjunter al spacie';

  @override
  String get admin => 'Administrator';

  @override
  String get alias => 'pseudonim';

  @override
  String get all => 'Omni';

  @override
  String get allChats => 'Omni conversationes';

  @override
  String get commandHint_googly => 'Inviar ocules googly';

  @override
  String get commandHint_cuddle => 'Inviar un cuddle';

  @override
  String get commandHint_hug => 'Inviar un hug';

  @override
  String googlyEyesContent(String senderName) {
    return '$senderName invia a vu ocules googly';
  }

  @override
  String cuddleContent(String senderName) {
    return '$senderName fa un cuddle a vu';
  }

  @override
  String hugContent(String senderName) {
    return '$senderName fa un hug a vu';
  }

  @override
  String answeredTheCall(String senderName) {
    return '$senderName ha respondet al appel';
  }

  @override
  String get anyoneCanJoin => 'Alquí posse adherer se';

  @override
  String get appLock => 'Blocada de application';

  @override
  String get appLockDescription => 'Blocar li application quande ne usat per un cod de pin';

  @override
  String get archive => 'Archive';

  @override
  String get areGuestsAllowedToJoin => 'Es permisset que guest-usatores adere';

  @override
  String get areYouSure => 'Esque vu es cert?';

  @override
  String get areYouSureYouWantToLogout => 'Esque vu vole cluder li session?';

  @override
  String get askSSSSSign => 'Por posser signar li altri person, ples intrar vor pass-phrase o clave de regania.';

  @override
  String askVerificationRequest(String username) {
    return 'Esque acceptar ti demanda de verification de $username?';
  }

  @override
  String get autoplayImages => 'Automaticmen reproducter animat images';

  @override
  String badServerLoginTypesException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Li hem-servitor supporta ti tipes de autentication:\n$serverVersions\nMa ti-ci application supporta solmen:\n$supportedVersions';
  }

  @override
  String get sendTypingNotifications => 'Inviar notificationes de tippation';

  @override
  String get swipeRightToLeftToReply => 'Glissar dextri a levul por responder';

  @override
  String get sendOnEnter => 'Inviar per Enter';

  @override
  String badServerVersionsException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Li hem-servitor supporta ti versiones de specification:\n$serverVersions\nMa ti-ci application supporta solmen $supportedVersions';
  }

  @override
  String countChatsAndCountParticipants(int chats, int participants) {
    return '$chats conversationes e $participants participantes';
  }

  @override
  String get noMoreChatsFound => 'Null plu conversationes trovat...';

  @override
  String get noChatsFoundHere => 'Null conversationes trovat ci ancor. Iniciar un nov conversation con alcun per usar li button infra. ⤵️';

  @override
  String get joinedChats => 'Conversationes aderit';

  @override
  String get unread => 'Ínlectet';

  @override
  String get space => 'Spacie';

  @override
  String get spaces => 'Spicies';

  @override
  String get banFromChat => 'Bannir del conversation';

  @override
  String get banned => 'Bannit';

  @override
  String bannedUser(String username, String targetName) {
    return '$username ha bannit $targetName';
  }

  @override
  String get blockDevice => 'Blocar li aparate';

  @override
  String get blocked => 'Blocat';

  @override
  String get botMessages => 'Missages de robots';

  @override
  String get cancel => 'Anullar';

  @override
  String cantOpenUri(String uri) {
    return 'Ne successat aperter li adresse $uri';
  }

  @override
  String get changeDeviceName => 'Cambiar li nómine de aparate';

  @override
  String changedTheChatAvatar(String username) {
    return '$username ha changet li avatar del conversation';
  }

  @override
  String changedTheChatDescriptionTo(String username, String description) {
    return '$username ha changet li description del conversation a: \'$description\'';
  }

  @override
  String changedTheChatNameTo(String username, String chatname) {
    return '$username ha changet li nómine del conversation a: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(String username) {
    return '$username ha changet li permissiones del conversation';
  }

  @override
  String changedTheDisplaynameTo(String username, String displayname) {
    return '$username ha changet su nómine visibil a: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(String username) {
    return '$username ha changet li regules de access por hospites';
  }

  @override
  String changedTheGuestAccessRulesTo(String username, String rules) {
    return '$username ha changet li regules de access por hospites a: $rules';
  }

  @override
  String changedTheHistoryVisibility(String username) {
    return '$username ha changet li visibilitá del historie';
  }

  @override
  String changedTheHistoryVisibilityTo(String username, String rules) {
    return '$username ha changet li visibilitá del historie a: $rules';
  }

  @override
  String changedTheJoinRules(String username) {
    return '$username ha changet li regules de adhesion';
  }

  @override
  String changedTheJoinRulesTo(String username, String joinRules) {
    return '$username ha changet li regules de adhesion a: $joinRules';
  }

  @override
  String changedTheProfileAvatar(String username) {
    return '$username ha changet su avatar';
  }

  @override
  String changedTheRoomAliases(String username) {
    return '$username ha changet li pseudonimos del chambre';
  }

  @override
  String changedTheRoomInvitationLink(String username) {
    return '$username ha changet li ligament de invitation';
  }

  @override
  String get changePassword => 'Cambiar li contrasigne';

  @override
  String get changeTheHomeserver => 'Cambiar li hem-servitor';

  @override
  String get changeTheme => 'Cambiar li stil';

  @override
  String get changeTheNameOfTheGroup => 'Cambiar li nómine del gruppe';

  @override
  String get changeYourAvatar => 'Cambiar vor avatar';

  @override
  String get channelCorruptedDecryptError => 'Li ciffration es corruptet';

  @override
  String get chat => 'Conversation';

  @override
  String get yourChatBackupHasBeenSetUp => 'Vor archive de conversation es configurat.';

  @override
  String get chatBackup => 'Archive de conversation';

  @override
  String get chatBackupDescription => 'Vostri old missages es securisat per un clave de regania. Ples ne perde it.';

  @override
  String get chatDetails => 'Detallies del conversation';

  @override
  String get chatHasBeenAddedToThisSpace => 'Conversation ha esset adjuntet a ti spacie';

  @override
  String get chats => 'Conversationes';

  @override
  String get chooseAStrongPassword => 'Ples selecter un fort contrasigne';

  @override
  String get clearArchive => 'Vacuar li archive';

  @override
  String get close => 'Cluder';

  @override
  String get commandHint_markasdm => 'Marcar quam conversation direct por li Matrix ID dat';

  @override
  String get commandHint_markasgroup => 'Marcar quam gruppe';

  @override
  String get commandHint_ban => 'Bannar li usator dat ex ti chambre';

  @override
  String get commandHint_clearcache => 'Vacuar li cache';

  @override
  String get commandHint_create => 'Crear un gruppe de conversation vacui\nUsar --no-encryption por desactivar ciffration';

  @override
  String get commandHint_discardsession => 'Abandonar session';

  @override
  String get commandHint_dm => 'Iniciar un conversation direct\nUsar --no-encryption por desactivar ciffration';

  @override
  String get commandHint_html => 'Inviar contenete HTML';

  @override
  String get commandHint_invite => 'Invitar li usator dat a ti chambre';

  @override
  String get commandHint_join => 'Adherer al chambre dat';

  @override
  String get commandHint_kick => 'Remover li usator dat ex ti chambre';

  @override
  String get commandHint_leave => 'Forlassar ti chambre';

  @override
  String get commandHint_me => 'Ples descrir vos';

  @override
  String get commandHint_myroomavatar => 'Posir vor image por ti chambre (per mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Posir vor nómine visibil por ti chambre';

  @override
  String get commandHint_op => 'Posir li nivelle de potentie del usator dat (defaulte: 50)';

  @override
  String get commandHint_plain => 'Inviar textu sin formate';

  @override
  String get commandHint_react => 'Inviar response quam reaction';

  @override
  String get commandHint_send => 'Inviar li textu';

  @override
  String get commandHint_unban => 'Debannar li usator dat ex ti chambre';

  @override
  String get commandInvalid => 'Comande es ínvalid';

  @override
  String commandMissing(String command) {
    return '$command ne es un comande.';
  }

  @override
  String get compareEmojiMatch => 'Ples comparar li emojis';

  @override
  String get compareNumbersMatch => 'Ples comparar li númeres';

  @override
  String get configureChat => 'Configurar li conversation';

  @override
  String get confirm => 'Confirmar';

  @override
  String get connect => 'Conexer';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Contacte ha esset invitat al gruppe';

  @override
  String get containsDisplayName => 'Contene li visibil nómine';

  @override
  String get containsUserName => 'Contene li nómine';

  @override
  String get contentHasBeenReported => 'Li contenete ha esset raportat al administratores del servitor';

  @override
  String get copiedToClipboard => 'Copiat al Paperiere';

  @override
  String get copy => 'Copiar';

  @override
  String get copyToClipboard => 'Copiar al Paperiere';

  @override
  String couldNotDecryptMessage(String error) {
    return 'Ne successat deciffrar li missage: $error';
  }

  @override
  String countParticipants(int count) {
    return '$count participantes';
  }

  @override
  String get create => 'Crear';

  @override
  String createdTheChat(String username) {
    return '💬 $username ha creat li conversation';
  }

  @override
  String get createGroup => 'Crear gruppe';

  @override
  String get createNewSpace => 'Crear un spacie';

  @override
  String get currentlyActive => 'Activ actualmen';

  @override
  String get darkTheme => 'Obscur';

  @override
  String dateAndTimeOfDay(String date, String timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(String month, String day) {
    return '$day.$month';
  }

  @override
  String dateWithYear(String year, String month, String day) {
    return '$day.$month.$year';
  }

  @override
  String get deactivateAccountWarning => 'To va desactivar vor conto de usator. To ne posse esser reversat! Esque vu es cert?';

  @override
  String get defaultPermissionLevel => 'Nivelle de permission predefinit por nov usatores';

  @override
  String get delete => 'Remover';

  @override
  String get deleteAccount => 'Destructer li conto';

  @override
  String get deleteMessage => 'Remover li missage';

  @override
  String get device => 'Aparate';

  @override
  String get deviceId => 'ID de aparate';

  @override
  String get devices => 'Aparates';

  @override
  String get directChats => 'Direct conversationes';

  @override
  String get allRooms => 'Omni gruppes de conversation';

  @override
  String get displaynameHasBeenChanged => 'Li nómine visibil ha esset changet';

  @override
  String get downloadFile => 'Descargar li file';

  @override
  String get edit => 'Redacter';

  @override
  String get editBlockedServers => 'Modificar blocat servitores';

  @override
  String get chatPermissions => 'Permissiones de conversation';

  @override
  String get editDisplayname => 'Redacter li visibil nómine';

  @override
  String get editRoomAliases => 'Modificar pseudonimos del chambre';

  @override
  String get editRoomAvatar => 'Modificar li avatar del chambre';

  @override
  String get emoteExists => 'Emotion ja existe!';

  @override
  String get emoteInvalid => 'Curt-code de emotion ínvalid!';

  @override
  String get emoteKeyboardNoRecents => 'Emotiones usat recentmen va aparir ci...';

  @override
  String get emotePacks => 'Paccs de emotiones por chambre';

  @override
  String get emoteSettings => 'Parametres de emotiones';

  @override
  String get globalChatId => 'ID global de conversation';

  @override
  String get accessAndVisibility => 'Access e visibilitá';

  @override
  String get accessAndVisibilityDescription => 'Qui posse adherer a ti conversation e qualmen li conversation es trovat.';

  @override
  String get calls => 'Appelles';

  @override
  String get customEmojisAndStickers => 'Emojis e stickers personalisat';

  @override
  String get customEmojisAndStickersBody => 'Adjunter o partir emojis o stickers personalisat por usar in omni conversation.';

  @override
  String get emoteShortcode => 'Curt-code de emotion';

  @override
  String get emoteWarnNeedToPick => 'Vu deve selecter un curt-code de emotion e un image!';

  @override
  String get emptyChat => 'Vacui conversation';

  @override
  String get enableEmotesGlobally => 'Activar pacc de emotiones globalmen';

  @override
  String get enableEncryption => 'Activar li ciffration';

  @override
  String get enableEncryptionWarning => 'Vu ne va posser desactivar li ciffration plu. Esque vu es cert?';

  @override
  String get encrypted => 'Ciffrat';

  @override
  String get encryption => 'Ciffration';

  @override
  String get encryptionNotEnabled => 'Ciffration ne es activat';

  @override
  String endedTheCall(String senderName) {
    return '$senderName ha finit li appel';
  }

  @override
  String get enterAnEmailAddress => 'Intrar un adresse e-post';

  @override
  String get homeserver => 'Hem-servitor';

  @override
  String get enterYourHomeserver => 'Provide vor hem-servitor';

  @override
  String errorObtainingLocation(String error) {
    return 'Errore obtenent localisation: $error';
  }

  @override
  String get everythingReady => 'Omni es pret!';

  @override
  String get extremeOffensive => 'Extremmen offensiv';

  @override
  String get fileName => 'Nómine de file';

  @override
  String get stawi => 'Stawi';

  @override
  String get fontSize => 'Dimension de fonde';

  @override
  String get forward => 'Avan';

  @override
  String get fromJoining => 'Pro adhesion';

  @override
  String get fromTheInvitation => 'Pro invitation';

  @override
  String get goToTheNewRoom => 'Ir al nov chambre';

  @override
  String get group => 'Gruppe';

  @override
  String get chatDescription => 'Description de conversation';

  @override
  String get chatDescriptionHasBeenChanged => 'Description de conversation changet';

  @override
  String get groupIsPublic => 'Gruppe es public';

  @override
  String get groups => 'Gruppes';

  @override
  String groupWith(String displayname) {
    return 'Gruppe con $displayname';
  }

  @override
  String get guestsAreForbidden => 'Hospites es prohibit';

  @override
  String get guestsCanJoin => 'Hospites posse aderer';

  @override
  String hasWithdrawnTheInvitationFor(String username, String targetName) {
    return '$username ha retirat li invitation por $targetName';
  }

  @override
  String get help => 'Auxilie';

  @override
  String get hideRedactedEvents => 'Hide redacted events';

  @override
  String get hideRedactedMessages => 'Hide redacted messages';

  @override
  String get hideRedactedMessagesBody => 'If someone redacts a message, this message won\'t be visible in the chat anymore.';

  @override
  String get hideInvalidOrUnknownMessageFormats => 'Hide invalid or unknown message formats';

  @override
  String get howOffensiveIsThisContent => 'How offensive is this content?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Identitá';

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
  String get incorrectPassphraseOrKey => 'Incorrect passphrase or recovery key';

  @override
  String get inoffensive => 'Ínoffensiv';

  @override
  String get inviteContact => 'Invitar un contacte';

  @override
  String inviteContactToGroupQuestion(String contact, String groupName) {
    return 'Do you want to invite $contact to the chat \"$groupName\"?';
  }

  @override
  String inviteContactToGroup(String groupName) {
    return 'Invite contact to $groupName';
  }

  @override
  String get noChatDescriptionYet => 'No chat description created yet.';

  @override
  String get tryAgain => 'Try again';

  @override
  String get invalidServerName => 'Invalid server name';

  @override
  String get invited => 'Invitat';

  @override
  String get redactMessageDescription => 'The message will be redacted for all participants in this conversation. This cannot be undone.';

  @override
  String get optionalRedactReason => '(Optional) Reason for redacting this message...';

  @override
  String invitedUser(String username, String targetName) {
    return '$username invitat $targetName';
  }

  @override
  String get invitedUsersOnly => 'Solmen invitat usatores';

  @override
  String get inviteForMe => 'Invitationes por me';

  @override
  String inviteText(String username, String link) {
    return '$username invited you to stawi. Visit invitation link $link to connect';
  }

  @override
  String get isTyping => 'tippa…';

  @override
  String joinedTheChat(String username) {
    return '👋 $username joined the chat';
  }

  @override
  String get joinRoom => 'Adherer al chambre';

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
    return 'Ultim activité: $localizedTimeShort';
  }

  @override
  String get leave => 'Forlassar';

  @override
  String get leftTheChat => 'Surtit ex li conversation';

  @override
  String get license => 'Licentie';

  @override
  String get lightTheme => 'Lucid';

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
  String get loadingPleaseWait => 'Cargante... ples atender.';

  @override
  String get loadMore => 'Cargar plu…';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get contactPermissionDeniedNotice => 'Contact permission denied. Please grant them to be able to connect with others.';

  @override
  String get login => 'Aperter li session';

  @override
  String logInTo(String homeserver) {
    return 'Log in to $homeserver';
  }

  @override
  String get logout => 'Cluder li session';

  @override
  String get memberChanges => 'Cambios inter membres';

  @override
  String get mention => 'Mentionar';

  @override
  String get messages => 'Missages';

  @override
  String get messagesStyle => 'Messages:';

  @override
  String get moderator => 'Moderator';

  @override
  String get muteChat => 'Assurdar li conversation';

  @override
  String get needPantalaimonWarning => 'Please be aware that you need Pantalaimon to use end-to-end encryption for now.';

  @override
  String get newChat => 'Crear un conversation';

  @override
  String get newMessageInStawi => '💬 New message in Stawi';

  @override
  String get newVerificationRequest => 'Nov demanda de verification!';

  @override
  String get next => 'Sequent';

  @override
  String get no => 'No';

  @override
  String get noConnectionToTheServer => 'No connection to the server';

  @override
  String get noEmotesFound => 'No emotes found. 😕';

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
  String get scanQrCode => 'Scannar un code QR';

  @override
  String get none => 'Null';

  @override
  String get noPasswordRecoveryDescription => 'You have not added a way to recover your password yet.';

  @override
  String get noPermission => 'Sin permission';

  @override
  String get noRoomsFound => 'Null chambres trovat…';

  @override
  String get notifications => 'Notificationes';

  @override
  String get notificationsEnabledForThisAccount => 'Notifications enabled for this account';

  @override
  String numUsersTyping(int count) {
    return '$count users are typing…';
  }

  @override
  String get obtainingLocation => 'Obtenente li localisation…';

  @override
  String get offensive => 'Offensiv';

  @override
  String get offline => 'For del rete';

  @override
  String get ok => 'OK';

  @override
  String get online => 'In li rete';

  @override
  String get onlineKeyBackupEnabled => 'Online Key Backup is enabled';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'Oops, something went wrong…';

  @override
  String get openAppToReadMessages => 'Open app to read messages';

  @override
  String get openCamera => 'Aperter li cámera';

  @override
  String get openVideoCamera => 'Open camera for a video';

  @override
  String get oneClientLoggedOut => 'One of your clients has been logged out';

  @override
  String get addAccount => 'Adjunter un conto';

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
  String get openInMaps => 'Aperter in mappas';

  @override
  String get link => 'Ligament';

  @override
  String get serverRequiresEmail => 'This server needs to validate your email address for registration.';

  @override
  String get or => 'O';

  @override
  String get participant => 'Participante';

  @override
  String get passphraseOrKey => 'passphrase or recovery key';

  @override
  String get password => 'Contrasigne';

  @override
  String get passwordForgotten => 'Li contrasigne esset obliviat';

  @override
  String get passwordHasBeenChanged => 'Password has been changed';

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
  String get passwordRecovery => 'Reganiar li contrasigne';

  @override
  String get people => 'Homes';

  @override
  String get pickImage => 'Pick an image';

  @override
  String get pin => 'Fixar';

  @override
  String play(String fileName) {
    return 'Reproducter $fileName';
  }

  @override
  String get pleaseChoose => 'Ples selecter';

  @override
  String get pleaseChooseAPasscode => 'Please choose a pass code';

  @override
  String get pleaseClickOnLink => 'Please click on the link in the email and then proceed.';

  @override
  String get pleaseEnter4Digits => 'Please enter 4 digits or leave empty to disable app lock.';

  @override
  String get pleaseEnterRecoveryKey => 'Please enter your recovery key:';

  @override
  String get pleaseEnterYourPassword => 'Please enter your password';

  @override
  String get pleaseEnterYourPin => 'Please enter your pin';

  @override
  String get pleaseEnterYourUsername => 'Please enter your username';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Please follow the instructions on the website and tap on next.';

  @override
  String get privacy => 'Privatie';

  @override
  String get publicRooms => 'Public chambres';

  @override
  String get pushRules => 'Regules de push-notificationes';

  @override
  String get reason => 'Cause';

  @override
  String get recording => 'Registrante';

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
  String get redactMessage => 'Redacter li missage';

  @override
  String get register => 'Inregistrar se';

  @override
  String get reject => 'Refuser';

  @override
  String rejectedTheInvitation(String username) {
    return '$username rejected the invitation';
  }

  @override
  String get rejoin => 'Re-adherer';

  @override
  String get removeAllOtherDevices => 'Remove all other devices';

  @override
  String removedBy(String username) {
    return 'Removed by $username';
  }

  @override
  String get removeDevice => 'Remover li aparate';

  @override
  String get unbanFromChat => 'Unban from chat';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => 'Responder';

  @override
  String get reportMessage => 'Raportar li missage';

  @override
  String get requestPermission => 'Demandar li permission';

  @override
  String get roomHasBeenUpgraded => 'Room has been upgraded';

  @override
  String get roomVersion => 'Version del chambre';

  @override
  String get saveFile => 'Gardar li file';

  @override
  String get search => 'Sercha';

  @override
  String get security => 'Securitá';

  @override
  String get recoveryKey => 'Clave de regania';

  @override
  String get recoveryKeyLost => 'Recovery key lost?';

  @override
  String seenByUser(String username) {
    return 'Seen by $username';
  }

  @override
  String get send => 'Inviar';

  @override
  String get sendAMessage => 'Send a message';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => 'Inviar audio';

  @override
  String get sendFile => 'Inviar un file';

  @override
  String get sendImage => 'Inviar un image';

  @override
  String sendImages(int count) {
    return 'Send $count image';
  }

  @override
  String get sendMessages => 'Inviar missages';

  @override
  String get sendOriginal => 'Inviar li originale';

  @override
  String get sendSticker => 'Inviar un nota adhesiv';

  @override
  String get sendVideo => 'Inviar video';

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
  String get separateChatTypes => 'Separate Direct Chats and Groups';

  @override
  String get setAsCanonicalAlias => 'Set as main alias';

  @override
  String get setCustomEmotes => 'Set custom emotes';

  @override
  String get setChatDescription => 'Set chat description';

  @override
  String get setInvitationLink => 'Set invitation link';

  @override
  String get setPermissionsLevel => 'Set permissions level';

  @override
  String get setStatus => 'Assignar li statu';

  @override
  String get settings => 'Parametres';

  @override
  String get share => 'Partir';

  @override
  String sharedTheLocation(String username) {
    return '$username shared their location';
  }

  @override
  String get shareLocation => 'Partir un localisation';

  @override
  String get showPassword => 'Monstrar li contrasigne';

  @override
  String get presenceStyle => 'Presence:';

  @override
  String get presencesToggle => 'Show status messages from other users';

  @override
  String get singlesignon => 'Single Sign on';

  @override
  String get skip => 'Omisser';

  @override
  String get sourceCode => 'Code de fonte';

  @override
  String get spaceIsPublic => 'Space is public';

  @override
  String get spaceName => 'Nómine de spacie';

  @override
  String startedACall(String senderName) {
    return '$senderName started a call';
  }

  @override
  String get startFirstChat => 'Start your first chat';

  @override
  String get status => 'Statu';

  @override
  String get statusExampleMessage => 'How are you today?';

  @override
  String get submit => 'Inviar';

  @override
  String get synchronizingPleaseWait => 'Synchronizing… Please wait.';

  @override
  String synchronizingPleaseWaitCounter(String percentage) {
    return ' Synchronizing… ($percentage%)';
  }

  @override
  String get systemTheme => 'Del sistema';

  @override
  String get theyDontMatch => 'Ili ne corresponde';

  @override
  String get theyMatch => 'Corresponde';

  @override
  String get title => 'Stawi';

  @override
  String get toggleFavorite => 'Alternar preferit';

  @override
  String get toggleMuted => 'Alternar assurdation';

  @override
  String get toggleUnread => 'Marcar quam (ín)leet';

  @override
  String get tooManyRequestsWarning => 'Tro mult demandes. Ples provar plu tard!';

  @override
  String get transferFromAnotherDevice => 'Transferer ex un altri aparate';

  @override
  String get tryToSendAgain => 'Provar inviar denov';

  @override
  String get unavailable => 'Índisponibil';

  @override
  String unbannedUser(String username, String targetName) {
    return '$username ha debannat $targetName';
  }

  @override
  String get unblockDevice => 'Deblocar li aparate';

  @override
  String get unknownDevice => 'Ínconosset aparate';

  @override
  String get unknownEncryptionAlgorithm => 'Algoritme de ciffration ínconosset';

  @override
  String unknownEvent(String type) {
    return 'Eveniment ínconosset \'$type\'';
  }

  @override
  String get unmuteChat => 'Desassurdar conversation';

  @override
  String get unpin => 'Defixar';

  @override
  String unreadChats(int unreadCount) {
    String _temp0 = intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount ínlectet conversationes',
      one: '1 ínlectet conversation',
    );
    return '$_temp0';
  }

  @override
  String userAndOthersAreTyping(String username, int count) {
    return '$username e $count altri tippa…';
  }

  @override
  String userAndUserAreTyping(String username, String username2) {
    return '$username e $username2 tippa…';
  }

  @override
  String userIsTyping(String username) {
    return '$username tippa…';
  }

  @override
  String userLeftTheChat(String username) {
    return '🚪 $username ha forlassat li conversation';
  }

  @override
  String get username => 'Nómine de usator';

  @override
  String userSentUnknownEvent(String username, String type) {
    return '$username ha inviat un eveniment de tip $type';
  }

  @override
  String get unverified => 'Ínverificat';

  @override
  String get verified => 'Verificat';

  @override
  String get verify => 'Verificar';

  @override
  String get verifyStart => 'Iniciar li verification';

  @override
  String get verifySuccess => 'Vu ha verificat successosimen!';

  @override
  String get verifyTitle => 'Verificant altri conto';

  @override
  String get videoCall => 'Videotelefonada';

  @override
  String get visibilityOfTheChatHistory => 'Visibilitá del historie de conversation';

  @override
  String get visibleForAllParticipants => 'Visibil por omni participantes';

  @override
  String get visibleForEveryone => 'Visibil por omni';

  @override
  String get voiceMessage => 'Voce-missage';

  @override
  String get waitingPartnerAcceptRequest => 'Atendente que li partner accepta li demanda…';

  @override
  String get waitingPartnerEmoji => 'Atendente que li partner accepta li emoji…';

  @override
  String get waitingPartnerNumbers => 'Atendente que li partner accepta li númeres…';

  @override
  String get wallpaper => 'Tapete';

  @override
  String get warning => 'Avise!';

  @override
  String get weSentYouAnEmail => 'Noi ha inviat vu un e-post';

  @override
  String get whoCanPerformWhichAction => 'Qui posse far quel action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Qui es permisset aderer a ti gruppe';

  @override
  String get whyDoYouWantToReportThis => 'Pro quo vu vole raportar to?';

  @override
  String get wipeChatBackup => 'Vacuar vor archive de conversation por crear un nov clave de regania?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Con ti adresses vu posse recuperar vor contrasigne.';

  @override
  String get writeAMessage => 'Scrir un missage…';

  @override
  String get yes => 'Yes';

  @override
  String get you => 'Vu';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Vu ne participa plu in ti conversation';

  @override
  String get youHaveBeenBannedFromThisChat => 'Vu ha esset bannit ex ti conversation';

  @override
  String get yourPublicKey => 'Vor clave public';

  @override
  String get messageInfo => 'Information pri li missage';

  @override
  String get time => 'Hora';

  @override
  String get messageType => 'Tip de missage';

  @override
  String get sender => 'Autor';

  @override
  String get openGallery => 'Aperter li galerie';

  @override
  String get removeFromSpace => 'Remover ex spacie';

  @override
  String get addToSpaceDescription => 'Selecter un spacie por adjunter ti conversation a it.';

  @override
  String get start => 'Iniciar';

  @override
  String get pleaseEnterRecoveryKeyDescription => 'Por desblocar vor old missages, ples intrar vor clave de regania generat in un session precedent. Vor clave de regania NE es vor contrasigne.';

  @override
  String get publish => 'Publicar';

  @override
  String videoWithSize(String size) {
    return 'Video ($size)';
  }

  @override
  String get openChat => 'Aperter li conversation';

  @override
  String get markAsRead => 'Marcar quam leet';

  @override
  String get reportUser => 'Raportar li usator';

  @override
  String get dismiss => 'Demisser';

  @override
  String reactedWith(String sender, String reaction) {
    return '$sender ha reactet con $reaction';
  }

  @override
  String get pinMessage => 'Fixar in chambre';

  @override
  String get confirmEventUnpin => 'Esque vu es cert de defixar permanentmen li eveniment?';

  @override
  String get emojis => 'Emoji';

  @override
  String get placeCall => 'Fazer appel';

  @override
  String get voiceCall => 'Telefonada';

  @override
  String get unsupportedAndroidVersion => 'Version de Android ínsupportat';

  @override
  String get unsupportedAndroidVersionLong => 'Ti function besona un version plu nov de Android. Ples controlar por actualisationes o supporte de Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'Ples notar que videotelefonadas es actualmen in beta. Ili posse ne functionar corectmen o del tot sur omni plataformas.';

  @override
  String get experimentalVideoCalls => 'Videotelefonadas experimental';

  @override
  String get emailOrUsername => 'E-post o nómine de usator';

  @override
  String get indexedDbErrorTitle => 'Problemas de mode privat';

  @override
  String get indexedDbErrorLong => 'Li storage de missages ne es activat in mode privat per defaulte.\nPles visitar\n - about:config\n - posir dom.indexedDB.privateBrowsing.enabled a true\nAltrimen, ne es possibil usar Stawi.';

  @override
  String switchToAccount(String number) {
    return 'Cambiar a conto $number';
  }

  @override
  String get nextAccount => 'Sequent conto';

  @override
  String get previousAccount => 'Precedent conto';

  @override
  String get addWidget => 'Adjunter un widget';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Textual nota';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Personalisat';

  @override
  String get widgetName => 'Nómine';

  @override
  String get widgetUrlError => 'To ne es un URL valid.';

  @override
  String get widgetNameError => 'Ples provider un nómine visibil.';

  @override
  String get errorAddingWidget => 'Errore adjuntent li widget.';

  @override
  String get youRejectedTheInvitation => 'Vu ha refusat li invitation';

  @override
  String get youJoinedTheChat => 'Vu ha aderit al conversation';

  @override
  String get youAcceptedTheInvitation => '👍 Vu ha acceptat li invitation';

  @override
  String youBannedUser(String user) {
    return 'Vu ha bannit $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(String user) {
    return 'Vu ha retirat li invitation por $user';
  }

  @override
  String youInvitedToBy(String alias) {
    return '📩 Vu ha esset invitat per ligament a:\n$alias';
  }

  @override
  String youInvitedBy(String user) {
    return '📩 Vu ha esset invitat per $user';
  }

  @override
  String invitedBy(String user) {
    return '📩 Invitat per $user';
  }

  @override
  String youInvitedUser(String user) {
    return '📩 Vu ha invitat $user';
  }

  @override
  String youKicked(String user) {
    return '👞 Vu ha expulsat $user';
  }

  @override
  String youKickedAndBanned(String user) {
    return '🙅 Vu ha expulsat e bannit $user';
  }

  @override
  String youUnbannedUser(String user) {
    return 'Vu ha debannat $user';
  }

  @override
  String hasKnocked(String user) {
    return '🚪 $user ha frappat';
  }

  @override
  String get usersMustKnock => 'Usatores deve frappar';

  @override
  String get noOneCanJoin => 'Null posse aderer';

  @override
  String userWouldLikeToChangeTheChat(String user) {
    return '$user vell vell aderer al conversation.';
  }

  @override
  String get noPublicLinkHasBeenCreatedYet => 'Ancora ne existe ligament public creat';

  @override
  String get knock => 'Frappar';

  @override
  String get users => 'Usatores';

  @override
  String get unlockOldMessages => 'Desblocar old missages';

  @override
  String get storeInSecureStorageDescription => 'Gardar li clave de regania in li storage secur de ti aparate.';

  @override
  String get saveKeyManuallyDescription => 'Gardar ti clave manualmen per dialog de partage del sistema o paperiere.';

  @override
  String get storeInAndroidKeystore => 'Gardar in Android KeyStore';

  @override
  String get storeInAppleKeyChain => 'Gardar in Apple KeyChain';

  @override
  String get storeSecurlyOnThisDevice => 'Gardar securmen sur ti aparate';

  @override
  String countFiles(int count) {
    return '$count files';
  }

  @override
  String get user => 'Usator';

  @override
  String get custom => 'Personalisat';

  @override
  String get foregroundServiceRunning => 'Ti notification apari quande li servicie de front es executent.';

  @override
  String get screenSharingTitle => 'partir li ecran';

  @override
  String get screenSharingDetail => 'Vu parta vor ecran in FuffyChat';

  @override
  String get callingPermissions => 'Permissiones de telefonada';

  @override
  String get callingAccount => 'Conto telefonante';

  @override
  String get callingAccountDetails => 'Permisse Stawi usar li app de telefonation nativ de Android.';

  @override
  String get appearOnTop => 'Aparir sur li supra';

  @override
  String get appearOnTopDetails => 'Permisse li app aparir sur li supra (ne besonat si vu ja ha configurat Stawi quam conto de telefonation)';

  @override
  String get otherCallingPermissions => 'Microfone, cámera e altri permissiones de Stawi';

  @override
  String get whyIsThisMessageEncrypted => 'Pro quo ti missage es ínlectibil?';

  @override
  String get noKeyForThisMessage => 'To posse evenir si li missage esset inviat ante que vu ha apertet session sur ti aparate.\n\nEs anc possibil que li inviant ha blocat vor aparate o que un problema de conexione evenit.\n\nPosse vu leer li missage sur un altri session? Tunc vu posse transferer li missage! Ir a Parametres > Aparates e assecurar que vor aparates es verificat inter se. Quande vu re-aperte li chambre e ambi sessiones es in front, li claves va esser transmess automaticmen.\n\nNe vole vu perder li claves quande cludente session o cambiant aparate? Assegura que vu ha activat li archive de conversation in li parametres.';

  @override
  String get newGroup => 'Crear un gruppe';

  @override
  String get newSpace => 'Crear un spacie';

  @override
  String get enterSpace => 'Intrar li spacie';

  @override
  String get enterRoom => 'Intrar li chambre';

  @override
  String get allSpaces => 'Omni spacies';

  @override
  String numChats(String number) {
    return '$number conversationes';
  }

  @override
  String get hideUnimportantStateEvents => 'Celar evenimentes de statu ínimportant';

  @override
  String get hidePresences => 'Celar liste de statu?';

  @override
  String get doNotShowAgain => 'Ne monstrar denov';

  @override
  String wasDirectChatDisplayName(String oldDisplayName) {
    return 'Conversation vacui (esset $oldDisplayName)';
  }

  @override
  String get newSpaceDescription => 'Spacies permisse consolidar vor conversationes e crear comunites privat o public.';

  @override
  String get encryptThisChat => 'Ciffrar ti conversation';

  @override
  String get disableEncryptionWarning => 'Por rasones de securitá vu ne posse desactivar ciffration in un conversation u it esset activat.';

  @override
  String get sorryThatsNotPossible => 'Pardona... to ne es possibil';

  @override
  String get deviceKeys => 'Claves de aparate:';

  @override
  String get reopenChat => 'Re-aperter conversation';

  @override
  String get noBackupWarning => 'Avise! Sin activar archive de conversation, vu va perder access a vor missages ciffrat. Es recommendat activar archive de conversation ante cluder session.';

  @override
  String get noOtherDevicesFound => 'Null altri aparates trovat';

  @override
  String fileIsTooBigForServer(String max) {
    return 'Ne successat inviar! Li servitor supporta solmen files til $max.';
  }

  @override
  String fileHasBeenSavedAt(String path) {
    return 'File ha esset gardat a $path';
  }

  @override
  String get jumpToLastReadMessage => 'Saltar al ultim leet missage';

  @override
  String get readUpToHere => 'Leet til ci';

  @override
  String get jump => 'Saltar';

  @override
  String get openLinkInBrowser => 'Aperter ligament in navigator';

  @override
  String get reportErrorDescription => '😭 Oh no. Alquo evenit mal. Si vu vole, vu posse raportar ti bug al developatores.';

  @override
  String get report => 'raportar';

  @override
  String get signInWithPassword => 'Aperter session con contrasigne';

  @override
  String get pleaseTryAgainLaterOrChooseDifferentServer => 'Ples provar plu tard o selecter un altri servitor.';

  @override
  String signInWith(String provider) {
    return 'Aperter session con $provider';
  }

  @override
  String get profileNotFound => 'Li usator ne posse esser trovat sur li servitor. Forsan existe un problema de conexione o li usator ne existe.';

  @override
  String get setTheme => 'Posir tema:';

  @override
  String get setColorTheme => 'Posir color de tema:';

  @override
  String get invite => 'Invitar';

  @override
  String get inviteGroupChat => '📨 Invitar gruppe de conversation';

  @override
  String get invitePrivateChat => '📨 Invitar conversation privat';

  @override
  String get invalidInput => 'Entrada ínvalid!';

  @override
  String wrongPinEntered(int seconds) {
    return 'Pin íncorect! Provar denov in $seconds secondes...';
  }

  @override
  String get pleaseEnterANumber => 'Ples intrar un númere plu grand quam 0';

  @override
  String get archiveRoomDescription => 'Li conversation va esser movet al archive. Altri usatores va vider que vu ha forlassat li conversation.';

  @override
  String get roomUpgradeDescription => 'Li conversation va esser recreat con li nov version de chambre. Omni participantes va esser notificat que ili deve cambiar al nov conversation. Plu info pri versiones de chambre: https://spec.matrix.org/latest/rooms/';

  @override
  String get removeDevicesDescription => 'Vu va esser cludet sur ti aparate e ne va posser reciver missages plu.';

  @override
  String get banUserDescription => 'Li usator va esser bannit ex li conversation e ne va posser intrar denov til debannat.';

  @override
  String get unbanUserDescription => 'Li usator va posser intrar denov si ili prova.';

  @override
  String get kickUserDescription => 'Li usator es expulsat ex li conversation ma ne bannit. In public conversationes, li usator posse re-adherer in quolcunc témpor.';

  @override
  String get makeAdminDescription => 'Si vu fa ti usator admin, vu posse ne posser desfar to, pro que ili va haver li sam permissiones quam vu.';

  @override
  String get pushNotificationsNotAvailable => 'Notificationes push ne es disponibil';

  @override
  String get learnMore => 'Saper plu';

  @override
  String get yourGlobalUserIdIs => 'Vor global user-ID es: ';

  @override
  String noUsersFoundWithQuery(String query) {
    return 'Pardona, null usator trovat con \"$query\". Ples controlar por errores de scrition.';
  }

  @override
  String get knocking => 'Frappar';

  @override
  String chatCanBeDiscoveredViaSearchOnServer(String server) {
    return 'Conversation posse esser trovat per sercha sur $server';
  }

  @override
  String get searchChatsRooms => 'Serchar por #conversationes, @usatores...';

  @override
  String get nothingFound => 'Null trovat...';

  @override
  String get groupName => 'Nómine del gruppe';

  @override
  String get groupDescription => 'Description del gruppe';

  @override
  String get groupConfiguration => 'Configuration del gruppe';

  @override
  String get groupType => 'Tip de gruppe';

  @override
  String get groupTypeProduct => 'Gruppe de producte';

  @override
  String get groupTypeGrameen => 'Gruppe predefinit';

  @override
  String get groupTypeVoluntary => 'Gruppe voluntari';

  @override
  String get groupTypeFunding => 'Gruppe de fundation';

  @override
  String get groupTypeTemporary => 'Gruppe temporari';

  @override
  String get groupTypeMerryGoRound => 'Gruppe rotativ';

  @override
  String get groupTypeDescriptionDefault => 'Membres posse economisar e prestar inter se in li gruppe secun li metodologie grameen. Prestos es proportional al suma economisat, secun li parametres de leverage permisset.';

  @override
  String get groupTypeDescriptionFunding => 'Membres de ti gruppes comensa les por prestar a gruppes grameen e obtener profit. Ne existe duré fix, membres solmen fixa un duration por blocar lor fundes. Existe un risc de bloc indefinit si gruppes es penalizat por inactivitá.';

  @override
  String get groupTypeDescriptionTemporary => 'Ti-ci es gruppes creat por scopes specific con un limite de témpor, p.ex. por funerales, nupties o reunion de introduction.';

  @override
  String get groupTypeDescriptionVoluntary => 'Gruppes organizat con un program de contribution. Conditiones eveni in realitá ante que li gruppe actua por li usator, p.ex. in ecclesie, contributiones regulari por ofrandes, o in unions de docentes por supporte mutual.';

  @override
  String get groupTypeDescriptionMerryGoRound => 'Membres contribui e un membre recive un parte del economisation periodic. P.ex. 70% del contributiones es dat a un membre, li rest es partet inter omni al fine del cicle.';

  @override
  String get groupTypeDescriptionProduct => 'Gruppes de producte es gruppes de sistema por functionar li tot sistema.';

  @override
  String get groupSecret => 'Secrete del gruppe';

  @override
  String get currency => 'Moné';

  @override
  String get currencySelectDescription => 'Representa li moné usat por administrar li fundes del gruppe';

  @override
  String get periodicSetup => 'Parametres de cicle';

  @override
  String get periodType => 'Tip de periode';

  @override
  String get periodicTypeDescription => 'Tip de periode representa li duration inter obligationes del membres al gruppe';

  @override
  String get periodTypeWeekly => 'Cade seman';

  @override
  String get periodTypeBiWeekly => 'Cade du semanes';

  @override
  String get periodTypeMonthly => 'Cade mensu';

  @override
  String get periodicSavingAmount => 'Suma de economisation periodic';

  @override
  String get periodicSavingAmountDescription => 'Suma economisat periodicmen per membres del gruppe';

  @override
  String get finalizeGroupConfiguration => 'Finalisar configuration del gruppe';

  @override
  String finalizeGroupConfigurationDescription(String groupName) {
    return 'Vor gruppe $groupName va esser configurat prest';
  }

  @override
  String get groupTerminationDate => 'Date de termination del gruppe';

  @override
  String get groupTerminationDateDescription => 'Date pos quel li scope del gruppe es completat';

  @override
  String get groupCreationSuccessful => 'Demanda de creation del gruppe successosimen in queue';

  @override
  String groupCreationSuccessfulDescription(String groupName) {
    return 'Gruppe con nómine $groupName es in configuration, to va prender un moment.\n\nAdjunte omni membres del gruppe ex vor contactes';
  }

  @override
  String get createGroupAndInviteUsers => 'Crear un gruppe e invitar usatores';

  @override
  String get groupCanBeFoundViaSearch => 'Gruppe es trovat per sercha';

  @override
  String get wrongRecoveryKey => 'Pardona... ti ne sembla esser li corect clave de regania.';

  @override
  String get startConversation => 'Iniciar conversation';

  @override
  String get commandHint_sendraw => 'Inviar json brut';

  @override
  String get databaseMigrationTitle => 'Base de data es optimisat';

  @override
  String get databaseMigrationBody => 'Ples atender. To posse prender un moment.';

  @override
  String get leaveEmptyToClearStatus => 'Lassa vacui por remover statu.';

  @override
  String get select => 'Selecter';

  @override
  String get searchForUsers => 'Serchar @usatores...';

  @override
  String get pleaseEnterYourCurrentPassword => 'Ples intrar vor actual contrasigne';

  @override
  String get newPassword => 'Nov contrasigne';

  @override
  String get pleaseChooseAStrongPassword => 'Ples selecter un fort contrasigne';

  @override
  String get passwordsDoNotMatch => 'Contrasignes ne corresponde';

  @override
  String get passwordIsWrong => 'Li contrasigne intrat es íncorect';

  @override
  String get publicLink => 'Ligament public';

  @override
  String get publicChatAddresses => 'Adresses public de conversation';

  @override
  String get createNewAddress => 'Crear nov adresse';

  @override
  String get joinSpace => 'Adherer al spacie';

  @override
  String get publicSpaces => 'Spacies public';

  @override
  String get addChatOrSubSpace => 'Adjunter conversation o subspacie';

  @override
  String get subspace => 'Subspacie';

  @override
  String get decline => 'Refuser';

  @override
  String get thisDevice => 'Ti aparate:';

  @override
  String get initAppError => 'Un errore evenit durant initialisation del app';

  @override
  String get userRole => 'Rol de usator';

  @override
  String minimumPowerLevel(String level) {
    return '$level es li minim nivelle de potentie.';
  }

  @override
  String searchIn(String chat) {
    return 'Serchar in conversation \"$chat\"...';
  }

  @override
  String get searchMore => 'Serchar plu...';

  @override
  String get gallery => 'Galerie';

  @override
  String get files => 'Files';

  @override
  String databaseBuildErrorBody(String url, String error) {
    return 'Ne successat constructer li base de data SQlite. Li application prova usar li base de data ancian. Ples raportar ti errore al developatores a $url. Li message de errore es: $error';
  }

  @override
  String sessionLostBody(String url, String error) {
    return 'Vor session es perdut. Ples raportar ti errore al developatores a $url. Li message de errore es: $error';
  }

  @override
  String restoreSessionBody(String url, String error) {
    return 'Li application prova restituir vor session ex li backup. Ples raportar ti errore al developatores a $url. Li message de errore es: $error';
  }

  @override
  String forwardMessageTo(String roomName) {
    return 'Transmissar missage a $roomName?';
  }

  @override
  String get sendReadReceipts => 'Inviar confirmationes de leida';

  @override
  String get sendTypingNotificationsDescription => 'Altri participantes in un conversation posse vider quande vu tippa un nov missage.';

  @override
  String get sendReadReceiptsDescription => 'Altri participantes in un conversation posse vider quande vu ha leet un missage.';

  @override
  String get formattedMessages => 'Formattet missages';

  @override
  String get formattedMessagesDescription => 'Monstrar contenete rich de missage quam textu gras per markdown.';

  @override
  String get verifyOtherUser => '🔐 Verificar altri usator';

  @override
  String get verifyOtherUserDescription => 'Si vu verifica un altri usator, vu posse esser cert pri cui vu scri. 💪\n\nQuande vu comensa un verification, ambi va vider un popup in li app. Vu va vider un serie de emojis o númeres por comparar.\n\nLi max bon metode es incontrar o usar un videotelefonada. 👭';

  @override
  String get verifyOtherDevice => '🔐 Verificar altri aparate';

  @override
  String get verifyOtherDeviceDescription => 'Si vu verifica un altri aparate, ili posse exchangear claves, augmentant securitá. 💪 Un popup va aparir in ambi aparates. Vu va comparar emojis o númeres. Es max bon haver ambi aparates proxim. 🤳';

  @override
  String acceptedKeyVerification(String sender) {
    return '$sender acceptat verification de clave';
  }

  @override
  String canceledKeyVerification(String sender) {
    return '$sender anullat verification de clave';
  }

  @override
  String completedKeyVerification(String sender) {
    return '$sender completet verification de clave';
  }

  @override
  String isReadyForKeyVerification(String sender) {
    return '$sender es pret por verification de clave';
  }

  @override
  String requestedKeyVerification(String sender) {
    return '$sender demandat verification de clave';
  }

  @override
  String startedKeyVerification(String sender) {
    return '$sender comensat verification de clave';
  }

  @override
  String get transparent => 'Transparent';

  @override
  String get incomingMessages => 'Missages entrant';

  @override
  String get stickers => 'Stickers';

  @override
  String get discover => 'Descovrir';

  @override
  String get commandHint_ignore => 'Ignorar li dat matrix ID';

  @override
  String get commandHint_unignore => 'Ne ignorar li dat matrix ID';

  @override
  String unreadChatsInApp(String appname, String unread) {
    return '$appname: $unread ínlectet conversationes';
  }

  @override
  String get noDatabaseEncryption => 'Ciffration de base de data ne es supportat sur ti-ci platforma';

  @override
  String thereAreCountUsersBlocked(Object count) {
    return 'Actualmen, il es $count usatores blocat.';
  }

  @override
  String get restricted => 'Restrictet';

  @override
  String get knockRestricted => 'Knock restrictet';

  @override
  String goToSpace(Object space) {
    return 'Ir al spacie: $space';
  }

  @override
  String get markAsUnread => 'Marcar quam ínlectet';

  @override
  String userLevel(int level) {
    return '$level - Usator';
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
  String get changeGeneralChatSettings => 'Cambiar general parametres de conversation';

  @override
  String get inviteOtherUsers => 'Invitar altri usatores a ti conversation';

  @override
  String get changeTheChatPermissions => 'Cambiar li permissiones de conversation';

  @override
  String get changeTheVisibilityOfChatHistory => 'Cambiar li visibilitá del historie de conversation';

  @override
  String get changeTheCanonicalRoomAlias => 'Cambiar li principal adresse public de conversation';

  @override
  String get sendRoomNotifications => 'Inviar un @room notificationes';

  @override
  String get changeTheDescriptionOfTheGroup => 'Cambiar li description del conversation';

  @override
  String get chatPermissionsDescription => 'Definir quel nivelle de potentie es necessari por cert actiones in ti conversation. Li nivelles de potentie 0, 50 e 100 usualmen representa usatores, moderators e admins, ma omni gradation es possibil.';

  @override
  String updateInstalled(String version) {
    return '🎉 Update $version installat!';
  }

  @override
  String get changelog => 'Changelog';

  @override
  String get sendCanceled => 'Inviar anullat';

  @override
  String get loginWithMatrixId => 'Login con Matrix-ID';

  @override
  String get discoverHomeservers => 'Descovrir hem-servitores';

  @override
  String get whatIsAHomeserver => 'Quo es un hem-servitor?';

  @override
  String get homeserverDescription => 'Omni vor data es conservat sur li hem-servitor, just quam un e-mail provider. Vu posse selecter quel hem-servitor vu vole usar, dum vu posse comunicar con omni. Learne plu a https://matrix.org.';

  @override
  String get doesNotSeemToBeAValidHomeserver => 'Ne sembla esser un compatibil hem-servitor. Adresse errat?';

  @override
  String get calculatingFileSize => 'Calculant dimension de file...';

  @override
  String get prepareSendingAttachment => 'Prepara inviar attachment...';

  @override
  String get sendingAttachment => 'Inviar attachment...';

  @override
  String get generatingVideoThumbnail => 'Generant miniatura de video...';

  @override
  String get compressVideo => 'Compressent video...';

  @override
  String sendingAttachmentCountOfCount(int index, int length) {
    return 'Inviar attachment $index de $length...';
  }

  @override
  String serverLimitReached(int seconds) {
    return 'Limite del servitor atinget! Attend $seconds secondes...';
  }

  @override
  String get oneOfYourDevicesIsNotVerified => 'Un de vor aparates ne es verificat';

  @override
  String get noticeChatBackupDeviceVerification => 'Note: Quande vu conecta omni vor aparates al archive de conversation, ili es automaticmen verificat.';

  @override
  String get continueText => 'Continuar';

  @override
  String get welcomeText => 'Crear o adherer gruppes con li scope de economisar, obtener credit o ofertar prestos a altri membres';

  @override
  String get blur => 'Blur:';

  @override
  String get opacity => 'Opacitá:';

  @override
  String get setWallpaper => 'Posir tapete';

  @override
  String get manageAccount => 'Gesti li conto';

  @override
  String get noContactInformationProvided => 'Servitor ne provide alcun valid information de contacte';

  @override
  String get contactServerAdmin => 'Contactar administrator del servitor';

  @override
  String get contactServerSecurity => 'Contactar securitá del servitor';

  @override
  String get supportPage => 'Págine de supporte';

  @override
  String get serverInformation => 'Information del servitor:';

  @override
  String get name => 'Nómine';

  @override
  String get version => 'Version';

  @override
  String get website => 'Págine web';

  @override
  String get compress => 'Compressar';

  @override
  String get boldText => 'Textu gras';

  @override
  String get italicText => 'Textu italic';

  @override
  String get strikeThrough => 'Textu barrat';

  @override
  String get pleaseFillOut => 'Ples completar';

  @override
  String get invalidUrl => 'Url ínvalid';

  @override
  String get addLink => 'Adjunter ligament';

  @override
  String get unableToJoinChat => 'Ne successat adherer al conversation. Forse li altri parte ja cludet li conversation.';

  @override
  String get previous => 'Precedent';

  @override
  String get otherPartyNotLoggedIn => 'Li altri parte ne es actualmen logat e ne posse reciver missages!';

  @override
  String appWantsToUseForLogin(String server) {
    return 'Usar \'$server\' por logar';
  }

  @override
  String get appWantsToUseForLoginDescription => 'Vu permisse li app e págine web compartir information pri vu.';

  @override
  String get open => 'Aperter';

  @override
  String get waitingForServer => 'Attendente servitor...';

  @override
  String get appIntroduction => 'Adherer o crear amical conversation gruppes con li scope de cresciment financiari. Learne plu a https://stawi.im o simplicmen tappa *Continuar*.';

  @override
  String get newChatRequest => '📩 Nov demanda de conversation';

  @override
  String get contentNotificationSettings => 'Parametres de notification de contenete';

  @override
  String get generalNotificationSettings => 'General parametres de notification';

  @override
  String get roomNotificationSettings => 'Parametres de notification de chambre';

  @override
  String get userSpecificNotificationSettings => 'Specific parametres de notification de usator';

  @override
  String get otherNotificationSettings => 'Altri parametres de notification';

  @override
  String get notificationRuleContainsUserName => 'Contene Nómine de Usator';

  @override
  String get notificationRuleContainsUserNameDescription => 'Notifica li usator quande un missage contene lor nómine de usator.';

  @override
  String get notificationRuleMaster => 'Assurdar omni notificationes';

  @override
  String get notificationRuleMasterDescription => 'Supersede omni altri regules e desactiva omni notificationes.';

  @override
  String get notificationRuleSuppressNotices => 'Supresser Messages Automatic';

  @override
  String get notificationRuleSuppressNoticesDescription => 'Supresse notificationes de clientes automatic quam robots.';

  @override
  String get notificationRuleInviteForMe => 'Invitation por Me';

  @override
  String get notificationRuleInviteForMeDescription => 'Notifica li usator quande ili es invitat a un chambre.';

  @override
  String get notificationRuleMemberEvent => 'Eveniment de Membre';

  @override
  String get notificationRuleMemberEventDescription => 'Supresse notificationes por evenimentes de membresía.';

  @override
  String get notificationRuleIsUserMention => 'Mention de Usator';

  @override
  String get notificationRuleIsUserMentionDescription => 'Notifica li usator quande ili es directmen mentionat in un missage.';

  @override
  String get notificationRuleContainsDisplayName => 'Contene Nómine Visibil';

  @override
  String get notificationRuleContainsDisplayNameDescription => 'Notifica li usator quande un missage contene lor nómine visibil.';

  @override
  String get notificationRuleIsRoomMention => 'Mention de Chambre';

  @override
  String get notificationRuleIsRoomMentionDescription => 'Notifica li usator pri mentions de chambre.';

  @override
  String get notificationRuleRoomnotif => 'Notification de Chambre';

  @override
  String get notificationRuleRoomnotifDescription => 'Notifica li usator pri messages de desactivation de chambre.';

  @override
  String get notificationRuleTombstone => 'Tombstone';

  @override
  String get notificationRuleTombstoneDescription => 'Notifica li usator pri messages de desactivation de chambre.';

  @override
  String get notificationRuleReaction => 'Reaction';

  @override
  String get notificationRuleReactionDescription => 'Supresse notificationes por reactiones.';

  @override
  String get notificationRuleRoomServerAcl => 'ACL de Servitor de Chambre';

  @override
  String get notificationRuleRoomServerAclDescription => 'Supresse notificationes por listes de control de access de servitor de chambre (ACL).';

  @override
  String get notificationRuleSuppressEdits => 'Supresser Redactiones';

  @override
  String get notificationRuleSuppressEditsDescription => 'Supresse notificationes por messages redactionat.';

  @override
  String get notificationRuleCall => 'Telefonada';

  @override
  String get notificationRuleCallDescription => 'Notifica li usator pri telefonadas.';

  @override
  String get notificationRuleEncryptedRoomOneToOne => 'Chambre Ciffrat Un-a-Un';

  @override
  String get notificationRuleEncryptedRoomOneToOneDescription => 'Notifica li usator pri messages in chambres ciffrat un-a-un.';

  @override
  String get notificationRuleRoomOneToOne => 'Chambre Un-a-Un';

  @override
  String get notificationRuleRoomOneToOneDescription => 'Notifica li usator pri messages in chambres un-a-un.';

  @override
  String get notificationRuleMessage => 'Missage';

  @override
  String get notificationRuleMessageDescription => 'Notifica li usator pri general messages.';

  @override
  String get notificationRuleEncrypted => 'Ciffrat';

  @override
  String get notificationRuleEncryptedDescription => 'Notifica li usator pri messages in chambres ciffrat.';

  @override
  String get notificationRuleJitsi => 'Jitsi';

  @override
  String get notificationRuleJitsiDescription => 'Notifica li usator pri evenimentes de widget Jitsi.';

  @override
  String get notificationRuleServerAcl => 'Supresser Evenimentes de ACL de Servitor';

  @override
  String get notificationRuleServerAclDescription => 'Supresse notificationes por evenimentes de ACL de Servitor.';

  @override
  String unknownPushRule(String rule) {
    return 'Regula de push ínconosset \'$rule\'';
  }

  @override
  String get deletePushRuleCanNotBeUndone => 'Si vu delete ti parametre de notification, to ne posse esser reversat.';

  @override
  String get more => 'Plu';

  @override
  String get shareKeysWith => 'Partir claves con...';

  @override
  String get shareKeysWithDescription => 'Quel aparates deve esser fidat por que ili posse leer vor messages in chambres ciffrat?';

  @override
  String get allDevices => 'Omni aparates';

  @override
  String get crossVerifiedDevicesIfEnabled => 'Aparates cross-verificat si activat';

  @override
  String get crossVerifiedDevices => 'Aparates cross-verificat';

  @override
  String get verifiedDevicesOnly => 'Solmen aparates verificat';

  @override
  String get poll => 'Sondage';

  @override
  String get question => 'Question';

  @override
  String get answer => 'Response';

  @override
  String get resultsDisclosed => 'Resultates divulgat';

  @override
  String get resultsUndisclosed => 'Resultates ínconosset';

  @override
  String get addAnswer => 'Adjunter response';

  @override
  String get deleteAnswer => 'Delete response';

  @override
  String startedAPoll(String sender) {
    return '$sender comensat un sondage';
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
  String get chatSettings => 'Parametres de conversation';

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
  String get enterContactName => 'Intrar nómine de contacte';

  @override
  String errorFieldRequired(String fieldName) {
    return 'camp es vacui, ples completar it';
  }

  @override
  String errorFieldShouldBeNumeric(String fieldName) {
    return 'camp ne es un númere valid';
  }

  @override
  String errorFieldShouldBeInTheFuture(String fieldName) {
    return 'camp deve esser in li futur';
  }

  @override
  String get fixErrorsInStep => 'Ples corecter li errores in ti passu ante continuar';

  @override
  String get calendarSelection => 'Date de economisation';

  @override
  String get selectStartDate => 'Selecter date de comensa';

  @override
  String get startDateDescription => 'Selecter un date de comensa por vor gruppe de economisation. Futur dates de economisation va esser evidenti secun vor tip de periode.';

  @override
  String get groupSchedule => 'Horari del gruppe';

  @override
  String get futureSavingDates => 'Secun vor selection, ti-ci es li proxim dates de horari:';

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
