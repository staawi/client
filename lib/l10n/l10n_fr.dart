// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class L10nFr extends L10n {
  L10nFr([String locale = 'fr']) : super(locale);

  @override
  String get alwaysUse24HourFormat => 'true';

  @override
  String get repeatPassword => 'Répétez le mot de passe';

  @override
  String get notAnImage => 'Pas un fichier image.';

  @override
  String get remove => 'Supprimer';

  @override
  String get importNow => 'Importer maintenant';

  @override
  String get importEmojis => 'Importer des Emojis';

  @override
  String get importFromZipFile => 'Importer depuis un fichier .zip';

  @override
  String get exportEmotePack => 'Exporter le pack d\'émoticônes au format .zip';

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
  String get addEmail => 'Ajouter un courriel';

  @override
  String get confirmMatrixId => 'Veuillez confirmer votre identifiant Matrix afin de supprimer votre compte.';

  @override
  String supposedMxid(String mxid) {
    return 'Cela devrait être $mxid';
  }

  @override
  String get addChatDescription => 'Ajouter une description à la discussion...';

  @override
  String get addToSpace => 'Ajouter à l\'espace';

  @override
  String get admin => 'Administrateur';

  @override
  String get alias => 'adresse';

  @override
  String get all => 'Tout';

  @override
  String get allChats => 'Toutes les discussions';

  @override
  String get commandHint_googly => 'Envoyer des yeux écarquillés';

  @override
  String get commandHint_cuddle => 'Envoyer un câlin';

  @override
  String get commandHint_hug => 'Envoyer une accolade';

  @override
  String googlyEyesContent(String senderName) {
    return '$senderName vous envoie des yeux écarquillés';
  }

  @override
  String cuddleContent(String senderName) {
    return '$senderName vous fait un câlin';
  }

  @override
  String hugContent(String senderName) {
    return '$senderName vous fait une accolade';
  }

  @override
  String answeredTheCall(String senderName) {
    return '$senderName a répondu à l\'appel';
  }

  @override
  String get anyoneCanJoin => 'Tout le monde peut rejoindre';

  @override
  String get appLock => 'Verrouillage de l’application';

  @override
  String get appLockDescription => 'Verrouiller l\'application avec un code PIN lorsqu\'elle n\'est pas utilisée';

  @override
  String get archive => 'Archiver';

  @override
  String get areGuestsAllowedToJoin => 'Les invités peuvent-i·e·ls rejoindre';

  @override
  String get areYouSure => 'Êtes-vous sûr·e ?';

  @override
  String get areYouSureYouWantToLogout => 'Voulez-vous vraiment vous déconnecter ?';

  @override
  String get askSSSSSign => 'Pour pouvoir faire signer l\'autre personne, veuillez entrer la phrase de passe de votre trousseau sécurisé ou votre clé de récupération.';

  @override
  String askVerificationRequest(String username) {
    return 'Accepter cette demande de vérification de la part de $username ?';
  }

  @override
  String get autoplayImages => 'Lire automatiquement les autocollants et les émojis animés';

  @override
  String badServerLoginTypesException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Le serveur d\'accueil prend en charge les types de connexion :\n$serverVersions\nMais cette application ne prend en charge que :\n$supportedVersions';
  }

  @override
  String get sendTypingNotifications => 'Envoyer des notifications de frappe';

  @override
  String get swipeRightToLeftToReply => 'Glisser de droite à gauche pour répondre';

  @override
  String get sendOnEnter => 'Envoyer avec Entrée';

  @override
  String badServerVersionsException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Le serveur d\'accueil prend en charge les versions des spécifications :\n$serverVersions\nMais cette application ne prend en charge que $supportedVersions';
  }

  @override
  String countChatsAndCountParticipants(int chats, int participants) {
    return '$chats discussions et $participants participants';
  }

  @override
  String get noMoreChatsFound => 'Aucune autre discussion trouvée...';

  @override
  String get noChatsFoundHere => 'Aucune discussion trouvée. Utilisez le bouton ci-dessous pour commencer une nouvelle discussion. ⤵️';

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
  String get botMessages => 'Messages de bot';

  @override
  String get cancel => 'Annuler';

  @override
  String cantOpenUri(String uri) {
    return 'Impossible d\'ouvrir l\'URI $uri';
  }

  @override
  String get changeDeviceName => 'Modifier le nom de l\'appareil';

  @override
  String changedTheChatAvatar(String username) {
    return '$username a changé l\'image de la discussion';
  }

  @override
  String changedTheChatDescriptionTo(String username, String description) {
    return '$username a changé la description de la discussion en : \'$description\'';
  }

  @override
  String changedTheChatNameTo(String username, String chatname) {
    return '$username a renommé la discussion en : \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(String username) {
    return '$username a changé les permissions de la discussion';
  }

  @override
  String changedTheDisplaynameTo(String username, String displayname) {
    return '$username a changé son nom en : \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(String username) {
    return '$username a changé les règles d\'accès à la discussion pour les invités';
  }

  @override
  String changedTheGuestAccessRulesTo(String username, String rules) {
    return '$username a changé les règles d\'accès à la discussion pour les invités en : $rules';
  }

  @override
  String changedTheHistoryVisibility(String username) {
    return '$username a changé la visibilité de l\'historique de la discussion';
  }

  @override
  String changedTheHistoryVisibilityTo(String username, String rules) {
    return '$username a changé la visibilité de l\'historique de la discussion en : $rules';
  }

  @override
  String changedTheJoinRules(String username) {
    return '$username a changé les règles d\'accès à la discussion';
  }

  @override
  String changedTheJoinRulesTo(String username, String joinRules) {
    return '$username a changé les règles d\'accès à la discussion en : $joinRules';
  }

  @override
  String changedTheProfileAvatar(String username) {
    return '$username a changé son avatar';
  }

  @override
  String changedTheRoomAliases(String username) {
    return '$username a changé les adresses du salon';
  }

  @override
  String changedTheRoomInvitationLink(String username) {
    return '$username a changé le lien d\'invitation';
  }

  @override
  String get changePassword => 'Changer de mot de passe';

  @override
  String get changeTheHomeserver => 'Changer le serveur d\'accueil';

  @override
  String get changeTheme => 'Changez votre style';

  @override
  String get changeTheNameOfTheGroup => 'Changer le nom du groupe';

  @override
  String get changeYourAvatar => 'Changer votre avatar';

  @override
  String get channelCorruptedDecryptError => 'Le chiffrement a été corrompu';

  @override
  String get chat => 'Discussion';

  @override
  String get yourChatBackupHasBeenSetUp => 'Votre sauvegarde de la discussion a été mise en place.';

  @override
  String get chatBackup => 'Sauvegarde des discussions';

  @override
  String get chatBackupDescription => 'Vos anciens messages sont sécurisés par une clé de récupération. Veillez à ne pas la perdre.';

  @override
  String get chatDetails => 'Détails de la discussion';

  @override
  String get chatHasBeenAddedToThisSpace => 'La discussion a été ajoutée à cet espace';

  @override
  String get chats => 'Discussions';

  @override
  String get chooseAStrongPassword => 'Choisissez un mot de passe fort';

  @override
  String get clearArchive => 'Effacer les archives';

  @override
  String get close => 'Fermer';

  @override
  String get commandHint_markasdm => 'Marquer comme salon de messages directs pour l\'identifiant Matrix indiqué';

  @override
  String get commandHint_markasgroup => 'Marquer comme groupe';

  @override
  String get commandHint_ban => 'Bannir l\'utilisateur/trice donné(e) de ce salon';

  @override
  String get commandHint_clearcache => 'Vider le cache';

  @override
  String get commandHint_create => 'Créer un groupe de discussion vide\nUtilisez --no-encryption pour désactiver le chiffrement';

  @override
  String get commandHint_discardsession => 'Abandonner la session';

  @override
  String get commandHint_dm => 'Commencer une discussion directe\nUtilisez --no-encryption pour désactiver le chiffrement';

  @override
  String get commandHint_html => 'Envoyer du texte au format HTML';

  @override
  String get commandHint_invite => 'Inviter l\'utilisateur/trice donné(e) dans ce salon';

  @override
  String get commandHint_join => 'Rejoindre le salon donné';

  @override
  String get commandHint_kick => 'Supprime l\'utilisateur/trice donné(e) de ce salon';

  @override
  String get commandHint_leave => 'Quitter ce salon';

  @override
  String get commandHint_me => 'Décrivez-vous';

  @override
  String get commandHint_myroomavatar => 'Définir votre image pour ce salon (par mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Définir votre nom d\'affichage pour ce salon';

  @override
  String get commandHint_op => 'Définir le niveau de puissance de l\'utilisateur/trice donné(e) (par défaut : 50)';

  @override
  String get commandHint_plain => 'Envoyer du texte non formaté';

  @override
  String get commandHint_react => 'Envoyer une réponse en tant que réaction';

  @override
  String get commandHint_send => 'Envoyer du texte';

  @override
  String get commandHint_unban => 'Débannir l\'utilisateur/trice donné(e) de ce salon';

  @override
  String get commandInvalid => 'Commande invalide';

  @override
  String commandMissing(String command) {
    return '$command n\'est pas une commande.';
  }

  @override
  String get compareEmojiMatch => 'Veuillez comparer les émojis';

  @override
  String get compareNumbersMatch => 'Veuillez comparer les chiffres';

  @override
  String get configureChat => 'Configurer la discussion';

  @override
  String get confirm => 'Confirmer';

  @override
  String get connect => 'Se connecter';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Le contact a été invité au groupe';

  @override
  String get containsDisplayName => 'Contient un nom d\'affichage';

  @override
  String get containsUserName => 'Contient un nom d\'utilisateur·ice';

  @override
  String get contentHasBeenReported => 'Le contenu a été signalé aux administrateurs du serveur';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papier';

  @override
  String get copy => 'Copier';

  @override
  String get copyToClipboard => 'Copier dans le presse-papiers';

  @override
  String couldNotDecryptMessage(String error) {
    return 'Impossible de déchiffrer le message : $error';
  }

  @override
  String countParticipants(int count) {
    return '$count participant(s)';
  }

  @override
  String get create => 'Créer';

  @override
  String createdTheChat(String username) {
    return '💬 $username a créé la discussion';
  }

  @override
  String get createGroup => 'Créer un groupe';

  @override
  String get createNewSpace => 'Nouvel espace';

  @override
  String get currentlyActive => 'Actif en ce moment';

  @override
  String get darkTheme => 'Sombre';

  @override
  String dateAndTimeOfDay(String date, String timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(String month, String day) {
    return '$day/$month';
  }

  @override
  String dateWithYear(String year, String month, String day) {
    return '$day/$month/$year';
  }

  @override
  String get deactivateAccountWarning => 'Cette opération va désactiver votre compte. Une fois cette action effectuée, aucun retour en arrière n\'est possible ! Êtes-vous sûr·e ?';

  @override
  String get defaultPermissionLevel => 'Niveau d\'autorisation par défaut pour les arrivants';

  @override
  String get delete => 'Supprimer';

  @override
  String get deleteAccount => 'Supprimer le compte';

  @override
  String get deleteMessage => 'Supprimer le message';

  @override
  String get device => 'Appareil';

  @override
  String get deviceId => 'Identifiant de l\'appareil';

  @override
  String get devices => 'Appareils';

  @override
  String get directChats => 'Discussions directes';

  @override
  String get allRooms => 'Tous les groupes de discussion';

  @override
  String get displaynameHasBeenChanged => 'Renommage effectué';

  @override
  String get downloadFile => 'Télécharger le fichier';

  @override
  String get edit => 'Modifier';

  @override
  String get editBlockedServers => 'Modifier les serveurs bloqués';

  @override
  String get chatPermissions => 'Permissions du salon';

  @override
  String get editDisplayname => 'Changer de nom d\'affichage';

  @override
  String get editRoomAliases => 'Modifier les adresses du salon';

  @override
  String get editRoomAvatar => 'Modifier l\'avatar du salon';

  @override
  String get emoteExists => 'Cette émoticône existe déjà !';

  @override
  String get emoteInvalid => 'Raccourci d\'émoticône invalide !';

  @override
  String get emoteKeyboardNoRecents => 'Les émoticônes récemment utilisées apparaîtront ici...';

  @override
  String get emotePacks => 'Packs d\'émoticônes pour le salon';

  @override
  String get emoteSettings => 'Paramètre des émoticônes';

  @override
  String get globalChatId => 'Identifiant global de la discussion';

  @override
  String get accessAndVisibility => 'Accès et visibilité';

  @override
  String get accessAndVisibilityDescription => 'Qui est autorisé à rejoindre cette discussion et comment la discussion peut être découverte.';

  @override
  String get calls => 'Appels';

  @override
  String get customEmojisAndStickers => 'Émoticônes et autocollants personnalisés';

  @override
  String get customEmojisAndStickersBody => 'Ajoutez ou partagez des émoticônes ou autocollants personnalisés qui peuvent être utilisés dans n\'importe quelle discussion.';

  @override
  String get emoteShortcode => 'Raccourci de l\'émoticône';

  @override
  String get emoteWarnNeedToPick => 'Vous devez sélectionner un raccourci d\'émoticône et une image !';

  @override
  String get emptyChat => 'Discussion vide';

  @override
  String get enableEmotesGlobally => 'Activer globalement le pack d\'émoticônes';

  @override
  String get enableEncryption => 'Activer le chiffrement';

  @override
  String get enableEncryptionWarning => 'Vous ne pourrez plus désactiver le chiffrement. Êtes-vous sûr(e) ?';

  @override
  String get encrypted => 'Chiffré';

  @override
  String get encryption => 'Chiffrement';

  @override
  String get encryptionNotEnabled => 'Le chiffrement n\'est pas activé';

  @override
  String endedTheCall(String senderName) {
    return '$senderName a mis fin à l\'appel';
  }

  @override
  String get enterAnEmailAddress => 'Saisissez une adresse de courriel';

  @override
  String get homeserver => 'Serveur d\'accueil';

  @override
  String get enterYourHomeserver => 'Renseignez votre serveur d\'accueil';

  @override
  String errorObtainingLocation(String error) {
    return 'Erreur lors de l\'obtention de la localisation : $error';
  }

  @override
  String get everythingReady => 'Tout est prêt !';

  @override
  String get extremeOffensive => 'Extrêmement offensant';

  @override
  String get fileName => 'Nom du ficher';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Taille de la police';

  @override
  String get forward => 'Transférer';

  @override
  String get fromJoining => 'À partir de l\'entrée dans le salon';

  @override
  String get fromTheInvitation => 'À partir de l\'invitation';

  @override
  String get goToTheNewRoom => 'Aller dans le nouveau salon';

  @override
  String get group => 'Groupe';

  @override
  String get chatDescription => 'Description de la discussion';

  @override
  String get chatDescriptionHasBeenChanged => 'La description du salon a changé';

  @override
  String get groupIsPublic => 'Le groupe est public';

  @override
  String get groups => 'Groupes';

  @override
  String groupWith(String displayname) {
    return 'Groupe avec $displayname';
  }

  @override
  String get guestsAreForbidden => 'Les invités ne peuvent pas rejoindre';

  @override
  String get guestsCanJoin => 'Les invités peuvent rejoindre';

  @override
  String hasWithdrawnTheInvitationFor(String username, String targetName) {
    return '$username a annulé l\'invitation de $targetName';
  }

  @override
  String get help => 'Aide';

  @override
  String get hideRedactedEvents => 'Cacher les évènements supprimés';

  @override
  String get hideRedactedMessages => 'Cacher les messages édités';

  @override
  String get hideRedactedMessagesBody => 'Si quelqu\'un modifie un message, celui-ci ne sera plus visible dans la discussion.';

  @override
  String get hideInvalidOrUnknownMessageFormats => 'Masquer les formats de message invalides ou inconnus';

  @override
  String get howOffensiveIsThisContent => 'À quel point ce contenu est-il offensant ?';

  @override
  String get id => 'Identifiant';

  @override
  String get identity => 'Identité';

  @override
  String get block => 'Bloquer';

  @override
  String get blockedUsers => 'Utilisateurs/trices bloqués';

  @override
  String get blockListDescription => 'Vous pouvez bloquer des utilisateurs/trices qui vous dérangent. Vous ne pourrez plus recevoir aucun message ou invitation à un salon d\'utilisateurs/trices figurant sur votre liste de blocage personnelle.';

  @override
  String get blockUsername => 'Ignorer le nom d\'utilisateur/trice';

  @override
  String get iHaveClickedOnLink => 'J\'ai cliqué sur le lien';

  @override
  String get incorrectPassphraseOrKey => 'Phrase de passe ou clé de récupération incorrecte';

  @override
  String get inoffensive => 'Non offensant';

  @override
  String get inviteContact => 'Inviter un contact';

  @override
  String inviteContactToGroupQuestion(Object contact, Object groupName) {
    return 'Voulez-vous inviter $contact au salon \"$groupName\" ?';
  }

  @override
  String inviteContactToGroup(String groupName) {
    return 'Inviter un contact dans $groupName';
  }

  @override
  String get noChatDescriptionYet => 'Aucune description de discussion n\'a encore été créée.';

  @override
  String get tryAgain => 'Nouvelle tentative';

  @override
  String get invalidServerName => 'Nom de serveur invalide';

  @override
  String get invited => 'Invité·e';

  @override
  String get redactMessageDescription => 'Le message sera modifié pour tous les participants de cette conversation. Il n\'est pas possible de revenir en arrière.';

  @override
  String get optionalRedactReason => '(Facultatif) Raison de la modification de ce message...';

  @override
  String invitedUser(String username, String targetName) {
    return '📩 $username a invité $targetName';
  }

  @override
  String get invitedUsersOnly => 'Uniquement les utilisateur·ices invité·es';

  @override
  String get inviteForMe => 'Inviter pour moi';

  @override
  String inviteText(String username, String link) {
    return '$username vous a invité·e sur FluffyChat.\n1. Visiter fluffychat.im et installer l\'application\n2. Inscrivez-vous ou connectez-vous\n3. Ouvrez le lien d\'invitation :\n$link';
  }

  @override
  String get isTyping => 'est en train d\'écrire…';

  @override
  String joinedTheChat(String username) {
    return '👋 $username a rejoint la discussion';
  }

  @override
  String get joinRoom => 'Rejoindre le salon';

  @override
  String kicked(String username, String targetName) {
    return '👞 $username a expulsé $targetName';
  }

  @override
  String kickedAndBanned(String username, String targetName) {
    return '🙅 $username a expulsé et banni $targetName';
  }

  @override
  String get kickFromChat => 'Expulser de la discussion';

  @override
  String lastActiveAgo(String localizedTimeShort) {
    return 'Vu·e pour la dernière fois : $localizedTimeShort';
  }

  @override
  String get leave => 'Partir';

  @override
  String get leftTheChat => 'A quitté la discussion';

  @override
  String get license => 'Licence';

  @override
  String get lightTheme => 'Clair';

  @override
  String loadCountMoreParticipants(int count) {
    return 'Charger $count participant·es de plus';
  }

  @override
  String get dehydrate => 'Exporter la session et effacer l\'appareil';

  @override
  String get dehydrateWarning => 'Cette action ne peut pas être annulée. Assurez-vous d\'enregistrer convenablement le fichier de sauvegarde.';

  @override
  String get dehydrateTor => 'Utilisateurs/trices de TOR : Exporter la session';

  @override
  String get dehydrateTorLong => 'Pour les utilisateurs/trices de TOR, il est recommandé d\'exporter la session avant de fermer la fenêtre.';

  @override
  String get hydrateTor => 'Utilisateurs/trices de TOR : Importer une session exportée';

  @override
  String get hydrateTorLong => 'Vous avez exporté votre session la dernière fois sur TOR ? Importez-la rapidement et continuez à discuter.';

  @override
  String get hydrate => 'Restaurer à partir du fichier de sauvegarde';

  @override
  String get loadingPleaseWait => 'Chargement… Veuillez patienter.';

  @override
  String get loadMore => 'Charger plus…';

  @override
  String get locationDisabledNotice => 'Les services de localisation sont désactivés. Il est nécessaire de les activer avant de pouvoir partager votre localisation.';

  @override
  String get locationPermissionDeniedNotice => 'L\'application n\'a pas la permission d\'accéder à votre localisation. Merci de l\'accorder afin de pouvoir partager votre localisation.';

  @override
  String get login => 'Se connecter';

  @override
  String logInTo(String homeserver) {
    return 'Se connecter à $homeserver';
  }

  @override
  String get logout => 'Se déconnecter';

  @override
  String get memberChanges => 'Changements de membres';

  @override
  String get mention => 'Mentionner';

  @override
  String get messages => 'Messages';

  @override
  String get messagesStyle => 'Messages :';

  @override
  String get moderator => 'Modérateur·rice';

  @override
  String get muteChat => 'Mettre la discussion en sourdine';

  @override
  String get needPantalaimonWarning => 'Pour l\'instant, vous avez besoin de Pantalaimon pour utiliser le chiffrement de bout en bout.';

  @override
  String get newChat => 'Nouvelle discussion';

  @override
  String get newMessageInFluffyChat => '💬 Nouveau message dans FluffyChat';

  @override
  String get newVerificationRequest => 'Nouvelle demande de vérification !';

  @override
  String get next => 'Suivant';

  @override
  String get no => 'Non';

  @override
  String get noConnectionToTheServer => 'Aucune connexion au serveur';

  @override
  String get noEmotesFound => 'Aucune émoticône trouvée. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Vous pouvez activer le chiffrement seulement quand le salon n\'est plus accessible au public.';

  @override
  String get noGoogleServicesWarning => 'Firebase Cloud Messaging ne semble pas être disponible sur votre appareil. Pour continuer à recevoir des notifications poussées, nous vous recommandons d\'installer ntfy. Avec ntfy ou un autre fournisseur Unified Push, vous pouvez recevoir des notifications poussées de manière sécurisée. Vous pouvez télécharger ntfy sur le PlayStore ou sur F-Droid.';

  @override
  String noMatrixServer(String server1, String server2) {
    return '$server1 n\'est pas un serveur Matrix, souhaitez-vous utiliser $server2 à la place ?';
  }

  @override
  String get shareInviteLink => 'Partager un lien d\'invitation';

  @override
  String get scanQrCode => 'Scanner un code QR';

  @override
  String get none => 'Aucun';

  @override
  String get noPasswordRecoveryDescription => 'Vous n\'avez pas encore ajouté de moyen pour récupérer votre mot de passe.';

  @override
  String get noPermission => 'Aucune permission';

  @override
  String get noRoomsFound => 'Aucun salon trouvé…';

  @override
  String get notifications => 'Notifications';

  @override
  String get notificationsEnabledForThisAccount => 'Notifications activées pour ce compte';

  @override
  String numUsersTyping(int count) {
    return '$count utilisateur·ices écrivent…';
  }

  @override
  String get obtainingLocation => 'Obtention de la localisation…';

  @override
  String get offensive => 'Offensant';

  @override
  String get offline => 'Hors ligne';

  @override
  String get ok => 'Valider';

  @override
  String get online => 'En ligne';

  @override
  String get onlineKeyBackupEnabled => 'La sauvegarde en ligne des clés est activée';

  @override
  String get oopsPushError => 'Oups ! Une erreur s\'est malheureusement produite lors du réglage des notifications.';

  @override
  String get oopsSomethingWentWrong => 'Oups, un problème est survenu…';

  @override
  String get openAppToReadMessages => 'Ouvrez l\'application pour lire le message';

  @override
  String get openCamera => 'Ouvrir l\'appareil photo';

  @override
  String get openVideoCamera => 'Ouvrir la caméra pour une vidéo';

  @override
  String get oneClientLoggedOut => 'Un de vos clients a été déconnecté';

  @override
  String get addAccount => 'Ajouter un compte';

  @override
  String get editBundlesForAccount => 'Modifier les groupes pour ce compte';

  @override
  String get addToBundle => 'Ajouter au groupe';

  @override
  String get removeFromBundle => 'Retirer de ce groupe';

  @override
  String get bundleName => 'Nom du groupe';

  @override
  String get enableMultiAccounts => '(BETA) Activer les comptes multiples sur cet appareil';

  @override
  String get openInMaps => 'Ouvrir dans maps';

  @override
  String get link => 'Lien';

  @override
  String get serverRequiresEmail => 'Ce serveur doit valider votre adresse électronique pour l\'inscription.';

  @override
  String get or => 'Ou';

  @override
  String get participant => 'Participant(e)';

  @override
  String get passphraseOrKey => 'Phrase de passe ou clé de récupération';

  @override
  String get password => 'Mot de passe';

  @override
  String get passwordForgotten => 'Mot de passe oublié';

  @override
  String get passwordHasBeenChanged => 'Le mot de passe a été modifié';

  @override
  String get hideMemberChangesInPublicChats => 'Masquer les modifications de membres dans les discussions publiques';

  @override
  String get hideMemberChangesInPublicChatsBody => 'Ne pas afficher dans la chronologie de la discussion si quelqu\'un rejoint ou quitte une discussion publique afin d\'améliorer la lisibilité.';

  @override
  String get overview => 'Aperçu';

  @override
  String get notifyMeFor => 'Me notifier pour';

  @override
  String get passwordRecoverySettings => 'Paramètres de récupération de mot de passe';

  @override
  String get passwordRecovery => 'Récupération du mot de passe';

  @override
  String get people => 'Personnes';

  @override
  String get pickImage => 'Choisir une image';

  @override
  String get pin => 'Épingler';

  @override
  String play(String fileName) {
    return 'Lire $fileName';
  }

  @override
  String get pleaseChoose => 'Veuillez choisir';

  @override
  String get pleaseChooseAPasscode => 'Veuillez choisir un code d’accès';

  @override
  String get pleaseClickOnLink => 'Veuillez cliquer sur le lien contenu dans le courriel puis continuez.';

  @override
  String get pleaseEnter4Digits => 'Veuillez saisir 4 chiffres ou laisser vide pour désactiver le verrouillage de l’application.';

  @override
  String get pleaseEnterRecoveryKey => 'Veuillez saisir votre clé de récupération :';

  @override
  String get pleaseEnterYourPassword => 'Renseignez votre mot de passe';

  @override
  String get pleaseEnterYourPin => 'Veuillez saisir votre code PIN';

  @override
  String get pleaseEnterYourUsername => 'Renseignez votre nom d\'utilisateur·ice';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Veuillez suivre les instructions sur le site et appuyer sur Suivant.';

  @override
  String get privacy => 'Vie privée';

  @override
  String get publicRooms => 'Salons publics';

  @override
  String get pushRules => 'Règles de notifications';

  @override
  String get reason => 'Motif';

  @override
  String get recording => 'Enregistrement';

  @override
  String redactedBy(String username) {
    return 'Modifié par $username';
  }

  @override
  String get directChat => 'Discussion directe';

  @override
  String redactedByBecause(String username, String reason) {
    return 'Modifié par $username car : \"$reason\"';
  }

  @override
  String redactedAnEvent(String username) {
    return '$username a supprimé un évènement';
  }

  @override
  String get redactMessage => 'Supprimer un message';

  @override
  String get register => 'S\'inscrire';

  @override
  String get reject => 'Refuser';

  @override
  String rejectedTheInvitation(String username) {
    return '$username a refusé l\'invitation';
  }

  @override
  String get rejoin => 'Rejoindre de nouveau';

  @override
  String get removeAllOtherDevices => 'Supprimer tous les autres appareils';

  @override
  String removedBy(String username) {
    return 'Supprimé par $username';
  }

  @override
  String get removeDevice => 'Supprimer l\'appareil';

  @override
  String get unbanFromChat => 'Débannissement de la discussion';

  @override
  String get removeYourAvatar => 'Supprimer votre avatar';

  @override
  String get replaceRoomWithNewerVersion => 'Remplacer le salon par une nouvelle version';

  @override
  String get reply => 'Répondre';

  @override
  String get reportMessage => 'Signaler un message';

  @override
  String get requestPermission => 'Demander la permission';

  @override
  String get roomHasBeenUpgraded => 'Le salon a été mis à niveau';

  @override
  String get roomVersion => 'Version du salon';

  @override
  String get saveFile => 'Enregistrer le fichier';

  @override
  String get search => 'Rechercher';

  @override
  String get security => 'Sécurité';

  @override
  String get recoveryKey => 'Clé de récupération';

  @override
  String get recoveryKeyLost => 'Clé de récupération perdue ?';

  @override
  String seenByUser(String username) {
    return 'Vu par $username';
  }

  @override
  String get send => 'Envoyer';

  @override
  String get sendAMessage => 'Envoyer un message';

  @override
  String get sendAsText => 'Envoyer un texte';

  @override
  String get sendAudio => 'Envoyer un fichier audio';

  @override
  String get sendFile => 'Envoyer un fichier';

  @override
  String get sendImage => 'Envoyer une image';

  @override
  String sendImages(int count) {
    return 'Send $count image';
  }

  @override
  String get sendMessages => 'Envoyer des messages';

  @override
  String get sendOriginal => 'Envoyer le fichier original';

  @override
  String get sendSticker => 'Envoyer un autocollant';

  @override
  String get sendVideo => 'Envoyer une vidéo';

  @override
  String sentAFile(String username) {
    return '📁 $username a envoyé un fichier';
  }

  @override
  String sentAnAudio(String username) {
    return '🎤 $username a envoyé un fichier audio';
  }

  @override
  String sentAPicture(String username) {
    return '🖼️ $username a envoyé une image';
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
    return '$senderName a envoyé des informations sur l\'appel';
  }

  @override
  String get separateChatTypes => 'Séparer les discussions directes et les groupes';

  @override
  String get setAsCanonicalAlias => 'Définir comme adresse principale';

  @override
  String get setCustomEmotes => 'Définir des émoticônes personnalisées';

  @override
  String get setChatDescription => 'Définir la description de la discussion';

  @override
  String get setInvitationLink => 'Créer un lien d\'invitation';

  @override
  String get setPermissionsLevel => 'Définir le niveau de permissions';

  @override
  String get setStatus => 'Définir le statut';

  @override
  String get settings => 'Paramètres';

  @override
  String get share => 'Partager';

  @override
  String sharedTheLocation(String username) {
    return '$username a partagé sa position';
  }

  @override
  String get shareLocation => 'Partager la localisation';

  @override
  String get showPassword => 'Afficher le mot de passe';

  @override
  String get presenceStyle => 'Statut :';

  @override
  String get presencesToggle => 'Afficher les messages de statut des autres utilisateurs/trices';

  @override
  String get singlesignon => 'Authentification unique';

  @override
  String get skip => 'Ignorer';

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
  String get synchronizingPleaseWait => 'Synchronisation... Veuillez patienter.';

  @override
  String synchronizingPleaseWaitCounter(String percentage) {
    return ' Synchronisation… ($percentage %)';
  }

  @override
  String get systemTheme => 'Système';

  @override
  String get theyDontMatch => 'Elles ne correspondent pas';

  @override
  String get theyMatch => 'Elles correspondent';

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Activer/désactiver en favori';

  @override
  String get toggleMuted => 'Activer/désactiver la sourdine';

  @override
  String get toggleUnread => 'Marquer comme lu / non lu';

  @override
  String get tooManyRequestsWarning => 'Trop de requêtes. Veuillez réessayer plus tard !';

  @override
  String get transferFromAnotherDevice => 'Transfert à partir d\'un autre appareil';

  @override
  String get tryToSendAgain => 'Retenter l\'envoi';

  @override
  String get unavailable => 'Indisponible';

  @override
  String unbannedUser(String username, String targetName) {
    return '$username a annulé le bannissement de $targetName';
  }

  @override
  String get unblockDevice => 'Retirer le blocage sur l\'appareil';

  @override
  String get unknownDevice => 'Appareil inconnu';

  @override
  String get unknownEncryptionAlgorithm => 'Algorithme de chiffrement inconnu';

  @override
  String unknownEvent(String type) {
    return 'Événement de type inconnu : \'$type\'';
  }

  @override
  String get unmuteChat => 'Retirer la sourdine de la discussion';

  @override
  String get unpin => 'Désépingler';

  @override
  String unreadChats(int unreadCount) {
    String _temp0 = intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount discussions non lues',
      one: '1 discussion non lue',
    );
    return '$_temp0';
  }

  @override
  String userAndOthersAreTyping(String username, int count) {
    return '$username et $count autres sont en train d\'écrire…';
  }

  @override
  String userAndUserAreTyping(String username, String username2) {
    return '$username et $username2 sont en train d\'écrire…';
  }

  @override
  String userIsTyping(String username) {
    return '$username est en train d\'écrire…';
  }

  @override
  String userLeftTheChat(String username) {
    return '🚪 $username a quitté la discussion';
  }

  @override
  String get username => 'Nom d\'utilisateur·ice';

  @override
  String userSentUnknownEvent(String username, String type) {
    return '$username a envoyé un évènement de type $type';
  }

  @override
  String get unverified => 'Non vérifié';

  @override
  String get verified => 'Vérifié';

  @override
  String get verify => 'Vérifier';

  @override
  String get verifyStart => 'Commencer la vérification';

  @override
  String get verifySuccess => 'La vérification a été effectuée avec succès !';

  @override
  String get verifyTitle => 'Vérification de l\'autre compte';

  @override
  String get videoCall => 'Appel vidéo';

  @override
  String get visibilityOfTheChatHistory => 'Visibilité de l\'historique de la discussion';

  @override
  String get visibleForAllParticipants => 'Visible pour tous les participant·es';

  @override
  String get visibleForEveryone => 'Visible pour tout le monde';

  @override
  String get voiceMessage => 'Message vocal';

  @override
  String get waitingPartnerAcceptRequest => 'En attente de l\'acceptation de la demande par le partenaire…';

  @override
  String get waitingPartnerEmoji => 'En attente de l\'acceptation de l\'émoji par le partenaire…';

  @override
  String get waitingPartnerNumbers => 'En attente de l\'acceptation des nombres par le partenaire…';

  @override
  String get wallpaper => 'Image de fond :';

  @override
  String get warning => 'Attention !';

  @override
  String get weSentYouAnEmail => 'Nous vous avons envoyé un courriel';

  @override
  String get whoCanPerformWhichAction => 'Qui peut faire quelle action';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Qui est autorisé·e à rejoindre ce groupe';

  @override
  String get whyDoYouWantToReportThis => 'Pourquoi voulez-vous le signaler ?';

  @override
  String get wipeChatBackup => 'Effacer la sauvegarde de votre discussion pour créer une nouvelle clé de récupération ?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Grâce à ces adresses, vous pouvez récupérer votre mot de passe si vous en avez besoin.';

  @override
  String get writeAMessage => 'Écrivez un message…';

  @override
  String get yes => 'Oui';

  @override
  String get you => 'Vous';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Vous ne participez plus à cette discussion';

  @override
  String get youHaveBeenBannedFromThisChat => 'Vous avez été banni·e de cette discussion';

  @override
  String get yourPublicKey => 'Votre clé publique';

  @override
  String get messageInfo => 'Informations sur le message';

  @override
  String get time => 'Heure';

  @override
  String get messageType => 'Type de message';

  @override
  String get sender => 'Expéditeur/trice';

  @override
  String get openGallery => 'Ouvrir dans la Galerie';

  @override
  String get removeFromSpace => 'Supprimer de l’espace';

  @override
  String get addToSpaceDescription => 'Sélectionnez un espace pour y ajouter cette discussion.';

  @override
  String get start => 'Commencer';

  @override
  String get pleaseEnterRecoveryKeyDescription => 'Pour déverrouiller vos anciens messages, veuillez entrer votre clé de récupération qui a été générée lors d\'une session précédente. Votre clé de récupération n\'est PAS votre mot de passe.';

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
  String get reportUser => 'Signaler l\'utilisateur/trice';

  @override
  String get dismiss => 'Rejeter';

  @override
  String reactedWith(String sender, String reaction) {
    return '$sender a réagi avec $reaction';
  }

  @override
  String get pinMessage => 'Épingler au salon';

  @override
  String get confirmEventUnpin => 'Voulez-vous vraiment désépingler définitivement l\'événement ?';

  @override
  String get emojis => 'Émojis';

  @override
  String get placeCall => 'Passer un appel';

  @override
  String get voiceCall => 'Appel vocal';

  @override
  String get unsupportedAndroidVersion => 'Version d\'Android non prise en charge';

  @override
  String get unsupportedAndroidVersionLong => 'Cette fonctionnalité nécessite une nouvelle version d\'Android. Veuillez vérifier les mises à jour ou la prise en charge de Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'Veuillez noter que les appels vidéo sont actuellement en version bêta. Ils peuvent ne pas fonctionner comme prévu ou ne oas fonctionner du tout sur toutes les plateformes.';

  @override
  String get experimentalVideoCalls => 'Appels vidéo expérimentaux';

  @override
  String get emailOrUsername => 'Courriel ou identifiant';

  @override
  String get indexedDbErrorTitle => 'Problèmes relatifs au mode privé';

  @override
  String get indexedDbErrorLong => 'Le stockage des messages n\'est malheureusement pas activé par défaut en mode privé.\nVeuillez consulter :\n - about:config\n - Définir dom.indexedDB.privateBrowsing.enabled à « vrai ».\nSinon, il n\'est pas possible d\'exécuter FluffyChat.';

  @override
  String switchToAccount(String number) {
    return 'Passer au compte $number';
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
  String get widgetEtherpad => 'Note textuelle';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Personnalisé';

  @override
  String get widgetName => 'Nom';

  @override
  String get widgetUrlError => 'Ceci n\'est pas un lien valide.';

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
    return '📩 Vous avez été invité par lien à :\n$alias';
  }

  @override
  String youInvitedBy(String user) {
    return '📩 Vous avez été invité par $user';
  }

  @override
  String invitedBy(String user) {
    return '📩 Invitation par $user';
  }

  @override
  String youInvitedUser(String user) {
    return '📩 Vous avez invité $user';
  }

  @override
  String youKicked(String user) {
    return '👞 Vous avez dégagé $user';
  }

  @override
  String youKickedAndBanned(String user) {
    return '🙅 Vous avez dégagé et banni $user';
  }

  @override
  String youUnbannedUser(String user) {
    return 'Vous avez débanni $user';
  }

  @override
  String hasKnocked(String user) {
    return '🚪 $user a frappé';
  }

  @override
  String get usersMustKnock => 'Les utilisateurs/trices doivent frapper';

  @override
  String get noOneCanJoin => 'Personne ne peut rejoindre';

  @override
  String userWouldLikeToChangeTheChat(String user) {
    return '$user souhaite rejoindre la discussion.';
  }

  @override
  String get noPublicLinkHasBeenCreatedYet => 'Aucun lien public n\'a encore été crée';

  @override
  String get knock => 'Frapper à la porte';

  @override
  String get users => 'Utilisateurs/trices';

  @override
  String get unlockOldMessages => 'Déverrouiller les anciens messages';

  @override
  String get storeInSecureStorageDescription => 'Stocker la clé de récupération dans un espace sécurisé de cet appareil.';

  @override
  String get saveKeyManuallyDescription => 'Enregistrer cette clé manuellement en déclenchant la boîte de dialogue de partage du système ou le presse-papiers.';

  @override
  String get storeInAndroidKeystore => 'Stocker dans Android KeyStore';

  @override
  String get storeInAppleKeyChain => 'Stocker dans Apple KeyChain';

  @override
  String get storeSecurlyOnThisDevice => 'Stocker de manière sécurisé sur cet appareil';

  @override
  String countFiles(int count) {
    return '$count fichiers';
  }

  @override
  String get user => 'Utilisateur/trice';

  @override
  String get custom => 'Personnalisé';

  @override
  String get foregroundServiceRunning => 'Cette notification s’affiche lorsque le service au premier plan est en cours d’exécution.';

  @override
  String get screenSharingTitle => 'Partage d\'écran';

  @override
  String get screenSharingDetail => 'Vous partagez votre écran dans FuffyChat';

  @override
  String get callingPermissions => 'Permissions d\'appel';

  @override
  String get callingAccount => 'Compte d\'appel';

  @override
  String get callingAccountDetails => 'Permet à FluffyChat d\'utiliser l\'application de numérotation native d\'Android.';

  @override
  String get appearOnTop => 'Apparaître en haut';

  @override
  String get appearOnTopDetails => 'Permet à l\'application d\'apparaître en haut de l\'écran (non nécessaire si vous avez déjà configuré Fluffychat comme compte d\'appel)';

  @override
  String get otherCallingPermissions => 'Microphone, caméra et autres autorisations de FluffyChat';

  @override
  String get whyIsThisMessageEncrypted => 'Pourquoi ce message est-il illisible ?';

  @override
  String get noKeyForThisMessage => 'Cela peut se produire si le message a été envoyé avant que vous ne vous soyez connecté à votre compte sur cet appareil.\n\nIl est également possible que l\'expéditeur ait bloqué votre appareil ou qu\'un problème de connexion Internet se soit produit.\n\nÊtes-vous capable de lire le message sur une autre session ? Vous pouvez alors transférer le message à partir de celle-ci ! Allez dans Paramètres > Appareils et assurez-vous que vos appareils se sont vérifiés mutuellement. Lorsque vous ouvrirez le salon la fois suivante et que les deux sessions seront au premier plan, les clés seront transmises automatiquement.\n\nVous ne voulez pas perdre les clés en vous déconnectant ou en changeant d\'appareil ? Assurez-vous que vous avez activé la sauvegarde de la discussion dans les paramètres.';

  @override
  String get newGroup => 'Nouveau groupe';

  @override
  String get newSpace => 'Nouvel espace';

  @override
  String get enterSpace => 'Entrer dans l’espace';

  @override
  String get enterRoom => 'Entrer dans le salon';

  @override
  String get allSpaces => 'Tous les espaces';

  @override
  String numChats(String number) {
    return '$number discussions';
  }

  @override
  String get hideUnimportantStateEvents => 'Masquer les événements d\'état sans importance';

  @override
  String get hidePresences => 'Cacher la liste des statuts ?';

  @override
  String get doNotShowAgain => 'Ne plus afficher';

  @override
  String wasDirectChatDisplayName(String oldDisplayName) {
    return 'Discussion vide (était $oldDisplayName)';
  }

  @override
  String get newSpaceDescription => 'Les espaces vous permettent de consolider vos conversations et de construire des communautés privées ou publiques.';

  @override
  String get encryptThisChat => 'Chiffrer cette discussion';

  @override
  String get disableEncryptionWarning => 'Pour des raisons de sécurité, vous ne pouvez pas désactiver le chiffrement dans une discussion s\'il a été activé avant.';

  @override
  String get sorryThatsNotPossible => 'Désolé, ce n\'est pas possible';

  @override
  String get deviceKeys => 'Clés de l’appareil :';

  @override
  String get reopenChat => 'Rouvrir la discussion';

  @override
  String get noBackupWarning => 'Attention ! Sans l\'activation de la sauvegarde de la discussion, vous perdrez l\'accès à vos messages chiffrés. Il est fortement recommandé d\'activer la sauvegarde de la discussion avant de se déconnecter.';

  @override
  String get noOtherDevicesFound => 'Aucun autre appareil trouvé';

  @override
  String fileIsTooBigForServer(String max) {
    return 'Impossible d\'envoyer ! Le serveur accepte uniquement les pièces jointes jusqu\'à $max.';
  }

  @override
  String fileHasBeenSavedAt(String path) {
    return 'Le fichier a été enregistré dans $path';
  }

  @override
  String get jumpToLastReadMessage => 'Aller au dernier message lu';

  @override
  String get readUpToHere => 'Lisez jusqu’ici';

  @override
  String get jump => 'Sauter';

  @override
  String get openLinkInBrowser => 'Ouvrir le lien dans le navigateur';

  @override
  String get reportErrorDescription => '😭 Oh non. Quelque chose s\'est mal passé. Si vous le souhaitez, vous pouvez signaler ce bogue aux développeurs.';

  @override
  String get report => 'signaler';

  @override
  String get signInWithPassword => 'Se connecter avec mot de passe';

  @override
  String get pleaseTryAgainLaterOrChooseDifferentServer => 'Veuillez réessayer plus tard ou choisir un autre serveur.';

  @override
  String signInWith(String provider) {
    return 'Se connecter avec $provider';
  }

  @override
  String get profileNotFound => 'Cet utilisateur/trice n\'a pu être trouvé sur le serveur. Peut-être est-ce un problème de connexion ou l\'utilisateur/trice n\'existe pas.';

  @override
  String get setTheme => 'Définir le thème :';

  @override
  String get setColorTheme => 'Définir la couleur du thème :';

  @override
  String get invite => 'Inviter';

  @override
  String get inviteGroupChat => '📨 Inviter à une discussion de groupe';

  @override
  String get invitePrivateChat => '📨 Inviter à une discussion privée';

  @override
  String get invalidInput => 'Entrée invalide !';

  @override
  String wrongPinEntered(int seconds) {
    return 'Mauvais code PIN saisi ! Veuillez réessayer dans $seconds secondes...';
  }

  @override
  String get pleaseEnterANumber => 'Veuillez saisir un nombre supérieur à 0';

  @override
  String get archiveRoomDescription => 'La discussion sera déplacée dans les archives. Les autres utilisateurs/trices pourront voir que vous avez quitté la discussion.';

  @override
  String get roomUpgradeDescription => 'La discussion sera alors recréé avec la nouvelle version de salon. Tous les participants seront informés qu\'ils doivent passer à la nouvelle discussion. Pour en savoir plus sur les versions des salons, consultez le site https://spec.matrix.org/latest/rooms/';

  @override
  String get removeDevicesDescription => 'Vous serez déconnecté de cet appareil et ne pourrez plus recevoir de messages.';

  @override
  String get banUserDescription => 'L\'utilisateur/trice sera banni de la discussion et ne pourra plus y accéder jusqu\'à ce qu\'il/elle soit débanni.';

  @override
  String get unbanUserDescription => 'L\'utilisateur/trice pourra entrer à nouveau dans la discussion si il/elle le souhaite.';

  @override
  String get kickUserDescription => 'L\'utilisateur/trice est expulsé de la discussion mais n\'est pas banni. Dans les discussions publiques, l\'utilisateur/trice peut revenir à tout moment.';

  @override
  String get makeAdminDescription => 'Une fois que vous aurez nommé cet utilisateur/trice administrateur, vous ne pourrez peut-être plus annuler cette opération, car il disposera alors des mêmes autorisations que vous.';

  @override
  String get pushNotificationsNotAvailable => 'Notifications poussées indisponibles';

  @override
  String get learnMore => 'En savoir plus';

  @override
  String get yourGlobalUserIdIs => 'Votre identifiant utilisateur global est : ';

  @override
  String noUsersFoundWithQuery(String query) {
    return 'Malheureusement, aucun utilisateur/trice n\'a pu être trouvé avec \"$query\". Veuillez vérifier si vous n\'avez pas fait de faute de frappe.';
  }

  @override
  String get knocking => 'Frapper';

  @override
  String chatCanBeDiscoveredViaSearchOnServer(String server) {
    return 'La discussion peut être découverte via la recherche sur $server';
  }

  @override
  String get searchChatsRooms => 'Rechercher des #discussions, @utilisateurs/trices...';

  @override
  String get nothingFound => 'Rien n\'a été trouvé...';

  @override
  String get groupName => 'Nom du groupe';

  @override
  String get groupDescription => 'Group description';

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
  String get groupTerminationDate => 'Group termination date';

  @override
  String get groupTerminationDateDescription => 'Date after which the objective of the group would have been completed';

  @override
  String get periodicSavingAmount => 'Periodic Saving Amount';

  @override
  String get periodicSavingAmountDescription => 'Amount saved periodically by members of the group';

  @override
  String get finalizeGroupCreation => 'Finalize Create Group';

  @override
  String finalizeGroupCreationDescription(Object groupName) {
    return 'A group with the name $groupName will be created and setup in a moment';
  }

  @override
  String get groupCreationSuccessful => 'Successfully Queued Group Create Request';

  @override
  String groupCreationSuccessfulDescription(Object groupName) {
    return 'The request to create a group with the name $groupName was successful, this will take a moment. \n\n Once created you will need to add all the members to the group by sharing the group link with them or choosing from your contacts';
  }

  @override
  String get createGroupAndInviteUsers => 'Créer un groupe et inviter des utilisateurs/trices';

  @override
  String get groupCanBeFoundViaSearch => 'Le groupe peut être trouvé via la recherche';

  @override
  String get wrongRecoveryKey => 'Désolé... il ne semble pas s\'agir de la bonne clé de récupération.';

  @override
  String get startConversation => 'Démarrer la conversation';

  @override
  String get commandHint_sendraw => 'Envoyer du JSON brut';

  @override
  String get databaseMigrationTitle => 'La base de données est optimisée';

  @override
  String get databaseMigrationBody => 'Veuillez patienter. Cela peut prendre un moment.';

  @override
  String get leaveEmptyToClearStatus => 'Laisser vide pour effacer votre statut.';

  @override
  String get select => 'Sélectionner';

  @override
  String get searchForUsers => 'Rechercher des @utilisateurs/trices...';

  @override
  String get pleaseEnterYourCurrentPassword => 'Veuillez saisir votre mot de passe actuel';

  @override
  String get newPassword => 'Nouveau mot de passe';

  @override
  String get pleaseChooseAStrongPassword => 'Veuillez choisir un mot de passe fort';

  @override
  String get passwordsDoNotMatch => 'Les mots de passe ne correspondent pas';

  @override
  String get passwordIsWrong => 'Votre mot de passe saisi est erroné';

  @override
  String get publicLink => 'Lien public';

  @override
  String get publicChatAddresses => 'Addresses de discussion publiques';

  @override
  String get createNewAddress => 'Créer une nouvelle adresse';

  @override
  String get joinSpace => 'Rejoindre l\'espace';

  @override
  String get publicSpaces => 'Espaces publics';

  @override
  String get addChatOrSubSpace => 'Ajouter une discussion ou un sous-espace';

  @override
  String get subspace => 'Sous-espace';

  @override
  String get decline => 'Refuser';

  @override
  String get thisDevice => 'Cet appareil :';

  @override
  String get initAppError => 'Une erreur est survenue pendant l\'initialisation de l\'application';

  @override
  String get userRole => 'Rôle de l\'utilisateur/trice';

  @override
  String minimumPowerLevel(String level) {
    return '$level est le niveau minimum de droits.';
  }

  @override
  String searchIn(String chat) {
    return 'Rechercher dans la discussion \"$chat\"...';
  }

  @override
  String get searchMore => 'Rechercher davantage...';

  @override
  String get gallery => 'Galerie';

  @override
  String get files => 'Fichiers';

  @override
  String databaseBuildErrorBody(String url, String error) {
    return 'La base de données SQlite ne peut pas être créée. L\'application essaie d\'utiliser la base de données existante pour le moment. Veuillez signaler cette erreur aux développeurs à $url. Le message d\'erreur est le suivant : $error';
  }

  @override
  String sessionLostBody(String url, String error) {
    return 'Votre session est perdue. Veuillez signaler cette erreur aux développeurs à $url. Le message d\'erreur est le suivant : $error';
  }

  @override
  String restoreSessionBody(String url, String error) {
    return 'L\'application tente maintenant de restaurer votre session depuis la sauvegarde. Veuillez signaler cette erreur aux développeurs à $url. Le message d\'erreur est le suivant : $error';
  }

  @override
  String forwardMessageTo(String roomName) {
    return 'Transférer le message à $roomName ?';
  }

  @override
  String get sendReadReceipts => 'Envoyer des accusés de réception';

  @override
  String get sendTypingNotificationsDescription => 'Les autres participants à une discussion peuvent voir que vous êtes en train de taper un nouveau message.';

  @override
  String get sendReadReceiptsDescription => 'Les autres participants à une discussion peuvent voir si vous avez lu un message.';

  @override
  String get formattedMessages => 'Messages formatés';

  @override
  String get formattedMessagesDescription => 'Affichez le contenu formaté des messages comme du texte en gras à l\'aide de markdown.';

  @override
  String get verifyOtherUser => '🔐 Vérifier l\'autre utilisateur/trice';

  @override
  String get verifyOtherUserDescription => 'Si vous vérifiez un autre utilisateur/trice, vous pouvez être sûr de savoir à qui vous écrivez réellement. 💪\n\nLorsque vous lancez une vérification, vous et l\'autre utilisateur/trice verrez une fenêtre contextuelle dans l\'application. Vous y verrez alors une série d\'émoticônes ou de chiffres que vous devrez comparer.\n\nLa meilleure façon de procéder est de se rencontrer ou de lancer un appel vidéo. 👭';

  @override
  String get verifyOtherDevice => '🔐 Vérifier l\'autre appareil';

  @override
  String get verifyOtherDeviceDescription => 'Lorsque vous vérifiez un autre appareil, ces appareils peuvent échanger des clés, ce qui augmente votre sécurité globale. 💪 Lorsque vous lancez une vérification, une fenêtre contextuelle s\'affiche dans l\'application sur les deux appareils. Vous y verrez alors une série d\'émoticônes ou de chiffres que vous devrez comparer. Il est préférable d\'avoir les deux appareils à portée de main avant de lancer la vérification. 🤳';

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
    return '$sender a lancé la vérification de clé';
  }

  @override
  String get transparent => 'Transparent';

  @override
  String get incomingMessages => 'Messages entrants';

  @override
  String get stickers => 'Autocollants';

  @override
  String get discover => 'Découvrir';

  @override
  String get commandHint_ignore => 'Ignorer l\'identifiant Matrix indiqué';

  @override
  String get commandHint_unignore => 'Ne plus ignorer l\'identifiant Matrix indiqué';

  @override
  String unreadChatsInApp(String appname, String unread) {
    return '$appname : $unread discussions non lus';
  }

  @override
  String get noDatabaseEncryption => 'Le chiffrement de la base de données n\'est pas supporté sur cette plateforme';

  @override
  String thereAreCountUsersBlocked(Object count) {
    return 'Actuellement, il y a $count utilisateurs/trices bloqués.';
  }

  @override
  String get restricted => 'Limité';

  @override
  String get knockRestricted => 'Frapper à la porte limité';

  @override
  String goToSpace(Object space) {
    return 'Aller dans l\'espace : $space';
  }

  @override
  String get markAsUnread => 'Marquer comme non lu';

  @override
  String userLevel(int level) {
    return '$level — Membre';
  }

  @override
  String moderatorLevel(int level) {
    return '$level — Modération';
  }

  @override
  String adminLevel(int level) {
    return '$level — Administration';
  }

  @override
  String get changeGeneralChatSettings => 'Modifier les paramètres généraux de la discussion';

  @override
  String get inviteOtherUsers => 'Inviter d\'autres membres dans cette discussion';

  @override
  String get changeTheChatPermissions => 'Modifier les autorisations de cette discussion';

  @override
  String get changeTheVisibilityOfChatHistory => 'Modifier la visibilité de l\'historique de la discussion';

  @override
  String get changeTheCanonicalRoomAlias => 'Modifier l\'adresse publique principale de la discussion';

  @override
  String get sendRoomNotifications => 'Send a @room notifications';

  @override
  String get changeTheDescriptionOfTheGroup => 'Modifier la description de la discussion';

  @override
  String get chatPermissionsDescription => 'Définir quel niveau de pouvoir est nécessaires pour certaines actions dans cette discussion. Les niveaux de pouvoir 0, 50 et 100 représentent généralement les membres, la modération et l\'administration, mais toute gradation est possible.';

  @override
  String updateInstalled(String version) {
    return '🎉 La mise à niveau $version est installée !';
  }

  @override
  String get changelog => 'Journal des modifications';

  @override
  String get sendCanceled => 'Envoi annulé';

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
  String get appIntroduction => 'Create or join groups with the aim of streamlining your finances. Learn more at https://chamamobile.com or just tap *Continue*.';

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
  String get notificationRuleIsRoomMentionDescription => 'Notifies the user when there is a room mention.';

  @override
  String get notificationRuleRoomnotif => 'Room Notification';

  @override
  String get notificationRuleRoomnotifDescription => 'Notifies the user when a message contains \'@room\'.';

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
}
