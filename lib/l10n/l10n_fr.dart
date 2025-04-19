// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class L10nFr extends L10n {
  L10nFr([String locale = 'fr']) : super(locale);

  @override
  String get alwaysUse24HourFormat => 'faux';

  @override
  String get repeatPassword => 'Répéter le mot de passe';

  @override
  String get notAnImage => 'Ce n\'est pas un fichier image.';

  @override
  String get remove => 'Supprimer';

  @override
  String get importNow => 'Importer maintenant';

  @override
  String get importEmojis => 'Importer des Emojis';

  @override
  String get importFromZipFile => 'Importer depuis un fichier .zip';

  @override
  String get exportEmotePack => 'Exporter le pack d\'emojis en .zip';

  @override
  String get replace => 'Remplacer';

  @override
  String get about => 'À propos';

  @override
  String aboutHomeserver(String homeserver) {
    return 'À propos de $homeserver';
  }

  @override
  String get accept => 'Accepter';

  @override
  String acceptedTheInvitation(String username) {
    return '👍 $username a accepté l\'invitation';
  }

  @override
  String get account => 'Compte';

  @override
  String activatedEndToEndEncryption(String username) {
    return '🔐 $username a activé le chiffrement de bout en bout';
  }

  @override
  String get addEmail => 'Ajouter un e-mail';

  @override
  String get confirmMatrixId => 'Veuillez confirmer votre identifiant Matrix pour supprimer votre compte.';

  @override
  String supposedMxid(String mxid) {
    return 'Cela devrait être $mxid';
  }

  @override
  String get addChatDescription => 'Ajouter une description de chat...';

  @override
  String get addToSpace => 'Ajouter à l\'espace';

  @override
  String get admin => 'Administrateur';

  @override
  String get alias => 'alias';

  @override
  String get all => 'Tout';

  @override
  String get allChats => 'Toutes les discussions';

  @override
  String get commandHint_googly => 'Envoyer des yeux globuleux';

  @override
  String get commandHint_cuddle => 'Envoyer un câlin';

  @override
  String get commandHint_hug => 'Envoyer une étreinte';

  @override
  String googlyEyesContent(String senderName) {
    return '$senderName vous envoie des yeux globuleux';
  }

  @override
  String cuddleContent(String senderName) {
    return '$senderName vous fait un câlin';
  }

  @override
  String hugContent(String senderName) {
    return '$senderName vous serre dans ses bras';
  }

  @override
  String answeredTheCall(String senderName) {
    return '$senderName a répondu à l\'appel';
  }

  @override
  String get anyoneCanJoin => 'N\'importe qui peut rejoindre';

  @override
  String get appLock => 'Verrouillage de l\'application';

  @override
  String get appLockDescription => 'Verrouillez l\'application lorsqu\'elle n\'est pas utilisée avec un code PIN';

  @override
  String get archive => 'Archiver';

  @override
  String get areGuestsAllowedToJoin => 'Les invités sont-ils autorisés à rejoindre';

  @override
  String get areYouSure => 'Êtes-vous sûr ?';

  @override
  String get areYouSureYouWantToLogout => 'Êtes-vous sûr de vouloir vous déconnecter ?';

  @override
  String get askSSSSSign => 'Pour pouvoir signer l\'autre personne, veuillez entrer votre phrase secrète ou clé de récupération de magasin sécurisé.';

  @override
  String askVerificationRequest(String username) {
    return 'Accepter cette demande de vérification de $username ?';
  }

  @override
  String get autoplayImages => 'Lire automatiquement les autocollants et emojis animés';

  @override
  String badServerLoginTypesException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Le serveur prend en charge les types de connexion :\n$serverVersions\nMais cette application ne prend en charge que :\n$supportedVersions';
  }

  @override
  String get sendTypingNotifications => 'Envoyer des notifications de frappe';

  @override
  String get swipeRightToLeftToReply => 'Glissez de droite à gauche pour répondre';

  @override
  String get sendOnEnter => 'Envoyer avec Entrée';

  @override
  String badServerVersionsException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Le serveur prend en charge les versions du Spec :\n$serverVersions\nMais cette application ne prend en charge que $supportedVersions';
  }

  @override
  String countChatsAndCountParticipants(int chats, int participants) {
    return '$chats discussions et $participants participants';
  }

  @override
  String get noMoreChatsFound => 'Plus de discussions trouvées...';

  @override
  String get noChatsFoundHere => 'Aucune discussion trouvée ici pour l\'instant. Commencez une nouvelle discussion avec quelqu\'un en utilisant le bouton ci-dessous. ⤵️';

  @override
  String get joinedChats => 'Discussions rejointes';

  @override
  String get unread => 'Non lu';

  @override
  String get space => 'Espace';

  @override
  String get spaces => 'Espaces';

  @override
  String get banFromChat => 'Bannir de la discussion';

  @override
  String get banned => 'Banni';

  @override
  String bannedUser(String username, String targetName) {
    return '$username a banni $targetName';
  }

  @override
  String get blockDevice => 'Bloquer l\'appareil';

  @override
  String get blocked => 'Bloqué';

  @override
  String get botMessages => 'Messages du bot';

  @override
  String get cancel => 'Annuler';

  @override
  String cantOpenUri(String uri) {
    return 'Impossible d\'ouvrir l\'URI $uri';
  }

  @override
  String get changeDeviceName => 'Changer le nom de l\'appareil';

  @override
  String changedTheChatAvatar(String username) {
    return '$username a changé l\'avatar du chat';
  }

  @override
  String changedTheChatDescriptionTo(String username, String description) {
    return '$username a changé la description du chat en : \'$description\'';
  }

  @override
  String changedTheChatNameTo(String username, String chatname) {
    return '$username a changé le nom du chat en : \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(String username) {
    return '$username a modifié les autorisations du chat';
  }

  @override
  String changedTheDisplaynameTo(String username, String displayname) {
    return '$username a changé son nom d\'affichage en : \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(String username) {
    return '$username a modifié les règles d\'accès des invités';
  }

  @override
  String changedTheGuestAccessRulesTo(String username, String rules) {
    return '$username a modifié les règles d\'accès des invités en : $rules';
  }

  @override
  String changedTheHistoryVisibility(String username) {
    return '$username a modifié la visibilité de l\'historique';
  }

  @override
  String changedTheHistoryVisibilityTo(String username, String rules) {
    return '$username a modifié la visibilité de l\'historique en : $rules';
  }

  @override
  String changedTheJoinRules(String username) {
    return '$username a modifié les règles de participation';
  }

  @override
  String changedTheJoinRulesTo(String username, String joinRules) {
    return '$username a modifié les règles de participation en : $joinRules';
  }

  @override
  String changedTheProfileAvatar(String username) {
    return '$username a changé son avatar';
  }

  @override
  String changedTheRoomAliases(String username) {
    return '$username a modifié les alias de la salle';
  }

  @override
  String changedTheRoomInvitationLink(String username) {
    return '$username a modifié le lien d\'invitation';
  }

  @override
  String get changePassword => 'Changer le mot de passe';

  @override
  String get changeTheHomeserver => 'Changer le serveur principal';

  @override
  String get changeTheme => 'Changer votre style';

  @override
  String get changeTheNameOfTheGroup => 'Changer le nom du groupe';

  @override
  String get changeYourAvatar => 'Change your avatar';

  @override
  String get channelCorruptedDecryptError => 'Le chiffrement a été corrompu';

  @override
  String get chat => 'Discussion';

  @override
  String get yourChatBackupHasBeenSetUp => 'La sauvegarde de votre discussion a été configurée.';

  @override
  String get chatBackup => 'Sauvegarde de discussion';

  @override
  String get chatBackupDescription => 'Vos anciens messages sont sécurisés par une clé de récupération. Veuillez vous assurer de ne pas la perdre.';

  @override
  String get chatDetails => 'Détails du chat';

  @override
  String get chatHasBeenAddedToThisSpace => 'Le chat a été ajouté à cet espace';

  @override
  String get chats => 'Discussions';

  @override
  String get chooseAStrongPassword => 'Choisissez un mot de passe fort';

  @override
  String get clearArchive => 'Vider l\'archive';

  @override
  String get close => 'Fermer';

  @override
  String get commandHint_markasdm => 'Marquer comme salon de message direct pour l\'ID Matrix fourni';

  @override
  String get commandHint_markasgroup => 'Marquer comme groupe';

  @override
  String get commandHint_ban => 'Bannir l\'utilisateur spécifié de cette salle';

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
  String get commandHint_join => 'Rejoindre la salle spécifiée';

  @override
  String get commandHint_kick => 'Retirer l\'utilisateur spécifié de cette salle';

  @override
  String get commandHint_leave => 'Quitter cette salle';

  @override
  String get commandHint_me => 'Vous décrire';

  @override
  String get commandHint_myroomavatar => 'Définir votre image pour cette salle (par URI mxc)';

  @override
  String get commandHint_myroomnick => 'Définir votre nom d\'affichage pour cette salle';

  @override
  String get commandHint_op => 'Définir le niveau de pouvoir de l\'utilisateur spécifié (par défaut : 50)';

  @override
  String get commandHint_plain => 'Envoyer du texte non formaté';

  @override
  String get commandHint_react => 'Envoyer la réponse en tant que réaction';

  @override
  String get commandHint_send => 'Envoyer du texte';

  @override
  String get commandHint_unban => 'Annuler le bannissement de l\'utilisateur spécifié de cette salle';

  @override
  String get commandInvalid => 'Commande invalide';

  @override
  String commandMissing(String command) {
    return '$command n\'est pas une commande.';
  }

  @override
  String get compareEmojiMatch => 'Veuillez comparer les emojis';

  @override
  String get compareNumbersMatch => 'Veuillez comparer les nombres';

  @override
  String get configureChat => 'Configurer le chat';

  @override
  String get confirm => 'Confirmer';

  @override
  String get connect => 'Se connecter';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Le contact a été invité au groupe';

  @override
  String get containsDisplayName => 'Contient le nom d\'affichage';

  @override
  String get containsUserName => 'Contient le nom d\'utilisateur';

  @override
  String get contentHasBeenReported => 'Le contenu a été signalé aux administrateurs du serveur';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get copy => 'Copier';

  @override
  String get copyToClipboard => 'Copier dans le presse-papiers';

  @override
  String couldNotDecryptMessage(String error) {
    return 'Impossible de déchiffrer le message : $error';
  }

  @override
  String countParticipants(int count) {
    return '$count participants';
  }

  @override
  String get create => 'Créer';

  @override
  String createdTheChat(String username) {
    return '💬 $username a créé le chat';
  }

  @override
  String get createGroup => 'Créer un groupe';

  @override
  String get createNewSpace => 'Nouvel espace';

  @override
  String get currentlyActive => 'Actuellement actif';

  @override
  String get darkTheme => 'Sombre';

  @override
  String dateAndTimeOfDay(String date, String timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(String month, String day) {
    return '$day-$month';
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
  String get directChats => 'Direct Chats';

  @override
  String get allRooms => 'All Group Chats';

  @override
  String get displaynameHasBeenChanged => 'Displayname has been changed';

  @override
  String get downloadFile => 'Download file';

  @override
  String get edit => 'Edit';

  @override
  String get editBlockedServers => 'Edit blocked servers';

  @override
  String get chatPermissions => 'Chat permissions';

  @override
  String get editDisplayname => 'Edit displayname';

  @override
  String get editRoomAliases => 'Edit room aliases';

  @override
  String get editRoomAvatar => 'Edit room avatar';

  @override
  String get emoteExists => 'Emote already exists!';

  @override
  String get emoteInvalid => 'Invalid emote shortcode!';

  @override
  String get emoteKeyboardNoRecents => 'Recently-used emotes will appear here...';

  @override
  String get emotePacks => 'Emote packs for room';

  @override
  String get emoteSettings => 'Emote Settings';

  @override
  String get globalChatId => 'Global chat ID';

  @override
  String get accessAndVisibility => 'Access and visibility';

  @override
  String get accessAndVisibilityDescription => 'Who is allowed to join this chat and how the chat can be discovered.';

  @override
  String get calls => 'Calls';

  @override
  String get customEmojisAndStickers => 'Custom emojis and stickers';

  @override
  String get customEmojisAndStickersBody => 'Add or share custom emojis or stickers which can be used in any chat.';

  @override
  String get emoteShortcode => 'Emote shortcode';

  @override
  String get emoteWarnNeedToPick => 'You need to pick an emote shortcode and an image!';

  @override
  String get emptyChat => 'Empty chat';

  @override
  String get enableEmotesGlobally => 'Enable emote pack globally';

  @override
  String get enableEncryption => 'Enable encryption';

  @override
  String get enableEncryptionWarning => 'You won\'t be able to disable the encryption anymore. Are you sure?';

  @override
  String get encrypted => 'Encrypted';

  @override
  String get encryption => 'Encryption';

  @override
  String get encryptionNotEnabled => 'Encryption is not enabled';

  @override
  String endedTheCall(String senderName) {
    return '$senderName ended the call';
  }

  @override
  String get enterAnEmailAddress => 'Enter an email address';

  @override
  String get homeserver => 'Homeserver';

  @override
  String get enterYourHomeserver => 'Enter your homeserver';

  @override
  String errorObtainingLocation(String error) {
    return 'Error obtaining location: $error';
  }

  @override
  String get everythingReady => 'Tout est prêt !';

  @override
  String get extremeOffensive => 'Extrêmement offensant';

  @override
  String get fileName => 'Nom du fichier';

  @override
  String get stawi => 'Stawi';

  @override
  String get fontSize => 'Taille de la police';

  @override
  String get forward => 'Transférer';

  @override
  String get fromJoining => 'Depuis l\'adhésion';

  @override
  String get fromTheInvitation => 'Depuis l\'invitation';

  @override
  String get goToTheNewRoom => 'Aller à la nouvelle salle';

  @override
  String get group => 'Groupe';

  @override
  String get chatDescription => 'Description de la discussion';

  @override
  String get chatDescriptionHasBeenChanged => 'La description de la discussion a été modifiée';

  @override
  String get groupIsPublic => 'Le groupe est public';

  @override
  String get groups => 'Groupes';

  @override
  String groupWith(String displayname) {
    return 'Groupe avec $displayname';
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
  String get help => 'Help';

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
  String get identity => 'Identity';

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
  String get inoffensive => 'Inoffensive';

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
  String get noChatDescriptionYet => 'No chat description created yet.';

  @override
  String get tryAgain => 'Try again';

  @override
  String get invalidServerName => 'Invalid server name';

  @override
  String get invited => 'Invited';

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
  String get isTyping => 'is typing…';

  @override
  String joinedTheChat(String username) {
    return '👋 $username joined the chat';
  }

  @override
  String get joinRoom => 'Join room';

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
  String get leave => 'Leave';

  @override
  String get leftTheChat => 'Left the chat';

  @override
  String get license => 'License';

  @override
  String get lightTheme => 'Light';

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
  String get loadingPleaseWait => 'Loading… Please wait.';

  @override
  String get loadMore => 'Load more…';

  @override
  String get locationDisabledNotice => 'Location services are disabled. Please enable them to be able to share your location.';

  @override
  String get locationPermissionDeniedNotice => 'Location permission denied. Please grant them to be able to share your location.';

  @override
  String get contactPermissionDeniedNotice => 'Contact permission denied. Please grant them to be able to connect with others.';

  @override
  String get login => 'Login';

  @override
  String logInTo(String homeserver) {
    return 'Log in to $homeserver';
  }

  @override
  String get logout => 'Logout';

  @override
  String get memberChanges => 'Member changes';

  @override
  String get mention => 'Mention';

  @override
  String get messages => 'Messages';

  @override
  String get messagesStyle => 'Messages:';

  @override
  String get moderator => 'Moderator';

  @override
  String get muteChat => 'Mute chat';

  @override
  String get needPantalaimonWarning => 'Please be aware that you need Pantalaimon to use end-to-end encryption for now.';

  @override
  String get newChat => 'New chat';

  @override
  String get newMessageInStawi => '💬 New message in Stawi';

  @override
  String get newVerificationRequest => 'New verification request!';

  @override
  String get next => 'Next';

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
  String get scanQrCode => 'Scan QR code';

  @override
  String get none => 'None';

  @override
  String get noPasswordRecoveryDescription => 'You have not added a way to recover your password yet.';

  @override
  String get noPermission => 'No permission';

  @override
  String get noRoomsFound => 'No rooms found…';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsEnabledForThisAccount => 'Notifications enabled for this account';

  @override
  String numUsersTyping(int count) {
    return '$count users are typing…';
  }

  @override
  String get obtainingLocation => 'Obtaining location…';

  @override
  String get offensive => 'Offensive';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'Ok';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupEnabled => 'Online Key Backup is enabled';

  @override
  String get oopsPushError => 'Oops! Unfortunately, an error occurred when setting up the push notifications.';

  @override
  String get oopsSomethingWentWrong => 'Oops, something went wrong…';

  @override
  String get openAppToReadMessages => 'Open app to read messages';

  @override
  String get openCamera => 'Open camera';

  @override
  String get openVideoCamera => 'Open camera for a video';

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
  String get participant => 'Participant';

  @override
  String get passphraseOrKey => 'passphrase or recovery key';

  @override
  String get password => 'Password';

  @override
  String get passwordForgotten => 'Password forgotten';

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
  String get passwordRecovery => 'Password recovery';

  @override
  String get people => 'People';

  @override
  String get pickImage => 'Pick an image';

  @override
  String get pin => 'Pin';

  @override
  String play(String fileName) {
    return 'Play $fileName';
  }

  @override
  String get pleaseChoose => 'Please choose';

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
  String get privacy => 'Privacy';

  @override
  String get publicRooms => 'Public Rooms';

  @override
  String get pushRules => 'Push rules';

  @override
  String get reason => 'Reason';

  @override
  String get recording => 'Recording';

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
  String get register => 'Register';

  @override
  String get reject => 'Reject';

  @override
  String rejectedTheInvitation(String username) {
    return '$username rejected the invitation';
  }

  @override
  String get rejoin => 'Rejoin';

  @override
  String get removeAllOtherDevices => 'Remove all other devices';

  @override
  String removedBy(String username) {
    return 'Removed by $username';
  }

  @override
  String get removeDevice => 'Remove device';

  @override
  String get unbanFromChat => 'Unban from chat';

  @override
  String get removeYourAvatar => 'Remove your avatar';

  @override
  String get replaceRoomWithNewerVersion => 'Replace room with newer version';

  @override
  String get reply => 'Reply';

  @override
  String get reportMessage => 'Report message';

  @override
  String get requestPermission => 'Request permission';

  @override
  String get roomHasBeenUpgraded => 'Room has been upgraded';

  @override
  String get roomVersion => 'Room version';

  @override
  String get saveFile => 'Save file';

  @override
  String get search => 'Search';

  @override
  String get security => 'Security';

  @override
  String get recoveryKey => 'Recovery key';

  @override
  String get recoveryKeyLost => 'Recovery key lost?';

  @override
  String seenByUser(String username) {
    return 'Seen by $username';
  }

  @override
  String get send => 'Send';

  @override
  String get sendAMessage => 'Send a message';

  @override
  String get sendAsText => 'Send as text';

  @override
  String get sendAudio => 'Send audio';

  @override
  String get sendFile => 'Send file';

  @override
  String get sendImage => 'Send image';

  @override
  String sendImages(int count) {
    return 'Send $count image';
  }

  @override
  String get sendMessages => 'Send messages';

  @override
  String get sendOriginal => 'Send original';

  @override
  String get sendSticker => 'Send sticker';

  @override
  String get sendVideo => 'Send video';

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
    return '😊 $username a envoyé un autocollant';
  }

  @override
  String sentAVideo(String username) {
    return '🎥 $username a envoyé une vidéo';
  }

  @override
  String sentCallInformations(String senderName) {
    return '$senderName a envoyé des informations d\'appel';
  }

  @override
  String get separateChatTypes => 'Séparer les discussions directes et les groupes';

  @override
  String get setAsCanonicalAlias => 'Définir comme alias principal';

  @override
  String get setCustomEmotes => 'Définir des émoticônes personnalisées';

  @override
  String get setChatDescription => 'Définir la description de la discussion';

  @override
  String get setInvitationLink => 'Définir le lien d\'invitation';

  @override
  String get setPermissionsLevel => 'Définir le niveau d\'autorisation';

  @override
  String get setStatus => 'Définir le statut';

  @override
  String get settings => 'Paramètres';

  @override
  String get share => 'Partager';

  @override
  String sharedTheLocation(String username) {
    return '$username a partagé sa localisation';
  }

  @override
  String get shareLocation => 'Partager la localisation';

  @override
  String get showPassword => 'Afficher le mot de passe';

  @override
  String get presenceStyle => 'Présence :';

  @override
  String get presencesToggle => 'Afficher les messages de statut des autres utilisateurs';

  @override
  String get singlesignon => 'Authentification unique';

  @override
  String get skip => 'Passer';

  @override
  String get sourceCode => 'Code source';

  @override
  String get spaceIsPublic => 'L\'espace est public';

  @override
  String get spaceName => 'Nom de l\'espace';

  @override
  String startedACall(String senderName) {
    return '$senderName a démarré un appel';
  }

  @override
  String get startFirstChat => 'Commencez votre première discussion';

  @override
  String get status => 'Statut';

  @override
  String get statusExampleMessage => 'Comment allez-vous aujourd\'hui ?';

  @override
  String get submit => 'Soumettre';

  @override
  String get synchronizingPleaseWait => 'Synchronisation… Veuillez patienter.';

  @override
  String synchronizingPleaseWaitCounter(String percentage) {
    return ' Synchronizing… ($percentage%)';
  }

  @override
  String get systemTheme => 'Système';

  @override
  String get theyDontMatch => 'Ils ne correspondent pas';

  @override
  String get theyMatch => 'Ils correspondent';

  @override
  String get title => 'Stawi';

  @override
  String get toggleFavorite => 'Ajouter/Retirer des favoris';

  @override
  String get toggleMuted => 'Activer/Désactiver le mode silencieux';

  @override
  String get toggleUnread => 'Marquer comme lu/non lu';

  @override
  String get tooManyRequestsWarning => 'Trop de requêtes. Veuillez réessayer plus tard !';

  @override
  String get transferFromAnotherDevice => 'Transférer depuis un autre appareil';

  @override
  String get tryToSendAgain => 'Essayer d\'envoyer à nouveau';

  @override
  String get unavailable => 'Indisponible';

  @override
  String unbannedUser(String username, String targetName) {
    return '$username a débloqué $targetName';
  }

  @override
  String get unblockDevice => 'Débloquer l\'appareil';

  @override
  String get unknownDevice => 'Appareil inconnu';

  @override
  String get unknownEncryptionAlgorithm => 'Algorithme de chiffrement inconnu';

  @override
  String unknownEvent(String type) {
    return 'Événement inconnu \'$type\'';
  }

  @override
  String get unmuteChat => 'Unmute chat';

  @override
  String get unpin => 'Unpin';

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
  String get voiceMessage => 'Message vocal';

  @override
  String get waitingPartnerAcceptRequest => 'En attente que le partenaire accepte la demande…';

  @override
  String get waitingPartnerEmoji => 'En attente que le partenaire accepte l\'emoji…';

  @override
  String get waitingPartnerNumbers => 'En attente que le partenaire accepte les numéros…';

  @override
  String get wallpaper => 'Fond d\'écran :';

  @override
  String get warning => 'Avertissement !';

  @override
  String get weSentYouAnEmail => 'Nous vous avons envoyé un e-mail';

  @override
  String get whoCanPerformWhichAction => 'Qui peut effectuer quelle action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Qui est autorisé à rejoindre ce groupe';

  @override
  String get whyDoYouWantToReportThis => 'Pourquoi voulez-vous signaler ceci ?';

  @override
  String get wipeChatBackup => 'Effacer votre sauvegarde de discussion pour créer une nouvelle clé de récupération ?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Avec ces adresses, vous pouvez récupérer votre mot de passe.';

  @override
  String get writeAMessage => 'Écrire un message…';

  @override
  String get yes => 'Oui';

  @override
  String get you => 'Vous';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Vous ne participez plus à cette discussion';

  @override
  String get youHaveBeenBannedFromThisChat => 'Vous avez été banni de cette discussion';

  @override
  String get yourPublicKey => 'Votre clé publique';

  @override
  String get messageInfo => 'Infos du message';

  @override
  String get time => 'Heure';

  @override
  String get messageType => 'Type de message';

  @override
  String get sender => 'Expéditeur';

  @override
  String get openGallery => 'Ouvrir la galerie';

  @override
  String get removeFromSpace => 'Retirer de l\'espace';

  @override
  String get addToSpaceDescription => 'Sélectionnez un espace pour ajouter cette discussion.';

  @override
  String get start => 'Démarrer';

  @override
  String get pleaseEnterRecoveryKeyDescription => 'Pour déverrouiller vos anciens messages, veuillez entrer votre clé de récupération générée lors d\'une session précédente. Votre clé de récupération n\'est PAS votre mot de passe.';

  @override
  String get publish => 'Publier';

  @override
  String videoWithSize(String size) {
    return 'Vidéo ($size)';
  }

  @override
  String get openChat => 'Ouvrir la discussion';

  @override
  String get markAsRead => 'Marquer comme lu';

  @override
  String get reportUser => 'Signaler l\'utilisateur';

  @override
  String get dismiss => 'Ignorer';

  @override
  String reactedWith(String sender, String reaction) {
    return '$sender a réagi avec $reaction';
  }

  @override
  String get pinMessage => 'Épingler dans la salle';

  @override
  String get confirmEventUnpin => 'Voulez-vous vraiment désépingler définitivement l\'événement ?';

  @override
  String get emojis => 'Émojis';

  @override
  String get placeCall => 'Passer un appel';

  @override
  String get voiceCall => 'Appel vocal';

  @override
  String get unsupportedAndroidVersion => 'Version Android non prise en charge';

  @override
  String get unsupportedAndroidVersionLong => 'Cette fonctionnalité nécessite une version Android plus récente. Veuillez vérifier les mises à jour ou le support Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'Veuillez noter que les appels vidéo sont actuellement en version bêta. Ils peuvent ne pas fonctionner comme prévu ou ne pas fonctionner du tout sur toutes les plateformes.';

  @override
  String get experimentalVideoCalls => 'Appels vidéo expérimentaux';

  @override
  String get emailOrUsername => 'E-mail ou nom d\'utilisateur';

  @override
  String get indexedDbErrorTitle => 'Problèmes en mode privé';

  @override
  String get indexedDbErrorLong => 'Le stockage des messages n\'est malheureusement pas activé par défaut en mode privé.\nVeuillez visiter\n - about:config\n - définir dom.indexedDB.privateBrowsing.enabled à true\nSinon, il n\'est pas possible d\'exécuter Stawi.';

  @override
  String switchToAccount(String number) {
    return 'Basculer vers le compte $number';
  }

  @override
  String get nextAccount => 'Compte suivant';

  @override
  String get previousAccount => 'Compte précédent';

  @override
  String get addWidget => 'Ajouter un widget';

  @override
  String get widgetVideo => 'Vidéo';

  @override
  String get widgetEtherpad => 'Note de texte';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Personnalisé';

  @override
  String get widgetName => 'Nom';

  @override
  String get widgetUrlError => 'Ceci n\'est pas une URL valide.';

  @override
  String get widgetNameError => 'Veuillez fournir un nom d\'affichage.';

  @override
  String get errorAddingWidget => 'Erreur lors de l\'ajout du widget.';

  @override
  String get youRejectedTheInvitation => 'Vous avez rejeté l\'invitation';

  @override
  String get youJoinedTheChat => 'Vous avez rejoint la discussion';

  @override
  String get youAcceptedTheInvitation => '👍 Vous avez accepté l\'invitation';

  @override
  String youBannedUser(String user) {
    return 'Vous avez banni $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(String user) {
    return 'Vous avez retiré l\'invitation pour $user';
  }

  @override
  String youInvitedToBy(String alias) {
    return '📩 Vous avez été invité via un lien à :\n$alias';
  }

  @override
  String youInvitedBy(String user) {
    return '📩 Vous avez été invité par $user';
  }

  @override
  String invitedBy(String user) {
    return '📩 Invité par $user';
  }

  @override
  String youInvitedUser(String user) {
    return '📩 Vous avez invité $user';
  }

  @override
  String youKicked(String user) {
    return '👞 Vous avez expulsé $user';
  }

  @override
  String youKickedAndBanned(String user) {
    return '🙅 Vous avez expulsé et banni $user';
  }

  @override
  String youUnbannedUser(String user) {
    return 'Vous avez débloqué $user';
  }

  @override
  String hasKnocked(String user) {
    return '🚪 $user a frappé';
  }

  @override
  String get usersMustKnock => 'Les utilisateurs doivent frapper';

  @override
  String get noOneCanJoin => 'Personne ne peut rejoindre';

  @override
  String userWouldLikeToChangeTheChat(String user) {
    return '$user souhaite rejoindre la discussion.';
  }

  @override
  String get noPublicLinkHasBeenCreatedYet => 'Aucun lien public n\'a encore été créé';

  @override
  String get knock => 'Frapper';

  @override
  String get users => 'Utilisateurs';

  @override
  String get unlockOldMessages => 'Déverrouiller les anciens messages';

  @override
  String get storeInSecureStorageDescription => 'Stocker la clé de récupération dans le stockage sécurisé de cet appareil.';

  @override
  String get saveKeyManuallyDescription => 'Enregistrez cette clé manuellement en utilisant le partage système ou le presse-papiers.';

  @override
  String get storeInAndroidKeystore => 'Stocker dans Android KeyStore';

  @override
  String get storeInAppleKeyChain => 'Stocker dans Apple KeyChain';

  @override
  String get storeSecurlyOnThisDevice => 'Stocker en toute sécurité sur cet appareil';

  @override
  String countFiles(int count) {
    return '$count fichiers';
  }

  @override
  String get user => 'Utilisateur';

  @override
  String get custom => 'Personnalisé';

  @override
  String get foregroundServiceRunning => 'Cette notification apparaît lorsque le service au premier plan est actif.';

  @override
  String get screenSharingTitle => 'partage d\'écran';

  @override
  String get screenSharingDetail => 'Vous partagez votre écran dans Stawi';

  @override
  String get callingPermissions => 'Autorisations d\'appel';

  @override
  String get callingAccount => 'Compte d\'appel';

  @override
  String get callingAccountDetails => 'Autorise Stawi à utiliser l\'application de numérotation Android native.';

  @override
  String get appearOnTop => 'Apparaître au-dessus';

  @override
  String get appearOnTopDetails => 'Permet à l\'application d\'apparaître au-dessus (inutile si Stawi est déjà configuré comme compte d\'appel)';

  @override
  String get otherCallingPermissions => 'Microphone, caméra et autres autorisations Stawi';

  @override
  String get whyIsThisMessageEncrypted => 'Pourquoi ce message est-il illisible ?';

  @override
  String get noKeyForThisMessage => 'Cela peut arriver si le message a été envoyé avant que vous ne vous soyez connecté à votre compte sur cet appareil.\n\nIl est également possible que l\'expéditeur ait bloqué votre appareil ou qu\'il y ait eu un problème de connexion Internet.\n\nPouvez-vous lire le message sur une autre session ? Dans ce cas, vous pouvez transférer le message depuis celle-ci ! Allez dans Paramètres > Appareils et assurez-vous que vos appareils se sont vérifiés mutuellement. Lorsque vous ouvrez à nouveau la salle et que les deux sessions sont au premier plan, les clés seront transmises automatiquement.\n\nVous ne voulez pas perdre les clés lors de la déconnexion ou du changement d\'appareil ? Assurez-vous d\'avoir activé la sauvegarde de discussion dans les paramètres.';

  @override
  String get newGroup => 'Nouveau groupe';

  @override
  String get newSpace => 'Nouvel espace';

  @override
  String get enterSpace => 'Entrer dans l\'espace';

  @override
  String get enterRoom => 'Entrer dans la salle';

  @override
  String get allSpaces => 'Tous les espaces';

  @override
  String numChats(String number) {
    return '$number discussions';
  }

  @override
  String get hideUnimportantStateEvents => 'Masquer les événements d\'état non importants';

  @override
  String get hidePresences => 'Masquer la liste des statuts ?';

  @override
  String get doNotShowAgain => 'Ne plus afficher';

  @override
  String wasDirectChatDisplayName(String oldDisplayName) {
    return 'Discussion vide (était $oldDisplayName)';
  }

  @override
  String get newSpaceDescription => 'Les espaces vous permettent de regrouper vos discussions et de créer des communautés privées ou publiques.';

  @override
  String get encryptThisChat => 'Chiffrer cette discussion';

  @override
  String get disableEncryptionWarning => 'Pour des raisons de sécurité, vous ne pouvez pas désactiver le chiffrement dans une discussion où il a déjà été activé.';

  @override
  String get sorryThatsNotPossible => 'Désolé... ce n\'est pas possible';

  @override
  String get deviceKeys => 'Clés de l\'appareil :';

  @override
  String get reopenChat => 'Rouvrir la discussion';

  @override
  String get noBackupWarning => 'Avertissement ! Sans activer la sauvegarde de discussion, vous perdrez l\'accès à vos messages chiffrés. Il est fortement recommandé d\'activer d\'abord la sauvegarde avant de vous déconnecter.';

  @override
  String get noOtherDevicesFound => 'Aucun autre appareil trouvé';

  @override
  String fileIsTooBigForServer(String max) {
    return 'Impossible d\'envoyer ! Le serveur ne prend en charge que les pièces jointes jusqu\'à $max.';
  }

  @override
  String fileHasBeenSavedAt(String path) {
    return 'Le fichier a été enregistré à $path';
  }

  @override
  String get jumpToLastReadMessage => 'Aller au dernier message lu';

  @override
  String get readUpToHere => 'Lu jusqu\'ici';

  @override
  String get jump => 'Aller à';

  @override
  String get openLinkInBrowser => 'Ouvrir le lien dans le navigateur';

  @override
  String get reportErrorDescription => '😭 Oh non. Une erreur s\'est produite. Si vous le souhaitez, vous pouvez signaler ce bug aux développeurs.';

  @override
  String get report => 'signaler';

  @override
  String get signInWithPassword => 'Se connecter avec un mot de passe';

  @override
  String get pleaseTryAgainLaterOrChooseDifferentServer => 'Veuillez réessayer plus tard ou choisir un autre serveur.';

  @override
  String signInWith(String provider) {
    return 'Se connecter avec $provider';
  }

  @override
  String get profileNotFound => 'L\'utilisateur n\'a pas pu être trouvé sur le serveur. Il se peut qu\'il y ait un problème de connexion ou que l\'utilisateur n\'existe pas.';

  @override
  String get setTheme => 'Définir le thème :';

  @override
  String get setColorTheme => 'Définir le thème de couleur :';

  @override
  String get invite => 'Inviter';

  @override
  String get inviteGroupChat => '📨 Inviter à une discussion de groupe';

  @override
  String get invitePrivateChat => '📨 Inviter à une discussion privée';

  @override
  String get invalidInput => 'Entrée invalide !';

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
  String get pushNotificationsNotAvailable => 'Notifications push non disponibles';

  @override
  String get learnMore => 'En savoir plus';

  @override
  String get yourGlobalUserIdIs => 'Votre identifiant utilisateur global est : ';

  @override
  String noUsersFoundWithQuery(String query) {
    return 'Malheureusement, aucun utilisateur n\'a pu être trouvé avec \"$query\". Veuillez vérifier si vous n\'avez pas fait de faute de frappe.';
  }

  @override
  String get knocking => 'Knocking';

  @override
  String chatCanBeDiscoveredViaSearchOnServer(String server) {
    return 'La discussion peut être découverte via la recherche sur $server';
  }

  @override
  String get searchChatsRooms => 'Rechercher des #discussions, @utilisateurs...';

  @override
  String get nothingFound => 'Nothing found...';

  @override
  String get groupName => 'Nom du groupe';

  @override
  String get groupDescription => 'Description du groupe';

  @override
  String get groupConfiguration => 'Configuration du groupe';

  @override
  String get groupType => 'Type de groupe';

  @override
  String get groupTypeProduct => 'Groupe produit';

  @override
  String get groupTypeGrameen => 'Groupe par défaut';

  @override
  String get groupTypeVoluntary => 'Groupe volontaire';

  @override
  String get groupTypeFunding => 'Groupe de financement';

  @override
  String get groupTypeTemporary => 'Groupe temporaire';

  @override
  String get groupTypeMerryGoRound => 'Groupe Tontine';

  @override
  String get groupTypeDescriptionDefault => 'Les membres peuvent économiser et se prêter périodiquement au sein du groupe selon la méthodologie grameen. Les prêts sont proportionnels au montant économisé selon les paramètres de levier autorisés.';

  @override
  String get groupTypeDescriptionFunding => 'Les membres de ces groupes les créent pour prêter à des groupes grameen et en tirer un profit. Il n\'y a pas de durée fixe, les membres définissent la période durant laquelle ils acceptent de bloquer leurs fonds pour le prêt. Certains fonds peuvent être bloqués indéfiniment si les groupes sont pénalisés pour inactivité.';

  @override
  String get groupTypeDescriptionTemporary => 'Ce sont des groupes créés pour des objectifs très spécifiques avec une date limite définie, par exemple pour des collectes de fonds funéraires, des mariages ou des réunions d\'introduction.';

  @override
  String get groupTypeDescriptionVoluntary => 'Groupes organisés avec un calendrier de contributions des membres. Certaines conditions réelles doivent être remplies avant que le groupe n\'agisse pour un utilisateur. Exemples : 1. Dans une église, les fidèles doivent contribuer chaque semaine aux offrandes du dimanche, faire une contribution mensuelle de 10 % ou une contribution annuelle. 2. Les syndicats d\'enseignants ou groupes similaires contribuent régulièrement à une caisse de solidarité pour les membres en difficulté, avec la condition que si un membre ne contribue pas, il ne recevra pas d\'aide en cas de besoin.';

  @override
  String get groupTypeDescriptionMerryGoRound => 'Les membres contribuent et un calendrier détermine qu\'un seul individu reçoit une partie des économies périodiques à chaque cycle. Par exemple, 70 % des contributions vont à une personne et le reste est partagé entre tous à la fin du cycle.';

  @override
  String get groupTypeDescriptionProduct => 'Les groupes produits sont des groupes système qui facilitent le fonctionnement global du système';

  @override
  String get groupSecret => 'Secret du groupe';

  @override
  String get currency => 'Devise';

  @override
  String get currencySelectDescription => 'Représente la devise qui sera utilisée pour gérer les fonds du groupe';

  @override
  String get periodicSetup => 'Paramètres de cycle';

  @override
  String get periodType => 'Type de période';

  @override
  String get periodicTypeDescription => 'Le type de période représente la durée entre laquelle les membres ont une obligation envers leur groupe';

  @override
  String get periodTypeWeekly => 'Hebdomadaire';

  @override
  String get periodTypeBiWeekly => 'Bihebdomadaire';

  @override
  String get periodTypeMonthly => 'Mensuel';

  @override
  String get periodicSavingAmount => 'Montant d\'épargne périodique';

  @override
  String get periodicSavingAmountDescription => 'Montant économisé périodiquement par les membres du groupe';

  @override
  String get finalizeGroupConfiguration => 'Finaliser la configuration du groupe';

  @override
  String finalizeGroupConfigurationDescription(String groupName) {
    return 'Votre groupe $groupName sera configuré sous peu';
  }

  @override
  String get groupTerminationDate => 'Date de fin du groupe';

  @override
  String get groupTerminationDateDescription => 'Date après laquelle l\'objectif du groupe aurait été accompli';

  @override
  String get groupCreationSuccessful => 'Group creation request queued successfully';

  @override
  String groupCreationSuccessfulDescription(String groupName) {
    return 'Le groupe nommé $groupName est en cours de configuration, cela prendra un moment. \n\n Ajoutez tous les membres au groupe depuis vos contacts.';
  }

  @override
  String get createGroupAndInviteUsers => 'Créer un groupe et inviter des utilisateurs';

  @override
  String get groupCanBeFoundViaSearch => 'Le groupe peut être trouvé via la recherche';

  @override
  String get wrongRecoveryKey => 'Désolé... cela ne semble pas être la bonne clé de récupération.';

  @override
  String get startConversation => 'Démarrer une conversation';

  @override
  String get commandHint_sendraw => 'Envoyer le json brut';

  @override
  String get databaseMigrationTitle => 'La base de données est optimisée';

  @override
  String get databaseMigrationBody => 'Veuillez patienter. Cela peut prendre un moment.';

  @override
  String get leaveEmptyToClearStatus => 'Laissez vide pour effacer votre statut.';

  @override
  String get select => 'Sélectionner';

  @override
  String get searchForUsers => 'Rechercher des @utilisateurs...';

  @override
  String get pleaseEnterYourCurrentPassword => 'Veuillez entrer votre mot de passe actuel';

  @override
  String get newPassword => 'Nouveau mot de passe';

  @override
  String get pleaseChooseAStrongPassword => 'Veuillez choisir un mot de passe fort';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get passwordIsWrong => 'Le mot de passe saisi est incorrect';

  @override
  String get publicLink => 'Lien public';

  @override
  String get publicChatAddresses => 'Adresses de discussion publiques';

  @override
  String get createNewAddress => 'Créer une nouvelle adresse';

  @override
  String get joinSpace => 'Rejoindre un espace';

  @override
  String get publicSpaces => 'Espaces publics';

  @override
  String get addChatOrSubSpace => 'Ajouter une discussion ou un sous-espace';

  @override
  String get subspace => 'Sous-espace';

  @override
  String get decline => 'Refuser';

  @override
  String get thisDevice => 'Cet appareil :';

  @override
  String get initAppError => 'Une erreur s\'est produite lors de l\'initialisation de l\'application';

  @override
  String get userRole => 'Rôle de l\'utilisateur';

  @override
  String minimumPowerLevel(String level) {
    return '$level est le niveau de pouvoir minimum.';
  }

  @override
  String searchIn(String chat) {
    return 'Rechercher dans la discussion \"$chat\"...';
  }

  @override
  String get searchMore => 'Rechercher plus...';

  @override
  String get gallery => 'Galerie';

  @override
  String get files => 'Fichiers';

  @override
  String databaseBuildErrorBody(String url, String error) {
    return 'Unable to build the SQlite database. The app tries to use the legacy database for now. Please report this error to the developers at $url. The error message is: $error';
  }

  @override
  String sessionLostBody(String url, String error) {
    return 'Votre session est perdue. Veuillez signaler cette erreur aux développeurs à $url. Le message d\'erreur est : $error';
  }

  @override
  String restoreSessionBody(String url, String error) {
    return 'L\'application tente maintenant de restaurer votre session à partir de la sauvegarde. Veuillez signaler cette erreur aux développeurs à $url. Le message d\'erreur est : $error';
  }

  @override
  String forwardMessageTo(String roomName) {
    return 'Transférer le message à $roomName ?';
  }

  @override
  String get sendReadReceipts => 'Envoyer les accusés de lecture';

  @override
  String get sendTypingNotificationsDescription => 'Les autres participants à une discussion peuvent voir lorsque vous écrivez un nouveau message.';

  @override
  String get sendReadReceiptsDescription => 'Les autres participants à une discussion peuvent voir lorsque vous avez lu un message.';

  @override
  String get formattedMessages => 'Messages formatés';

  @override
  String get formattedMessagesDescription => 'Afficher un contenu enrichi comme du texte en gras avec le markdown.';

  @override
  String get verifyOtherUser => '🔐 Vérifier un autre utilisateur';

  @override
  String get verifyOtherUserDescription => 'Si vous vérifiez un autre utilisateur, vous pouvez être sûr de savoir à qui vous écrivez réellement. 💪\n\nLorsque vous lancez une vérification, vous et l\'autre utilisateur verrez une fenêtre contextuelle dans l\'application. Vous y verrez une série d\'emojis ou de chiffres à comparer.\n\nLe mieux est de se rencontrer ou de lancer un appel vidéo. 👭';

  @override
  String get verifyOtherDevice => '🔐 Vérifier un autre appareil';

  @override
  String get verifyOtherDeviceDescription => 'Lorsque vous vérifiez un autre appareil, ces appareils peuvent échanger des clés, augmentant ainsi votre sécurité globale. 💪 Lorsque vous lancez une vérification, une fenêtre contextuelle apparaîtra sur les deux appareils. Vous y verrez une série d\'emojis ou de chiffres à comparer. Il est préférable d\'avoir les deux appareils à portée de main avant de commencer la vérification. 🤳';

  @override
  String acceptedKeyVerification(String sender) {
    return '$sender a accepté la vérification de clé';
  }

  @override
  String canceledKeyVerification(String sender) {
    return '$sender a annulé la vérification de clé';
  }

  @override
  String completedKeyVerification(String sender) {
    return '$sender a terminé la vérification de clé';
  }

  @override
  String isReadyForKeyVerification(String sender) {
    return '$sender est prêt pour la vérification de clé';
  }

  @override
  String requestedKeyVerification(String sender) {
    return '$sender a demandé une vérification de clé';
  }

  @override
  String startedKeyVerification(String sender) {
    return '$sender a démarré la vérification de clé';
  }

  @override
  String get transparent => 'Transparent';

  @override
  String get incomingMessages => 'Messages entrants';

  @override
  String get stickers => 'Stickers';

  @override
  String get discover => 'Découvrir';

  @override
  String get commandHint_ignore => 'Ignorer l\'identifiant Matrix donné';

  @override
  String get commandHint_unignore => 'Ne plus ignorer l\'identifiant Matrix donné';

  @override
  String unreadChatsInApp(String appname, String unread) {
    return '$appname : $unread discussions non lues';
  }

  @override
  String get noDatabaseEncryption => 'Le chiffrement de la base de données n\'est pas pris en charge sur cette plateforme';

  @override
  String thereAreCountUsersBlocked(Object count) {
    return 'Il y a actuellement $count utilisateurs bloqués.';
  }

  @override
  String get restricted => 'Restreint';

  @override
  String get knockRestricted => 'Coup frappé restreint';

  @override
  String goToSpace(Object space) {
    return 'Aller à l\'espace : $space';
  }

  @override
  String get markAsUnread => 'Marquer comme non lu';

  @override
  String userLevel(int level) {
    return '$level - Utilisateur';
  }

  @override
  String moderatorLevel(int level) {
    return '$level - Modérateur';
  }

  @override
  String adminLevel(int level) {
    return '$level - Administrateur';
  }

  @override
  String get changeGeneralChatSettings => 'Modifier les paramètres généraux de la discussion';

  @override
  String get inviteOtherUsers => 'Inviter d\'autres utilisateurs à cette discussion';

  @override
  String get changeTheChatPermissions => 'Modifier les autorisations de la discussion';

  @override
  String get changeTheVisibilityOfChatHistory => 'Modifier la visibilité de l\'historique de la discussion';

  @override
  String get changeTheCanonicalRoomAlias => 'Modifier l\'adresse publique principale de la discussion';

  @override
  String get sendRoomNotifications => 'Envoyer une notification @room';

  @override
  String get changeTheDescriptionOfTheGroup => 'Modifier la description de la discussion';

  @override
  String get chatPermissionsDescription => 'Définissez le niveau de pouvoir nécessaire pour certaines actions dans cette discussion. Les niveaux 0, 50 et 100 représentent généralement les utilisateurs, modérateurs et administrateurs, mais toute gradation est possible.';

  @override
  String updateInstalled(String version) {
    return '🎉 Update $version installed!';
  }

  @override
  String get changelog => 'Journal des modifications';

  @override
  String get sendCanceled => 'Envoi annulé';

  @override
  String get loginWithMatrixId => 'Connexion avec Matrix-ID';

  @override
  String get discoverHomeservers => 'Découvrir les serveurs d\'accueil';

  @override
  String get whatIsAHomeserver => 'Qu\'est-ce qu\'un serveur d\'accueil ?';

  @override
  String get homeserverDescription => 'Toutes vos données sont stockées sur le serveur d\'accueil, comme chez un fournisseur de messagerie. Vous pouvez choisir le serveur d\'accueil que vous souhaitez utiliser, tout en communiquant avec tout le monde. En savoir plus sur https://matrix.org.';

  @override
  String get doesNotSeemToBeAValidHomeserver => 'Cela ne semble pas être un serveur d\'accueil compatible. Mauvaise URL ?';

  @override
  String get calculatingFileSize => 'Calcul du poids du fichier...';

  @override
  String get prepareSendingAttachment => 'Préparation de l\'envoi de la pièce jointe...';

  @override
  String get sendingAttachment => 'Envoi de la pièce jointe...';

  @override
  String get generatingVideoThumbnail => 'Génération de la miniature vidéo...';

  @override
  String get compressVideo => 'Compression de la vidéo...';

  @override
  String sendingAttachmentCountOfCount(int index, int length) {
    return 'Sending attachment $index of $length...';
  }

  @override
  String serverLimitReached(int seconds) {
    return 'Limite du serveur atteinte ! Attente de $seconds secondes...';
  }

  @override
  String get oneOfYourDevicesIsNotVerified => 'L\'un de vos appareils n\'est pas vérifié';

  @override
  String get noticeChatBackupDeviceVerification => 'Note : Lorsque vous connectez tous vos appareils à la sauvegarde de discussion, ils sont automatiquement vérifiés.';

  @override
  String get continueText => 'Continuer';

  @override
  String get welcomeText => 'Créez ou rejoignez des groupes dans le but d\'épargner, d\'obtenir du crédit ou d\'offrir des prêts à d\'autres membres';

  @override
  String get blur => 'Flou :';

  @override
  String get opacity => 'Opacité :';

  @override
  String get setWallpaper => 'Définir le fond d\'écran';

  @override
  String get manageAccount => 'Gérer le compte';

  @override
  String get noContactInformationProvided => 'Aucune information de contact valide n\'est fournie par le serveur';

  @override
  String get contactServerAdmin => 'Contacter l\'administrateur du serveur';

  @override
  String get contactServerSecurity => 'Contacter la sécurité du serveur';

  @override
  String get supportPage => 'Page d\'assistance';

  @override
  String get serverInformation => 'Informations sur le serveur :';

  @override
  String get name => 'Nom';

  @override
  String get version => 'Version';

  @override
  String get website => 'Site web';

  @override
  String get compress => 'Compresser';

  @override
  String get boldText => 'Texte en gras';

  @override
  String get italicText => 'Texte en italique';

  @override
  String get strikeThrough => 'Barré';

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
