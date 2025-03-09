// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class L10nHu extends L10n {
  L10nHu([String locale = 'hu']) : super(locale);

  @override
  String get alwaysUse24HourFormat => 'true';

  @override
  String get repeatPassword => 'Jelszó megismétlése';

  @override
  String get notAnImage => 'Nem kép fájl.';

  @override
  String get remove => 'Eltávolítás';

  @override
  String get importNow => 'Importálás most';

  @override
  String get importEmojis => 'Emojik importálása';

  @override
  String get importFromZipFile => 'Importálás zip fájlból';

  @override
  String get exportEmotePack => 'Emojik exportálása zip-be';

  @override
  String get replace => 'Kicserél';

  @override
  String get about => 'Névjegy';

  @override
  String aboutHomeserver(String homeserver) {
    return 'About $homeserver';
  }

  @override
  String get accept => 'Elfogadás';

  @override
  String acceptedTheInvitation(String username) {
    return '👍 $username elfogadta a meghívást';
  }

  @override
  String get account => 'Fiók';

  @override
  String activatedEndToEndEncryption(String username) {
    return '🔐 $username aktiválta a végpontok közötti titkosítást';
  }

  @override
  String get addEmail => 'E-mail-cím hozzáadása';

  @override
  String get confirmMatrixId => 'A fiók törléséhez adja meg a Matrix ID-t.';

  @override
  String supposedMxid(String mxid) {
    return '$mxid-nek kell lennie';
  }

  @override
  String get addChatDescription => 'Chat leírás hozzáadása...';

  @override
  String get addToSpace => 'Hozzáadás térhez';

  @override
  String get admin => 'Admin';

  @override
  String get alias => 'álnév';

  @override
  String get all => 'Összes';

  @override
  String get allChats => 'Összes csevegés';

  @override
  String get commandHint_googly => 'Gülüszemek küldése';

  @override
  String get commandHint_cuddle => 'Összebújás küldése';

  @override
  String get commandHint_hug => 'Ölelés küldése';

  @override
  String googlyEyesContent(String senderName) {
    return '$senderName gülüszemeket küld';
  }

  @override
  String cuddleContent(String senderName) {
    return '$senderName hozzád bújik';
  }

  @override
  String hugContent(String senderName) {
    return '$senderName megölelt';
  }

  @override
  String answeredTheCall(String senderName) {
    return '$senderName felvette a hívást';
  }

  @override
  String get anyoneCanJoin => 'Bárki csatlakozhat';

  @override
  String get appLock => 'Alkalmazás zár';

  @override
  String get appLockDescription => 'Alkalmazás zárolása PIN-kód használat hiányában';

  @override
  String get archive => 'Archívum';

  @override
  String get areGuestsAllowedToJoin => 'Csatlakozhatnak-e vendégek';

  @override
  String get areYouSure => 'Biztos benne?';

  @override
  String get areYouSureYouWantToLogout => 'Biztosan kijelentkezik?';

  @override
  String get askSSSSSign => 'A másik fél igazolásához meg kell adni a biztonságos tároló jelmondatát vagy a visszaállítási kulcsot.';

  @override
  String askVerificationRequest(String username) {
    return 'Elfogadja $username hitelesítési kérelmét?';
  }

  @override
  String get autoplayImages => 'Animált matricák és hangulatjelek automatikus lejátszása';

  @override
  String badServerLoginTypesException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'A kiszolgáló a következő bejelentkezéseket támogatja:\n$serverVersions\nDe ez az alkalmazást csak ezeket támogatja:\n$supportedVersions';
  }

  @override
  String get sendTypingNotifications => 'Gépelési infó megjelenítése';

  @override
  String get swipeRightToLeftToReply => 'Húzza balra a válaszoláshoz';

  @override
  String get sendOnEnter => 'Küldés Enterrel';

  @override
  String badServerVersionsException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'A Matrix szerver ezeket a specifikáció verziókat támogatja:\n$serverVersions\nAzonban ez az app csak ezeket: $supportedVersions';
  }

  @override
  String countChatsAndCountParticipants(int chats, int participants) {
    return '$chats csevegések és $participants résztvevők';
  }

  @override
  String get noMoreChatsFound => 'Nincs több csevegés...';

  @override
  String get noChatsFoundHere => 'Itt még nincs csevegés. Kezdjen újat valakivel a lentebbi gombbal. ⤵️';

  @override
  String get joinedChats => 'Csatlakozott csevegések';

  @override
  String get unread => 'Olvasatlan';

  @override
  String get space => 'Tér';

  @override
  String get spaces => 'Terek';

  @override
  String get banFromChat => 'Kitiltás csevegésből';

  @override
  String get banned => 'Kitiltva';

  @override
  String bannedUser(String username, String targetName) {
    return '$username kitiltotta: $targetName';
  }

  @override
  String get blockDevice => 'Eszköz blokkolása';

  @override
  String get blocked => 'Blokkolva';

  @override
  String get botMessages => 'Bot üzenetek';

  @override
  String get cancel => 'Mégse';

  @override
  String cantOpenUri(String uri) {
    return 'Nem sikerült az URI megnyitása: $uri';
  }

  @override
  String get changeDeviceName => 'Eszköznév módosítása';

  @override
  String changedTheChatAvatar(String username) {
    return '$username módosította a csevegési profilképét';
  }

  @override
  String changedTheChatDescriptionTo(String username, String description) {
    return '$username módosította a csevegés leírását erre: \'$description\'';
  }

  @override
  String changedTheChatNameTo(String username, String chatname) {
    return '$username módosította a csevegés nevét erre: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(String username) {
    return '$username módosította a csevegési engedélyeket';
  }

  @override
  String changedTheDisplaynameTo(String username, String displayname) {
    return '$username módosította a megjelenített nevét erre: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(String username) {
    return '$username módosította a vendégek hozzáférési szabályokat';
  }

  @override
  String changedTheGuestAccessRulesTo(String username, String rules) {
    return '$username módosította a vendégek hozzáférési szabályait erre: $rules';
  }

  @override
  String changedTheHistoryVisibility(String username) {
    return '$username módosította az előzmények láthatóságát';
  }

  @override
  String changedTheHistoryVisibilityTo(String username, String rules) {
    return '$username módosította az előzmények láthatóságát erre: $rules';
  }

  @override
  String changedTheJoinRules(String username) {
    return '$username módosított a csatlakozási szabályokat';
  }

  @override
  String changedTheJoinRulesTo(String username, String joinRules) {
    return '$username módosította a csatlakozási szabályokat erre: $joinRules';
  }

  @override
  String changedTheProfileAvatar(String username) {
    return '$username módosította a profilképét';
  }

  @override
  String changedTheRoomAliases(String username) {
    return '$username módosította a szoba álneveit';
  }

  @override
  String changedTheRoomInvitationLink(String username) {
    return '$username módosította a meghívó hivatkozást';
  }

  @override
  String get changePassword => 'Jelszó módosítása';

  @override
  String get changeTheHomeserver => 'Matrix-kiszolgáló váltás';

  @override
  String get changeTheme => 'Stílus módosítása';

  @override
  String get changeTheNameOfTheGroup => 'Csoport nevének módosítása';

  @override
  String get changeYourAvatar => 'Profilkép módosítása';

  @override
  String get channelCorruptedDecryptError => 'A titkosítás megsérült';

  @override
  String get chat => 'Csevegés';

  @override
  String get yourChatBackupHasBeenSetUp => 'A beszélgetések mentése be lett állítva.';

  @override
  String get chatBackup => 'Beszélgetések mentése';

  @override
  String get chatBackupDescription => 'A régebbi beszélgetései egy biztonsági kulccsal vannak védve. Bizonyosodjon meg róla, hogy nem veszíti el.';

  @override
  String get chatDetails => 'Csevegés részletei';

  @override
  String get chatHasBeenAddedToThisSpace => 'A beszélgetés hozzá lett adva ehhez a térhez';

  @override
  String get chats => 'Csevegések';

  @override
  String get chooseAStrongPassword => 'Válasszon egy erős jelszót';

  @override
  String get clearArchive => 'Archívum törlése';

  @override
  String get close => 'Bezárás';

  @override
  String get commandHint_markasdm => 'Szoba megjelölése mint közvetlen csevegő szoba az adott Matrix ID-nél';

  @override
  String get commandHint_markasgroup => 'Csoportnak jelölés';

  @override
  String get commandHint_ban => 'Felhasználó kitiltása ebből a szobából';

  @override
  String get commandHint_clearcache => 'Gyorsítótár törlése';

  @override
  String get commandHint_create => 'Egy üres csevegő csoport létrehozása\nA --no-encryption kapcsolóval titkosítatlan szoba hozható létre';

  @override
  String get commandHint_discardsession => 'Munkamenet elvetése';

  @override
  String get commandHint_dm => 'Közvetlen csevegés indítása\nA --no-encryption kapcsolóval titkosítatlan beszélgetést hozhat létre';

  @override
  String get commandHint_html => 'HTML formázott üzenet küldése';

  @override
  String get commandHint_invite => 'Adott felhasználó meghívása ebbe a szobába';

  @override
  String get commandHint_join => 'Csatlakozás a megadott szobához';

  @override
  String get commandHint_kick => 'A megadott felhasználó kirúgása a szobából';

  @override
  String get commandHint_leave => 'Szoba elhagyása';

  @override
  String get commandHint_me => 'Jellemezd magad';

  @override
  String get commandHint_myroomavatar => 'Az ebben a szobában megjelenített profilképed megváltoztatása (mxc URI használatával)';

  @override
  String get commandHint_myroomnick => 'Az ebben a szobában megjelenített neved megváltoztatása';

  @override
  String get commandHint_op => 'Az adott felhasználó hozzáférési szintjének megadása (alapértelmezett: 50)';

  @override
  String get commandHint_plain => 'Formázatlan szöveg küldése';

  @override
  String get commandHint_react => 'Válasz küldése reakcióként';

  @override
  String get commandHint_send => 'Szöveg küldése';

  @override
  String get commandHint_unban => 'Adott felhasználó kitiltásának feloldása a szobához';

  @override
  String get commandInvalid => 'Érvénytelen parancs';

  @override
  String commandMissing(String command) {
    return '$command nem egy parancs.';
  }

  @override
  String get compareEmojiMatch => 'Hasonlítsa össze az emojikat';

  @override
  String get compareNumbersMatch => 'Kérem hasonlítsa össze a számokat';

  @override
  String get configureChat => 'Csevegés konfigurálása';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get connect => 'Csatlakozás';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Meghívta ismerősét a csoportba';

  @override
  String get containsDisplayName => 'Tartalmazza a megjelenített nevet';

  @override
  String get containsUserName => 'Tartalmazza a felhasználónevet';

  @override
  String get contentHasBeenReported => 'A tartalom jelentve lett a szerver üzemeltetőinek';

  @override
  String get copiedToClipboard => 'Vágólapra másolva';

  @override
  String get copy => 'Másolás';

  @override
  String get copyToClipboard => 'Vágólapra másolás';

  @override
  String couldNotDecryptMessage(String error) {
    return 'Nem sikerült visszafejteni az üzenetet: $error';
  }

  @override
  String countParticipants(int count) {
    return '$count résztvevő';
  }

  @override
  String get create => 'Létrehozás';

  @override
  String createdTheChat(String username) {
    return '💬 $username csevegést hozott létre';
  }

  @override
  String get createGroup => 'Csoport létrehozása';

  @override
  String get createNewSpace => 'Új tér';

  @override
  String get currentlyActive => 'Jelenleg aktív';

  @override
  String get darkTheme => 'Sötét';

  @override
  String dateAndTimeOfDay(String date, String timeOfDay) {
    return '$date, $timeOfDay';
  }

  @override
  String dateWithoutYear(String month, String day) {
    return '$month. $day.';
  }

  @override
  String dateWithYear(String year, String month, String day) {
    return '$year. $month. $day.';
  }

  @override
  String get deactivateAccountWarning => 'Ez deaktiválja a felhasználói fiókját. Ez nem vonható vissza! Biztos benne?';

  @override
  String get defaultPermissionLevel => 'Alapértelmezett hozzáférési szint új felhasználóknak';

  @override
  String get delete => 'Törlés';

  @override
  String get deleteAccount => 'Fiók törlése';

  @override
  String get deleteMessage => 'Üzenet törlése';

  @override
  String get device => 'Eszköz';

  @override
  String get deviceId => 'Eszköz ID';

  @override
  String get devices => 'Eszközök';

  @override
  String get directChats => 'Közvetlen csevegések';

  @override
  String get allRooms => 'Minden csoport csevegés';

  @override
  String get displaynameHasBeenChanged => 'Megjelenítési név megváltozott';

  @override
  String get downloadFile => 'Fájl letöltése';

  @override
  String get edit => 'Szerkeszt';

  @override
  String get editBlockedServers => 'Blokkolt szerverek szerkesztése';

  @override
  String get chatPermissions => 'Csevegés engedélyek';

  @override
  String get editDisplayname => 'Megjelenítési név szerkesztése';

  @override
  String get editRoomAliases => 'Szoba álnevek szerkesztése';

  @override
  String get editRoomAvatar => 'Szoba profilképének szerkesztése';

  @override
  String get emoteExists => 'A hangulatjel már létezik!';

  @override
  String get emoteInvalid => 'Érvénytelen emoji rövidkód!';

  @override
  String get emoteKeyboardNoRecents => 'Nemrég használt emojik fognak itt megjelenni...';

  @override
  String get emotePacks => 'Emoji csomagok a szobához';

  @override
  String get emoteSettings => 'Emoji Beállítások';

  @override
  String get globalChatId => 'Globális csevegő azonosító';

  @override
  String get accessAndVisibility => 'Hozzáférés és láthatóság';

  @override
  String get accessAndVisibilityDescription => 'Kinek engedélyezett a csevegéshez való csatlakozás és a csevegést hogyan lehet megtalálni.';

  @override
  String get calls => 'Hívások';

  @override
  String get customEmojisAndStickers => 'Egyedi emotikonok és matricák';

  @override
  String get customEmojisAndStickersBody => 'Egyedi emotikonok és matricák létrehozása, amelyek bármely csevegésben használhatóak.';

  @override
  String get emoteShortcode => 'Emoji rövidkód';

  @override
  String get emoteWarnNeedToPick => 'Az emojihoz egy képet és egy rövidkódot kell választani!';

  @override
  String get emptyChat => 'Üres csevegés';

  @override
  String get enableEmotesGlobally => 'Emoji csomag engedélyezése globálisan';

  @override
  String get enableEncryption => 'Titkosítás engedélyezése';

  @override
  String get enableEncryptionWarning => 'Többé nem fogja tudni kikapcsolni a titkosítást. Biztos benne?';

  @override
  String get encrypted => 'Titkosított';

  @override
  String get encryption => 'Titkosítás';

  @override
  String get encryptionNotEnabled => 'Titkosítás nincs engedélyezve';

  @override
  String endedTheCall(String senderName) {
    return '$senderName befejezte a hívást';
  }

  @override
  String get enterAnEmailAddress => 'Adjon meg egy email címet';

  @override
  String get homeserver => 'Matrix szerver';

  @override
  String get enterYourHomeserver => 'Adja meg a Matrix-kiszolgálót';

  @override
  String errorObtainingLocation(String error) {
    return 'Hiba a tartózkodási hely meghatározása közben: $error';
  }

  @override
  String get everythingReady => 'Minden kész!';

  @override
  String get extremeOffensive => 'Rendkívül sértő';

  @override
  String get fileName => 'Fájlnév';

  @override
  String get fluffychat => 'FluffyChat';

  @override
  String get fontSize => 'Betűméret';

  @override
  String get forward => 'Továbbítás';

  @override
  String get fromJoining => 'Csatlakozás óta';

  @override
  String get fromTheInvitation => 'Meghívás óta';

  @override
  String get goToTheNewRoom => 'Új szoba megnyitása';

  @override
  String get group => 'Csoport';

  @override
  String get chatDescription => 'Csevegés leírás';

  @override
  String get chatDescriptionHasBeenChanged => 'Csevegés leírás megváltozott';

  @override
  String get groupIsPublic => 'A csoport nyilvános';

  @override
  String get groups => 'Csoportok';

  @override
  String groupWith(String displayname) {
    return 'Csoport $displayname-al';
  }

  @override
  String get guestsAreForbidden => 'Nem lehetnek vendégek';

  @override
  String get guestsCanJoin => 'Csatlakozhatnak vendégek';

  @override
  String hasWithdrawnTheInvitationFor(String username, String targetName) {
    return '$username visszavonta $targetName meghívását';
  }

  @override
  String get help => 'Súgó';

  @override
  String get hideRedactedEvents => 'Visszavont események elrejtése';

  @override
  String get hideRedactedMessages => 'Szerkesztett üzenetek elrejtése';

  @override
  String get hideRedactedMessagesBody => 'Ha valaki szerkeszti az üzenetét, ez az üzenet nem jelenik meg a csevegés során.';

  @override
  String get hideInvalidOrUnknownMessageFormats => 'Érvénytelen vagy ismeretlen üzenetformátum elrejtése';

  @override
  String get howOffensiveIsThisContent => 'Mennyire sértő ez a tartalom?';

  @override
  String get id => 'ID';

  @override
  String get identity => 'Azonosító';

  @override
  String get block => 'Blokkolás';

  @override
  String get blockedUsers => 'Blokkolt felhasználók';

  @override
  String get blockListDescription => 'Az Önt zavaró felhasználókat blokkolhatja. A blokkolt listán található felhasználóktól nem tud fogadni üzenetet vagy szoba meghívást.';

  @override
  String get blockUsername => 'Felhasználónév mellőzése';

  @override
  String get iHaveClickedOnLink => 'Rákattintottam a linkre';

  @override
  String get incorrectPassphraseOrKey => 'Hibás jelmondat vagy visszaállítási kulcs';

  @override
  String get inoffensive => 'Nem sértő';

  @override
  String get inviteContact => 'Ismerős meghívása';

  @override
  String inviteContactToGroupQuestion(Object contact, Object groupName) {
    return 'Meg kívánja hívni $contact-ot a \"$groupName\" csevegő csoportba?';
  }

  @override
  String inviteContactToGroup(String groupName) {
    return 'Ismerős meghívása a(z) $groupName csoportba';
  }

  @override
  String get noChatDescriptionYet => 'Még nincs csevegő szoba leírás.';

  @override
  String get tryAgain => 'Próbálja újra';

  @override
  String get invalidServerName => 'Hibás szerver név';

  @override
  String get invited => 'Meghívott';

  @override
  String get redactMessageDescription => 'A társalgásban összes résztvevője számára módosításra kerül az üzenet. Ez nem visszavonható.';

  @override
  String get optionalRedactReason => '(Tetszőleges) A szerkesztés oka...';

  @override
  String invitedUser(String username, String targetName) {
    return '📩 $username meghívta $targetName-t';
  }

  @override
  String get invitedUsersOnly => 'Csak meghívott felhasználók';

  @override
  String get inviteForMe => 'Meghívás nekem';

  @override
  String inviteText(String username, String link) {
    return '$username meghívott a FluffyChat-be.\n1. Keresse fel a fluffychat.im oldalt, és telepítse az alkalmazást \n2. Regisztráljon vagy jelentkezzen be \n3. Nyissa meg a meghívó linket: \n $link';
  }

  @override
  String get isTyping => 'gépel…';

  @override
  String joinedTheChat(String username) {
    return '👋 $username csatlakozott a csevegéshez';
  }

  @override
  String get joinRoom => 'Csatlakozás a szobához';

  @override
  String kicked(String username, String targetName) {
    return '👞 $username kirúgta $targetName-t';
  }

  @override
  String kickedAndBanned(String username, String targetName) {
    return '🙅 $username kirúgta és kitiltotta $targetName-t';
  }

  @override
  String get kickFromChat => 'Kirúgás a csevegésből';

  @override
  String lastActiveAgo(String localizedTimeShort) {
    return 'Utoljára aktív: $localizedTimeShort';
  }

  @override
  String get leave => 'Elhagyás';

  @override
  String get leftTheChat => 'Elhagyta a csevegést';

  @override
  String get license => 'Licensz';

  @override
  String get lightTheme => 'Világos';

  @override
  String loadCountMoreParticipants(int count) {
    return 'További $count résztvevő betöltése';
  }

  @override
  String get dehydrate => 'Munkamenet exportálása és az eszköz törlése';

  @override
  String get dehydrateWarning => 'Ez nem visszavonható. Bizonyosodjon meg róla, hogy biztonságos helyen tárolja a mentett fájlt.';

  @override
  String get dehydrateTor => 'TOR felhasználók: munkamenet exportálása';

  @override
  String get dehydrateTorLong => 'TOR felhasználóknak ajánlott a munkamenet exportálása az ablak bezárása előtt.';

  @override
  String get hydrateTor => 'TOR felhasználóknak: munkamenet export importálása';

  @override
  String get hydrateTorLong => 'Legutóbb TOR segítségével exportálta korábbi munkamenetét? Gyorsan importálja őket vissza, és folytassa a csevegést.';

  @override
  String get hydrate => 'Visszaállítás mentett fájlból';

  @override
  String get loadingPleaseWait => 'Betöltés… Kérem, várjon.';

  @override
  String get loadMore => 'Továbbiak betöltése…';

  @override
  String get locationDisabledNotice => 'A helymeghatározás ki van kapcsolva. Kérem, kapcsolja be, hogy meg tudja osztani helyzetét.';

  @override
  String get locationPermissionDeniedNotice => 'A helymeghatározás nem engedélyezett az alkalmazás számára. Kérem engedélyezze, hogy meg tudja osztani helyzetét.';

  @override
  String get login => 'Bejelentkezés';

  @override
  String logInTo(String homeserver) {
    return 'Bejelentkezés a(z) $homeserver Matrix-kiszolgálóra';
  }

  @override
  String get logout => 'Kijelentkezés';

  @override
  String get memberChanges => 'Tagsági változások';

  @override
  String get mention => 'Megemlítés';

  @override
  String get messages => 'Üzenetek';

  @override
  String get messagesStyle => 'Üzenetek:';

  @override
  String get moderator => 'Moderátor';

  @override
  String get muteChat => 'Csevegés némítása';

  @override
  String get needPantalaimonWarning => 'Jelenleg a Pantalaimon szükséges a végpontok közötti titkosítás használatához.';

  @override
  String get newChat => 'Új csevegés';

  @override
  String get newMessageInFluffyChat => '💬 Új FluffyChat üzenet';

  @override
  String get newVerificationRequest => 'Új hitelesítési kérelem!';

  @override
  String get next => 'Következő';

  @override
  String get no => 'Nem';

  @override
  String get noConnectionToTheServer => 'Nem elérhető a szerver';

  @override
  String get noEmotesFound => 'Emojik nem elérhetőek. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Csak akkor kapcsolható be a titkosítás, ha a szoba nem nyilvánosan hozzáférhető.';

  @override
  String get noGoogleServicesWarning => 'Úgy tűnik a Firebase Cloud Messaging nem elérhető a készülékén. Ha mégis push értesítéseket kíván kapni, javasoljuk a ntfy telepítését. A ntfy vagy más egyéb Egyesített Push szolgáltató esetében úgy kaphat értesítést, hogy adatai biztonságban maradnak. Letöltheti a ntfy-t a PLayStore-ból, vagy F-Droid-ról is.';

  @override
  String noMatrixServer(String server1, String server2) {
    return '$server1 nem egy Matrix szerver, használja a $server2 szervert inkább?';
  }

  @override
  String get shareInviteLink => 'Meghívó link megosztása';

  @override
  String get scanQrCode => 'QR kód beolvasása';

  @override
  String get none => 'Nincs';

  @override
  String get noPasswordRecoveryDescription => 'Még nem adott meg semmilyen módot a jelszava visszaállítására.';

  @override
  String get noPermission => 'Nincs engedély';

  @override
  String get noRoomsFound => 'Nem találhatóak szobák…';

  @override
  String get notifications => 'Értesítések';

  @override
  String get notificationsEnabledForThisAccount => 'Értesítések bekapcsolása ebben a fiókban';

  @override
  String numUsersTyping(int count) {
    return '$count felhasználó gépel…';
  }

  @override
  String get obtainingLocation => 'Tartózkodási hely lekérése…';

  @override
  String get offensive => 'Sértő';

  @override
  String get offline => 'Offline';

  @override
  String get ok => 'Rendben';

  @override
  String get online => 'Online';

  @override
  String get onlineKeyBackupEnabled => 'Online kulcsmentés engedélyezve';

  @override
  String get oopsPushError => 'Hoppá! Sajnos hiba lépett fel a push értesítések beállításakor.';

  @override
  String get oopsSomethingWentWrong => 'Hoppá, valami hiba lépett fel…';

  @override
  String get openAppToReadMessages => 'Alkalmazás megnyitása az üzenetek elolvasásához';

  @override
  String get openCamera => 'Kamera megnyitása';

  @override
  String get openVideoCamera => 'Kamera megnyitása videóhoz';

  @override
  String get oneClientLoggedOut => 'Az egyik kliense kijelentkezett';

  @override
  String get addAccount => 'Fiók hozzáadása';

  @override
  String get editBundlesForAccount => 'Fiókcsoportok szerkesztése ehhez a fiókhoz';

  @override
  String get addToBundle => 'Hozzáadás fiókcsoporthoz';

  @override
  String get removeFromBundle => 'Eltávolítás a fiókcsoportból';

  @override
  String get bundleName => 'Fiókcsoport neve';

  @override
  String get enableMultiAccounts => '(BÉTA) Több fiók bekapcsolása az eszközön';

  @override
  String get openInMaps => 'Megnyitás térképen';

  @override
  String get link => 'Hivatkozás';

  @override
  String get serverRequiresEmail => 'Ehhez a szerverhez szükséges az email címének visszaigazolása.';

  @override
  String get or => 'Vagy';

  @override
  String get participant => 'Résztvevő';

  @override
  String get passphraseOrKey => 'jelmondat vagy visszaállítási kulcs';

  @override
  String get password => 'Jelszó';

  @override
  String get passwordForgotten => 'Elfelejtett jelszó';

  @override
  String get passwordHasBeenChanged => 'A jelszó módosításra került';

  @override
  String get hideMemberChangesInPublicChats => 'Tag változások elrejtése a publikus csevegésben';

  @override
  String get hideMemberChangesInPublicChatsBody => 'Ne mutassa ha valaki be- vagy kilép a csevegésből az olvashatóság javítása végett.';

  @override
  String get overview => 'Áttekintés';

  @override
  String get notifyMeFor => 'Értesítsen engem';

  @override
  String get passwordRecoverySettings => 'Jelszó-helyreállítási beállítások';

  @override
  String get passwordRecovery => 'Jelszó visszaállítás';

  @override
  String get people => 'Emberek';

  @override
  String get pickImage => 'Kép választása';

  @override
  String get pin => 'Rögzítés';

  @override
  String play(String fileName) {
    return '$fileName lejátszása';
  }

  @override
  String get pleaseChoose => 'Kérjük válasszon';

  @override
  String get pleaseChooseAPasscode => 'Kérem válasszon egy kódot';

  @override
  String get pleaseClickOnLink => 'Kérem kattintson a linkre az emailben, és folytassa a műveletet.';

  @override
  String get pleaseEnter4Digits => 'Írjon be 4 számjegyet, vagy hagyja üresen a zár kikapcsolásához.';

  @override
  String get pleaseEnterRecoveryKey => 'Kérem adja meg a visszaállító kódját:';

  @override
  String get pleaseEnterYourPassword => 'Kérem adja meg jelszavát';

  @override
  String get pleaseEnterYourPin => 'Írja be PIN kódját';

  @override
  String get pleaseEnterYourUsername => 'Adja meg a felhasználónevét';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Kérem kövesse az instrukciókat az oldalon, és nyomjon a tovább gombra.';

  @override
  String get privacy => 'Adatvédelem';

  @override
  String get publicRooms => 'Nyilvános szobák';

  @override
  String get pushRules => 'Push szabályok';

  @override
  String get reason => 'Indok';

  @override
  String get recording => 'Felvétel';

  @override
  String redactedBy(String username) {
    return '$username által szerkesztve';
  }

  @override
  String get directChat => 'Közvetlen csevegés';

  @override
  String redactedByBecause(String username, String reason) {
    return '$username által szerkesztve, mivel: \"$reason\"';
  }

  @override
  String redactedAnEvent(String username) {
    return '$username visszavont egy eseményt';
  }

  @override
  String get redactMessage => 'Üzenet visszavonása';

  @override
  String get register => 'Regisztráció';

  @override
  String get reject => 'Elutasít';

  @override
  String rejectedTheInvitation(String username) {
    return '$username elutasította a meghívást';
  }

  @override
  String get rejoin => 'Újra csatlakozás';

  @override
  String get removeAllOtherDevices => 'Minden más eszköz eltávolítása';

  @override
  String removedBy(String username) {
    return '$username által törölve';
  }

  @override
  String get removeDevice => 'Eszköz eltávolítása';

  @override
  String get unbanFromChat => 'Csevegés kitiltás feloldása';

  @override
  String get removeYourAvatar => 'Profilkép törlése';

  @override
  String get replaceRoomWithNewerVersion => 'Szoba cserélése egy újabb verzióra';

  @override
  String get reply => 'Válasz';

  @override
  String get reportMessage => 'Üzenet jelentése';

  @override
  String get requestPermission => 'Jogosultság igénylése';

  @override
  String get roomHasBeenUpgraded => 'A szoba frissítve lett';

  @override
  String get roomVersion => 'Szoba verzió';

  @override
  String get saveFile => 'Fájl mentése';

  @override
  String get search => 'Keresés';

  @override
  String get security => 'Biztonság';

  @override
  String get recoveryKey => 'Visszaállító kulcs';

  @override
  String get recoveryKeyLost => 'Elveszett visszaállító kulcs?';

  @override
  String seenByUser(String username) {
    return '$username látta';
  }

  @override
  String get send => 'Küldés';

  @override
  String get sendAMessage => 'Üzenet küldése';

  @override
  String get sendAsText => 'Szövegként küldés';

  @override
  String get sendAudio => 'Hangüzenet küldése';

  @override
  String get sendFile => 'Fájl küldése';

  @override
  String get sendImage => 'Kép küldése';

  @override
  String sendImages(int count) {
    return 'Send $count image';
  }

  @override
  String get sendMessages => 'Üzenetek küldése';

  @override
  String get sendOriginal => 'Eredeti küldése';

  @override
  String get sendSticker => 'Matrica küldése';

  @override
  String get sendVideo => 'Videó küldése';

  @override
  String sentAFile(String username) {
    return '📁 $username küldött egy fájlt';
  }

  @override
  String sentAnAudio(String username) {
    return '🎤 $username hangüzenetet küldött';
  }

  @override
  String sentAPicture(String username) {
    return '🖼️ $username képüzenetet küldött';
  }

  @override
  String sentASticker(String username) {
    return '😊 $username matricát küldött';
  }

  @override
  String sentAVideo(String username) {
    return '🎥 $username videót küldött';
  }

  @override
  String sentCallInformations(String senderName) {
    return '$senderName hívásinformációt küldött';
  }

  @override
  String get separateChatTypes => 'Csoportok és közvetlen üzenetek elkülönítése';

  @override
  String get setAsCanonicalAlias => 'Beállítás mint alapértelmezett álnév';

  @override
  String get setCustomEmotes => 'Egyéni emojik beállítása';

  @override
  String get setChatDescription => 'Csevegés leírás beállítása';

  @override
  String get setInvitationLink => 'Meghívó hivatkozás beállítása';

  @override
  String get setPermissionsLevel => 'Jogok beállítása';

  @override
  String get setStatus => 'Állapot beállítása';

  @override
  String get settings => 'Beállítások';

  @override
  String get share => 'Megosztás';

  @override
  String sharedTheLocation(String username) {
    return '$username megosztotta a pozícióját';
  }

  @override
  String get shareLocation => 'Pozíció megosztása';

  @override
  String get showPassword => 'Jelszó mutatása';

  @override
  String get presenceStyle => 'Jelenlét:';

  @override
  String get presencesToggle => 'Mások státusz üzenetének megjelenítése';

  @override
  String get singlesignon => 'Egyszeri bejelentkezés';

  @override
  String get skip => 'Kihagyás';

  @override
  String get sourceCode => 'Forráskód';

  @override
  String get spaceIsPublic => 'A tér publikus';

  @override
  String get spaceName => 'Tér neve';

  @override
  String startedACall(String senderName) {
    return '$senderName hívást indított';
  }

  @override
  String get startFirstChat => 'Kezdje meg első csevegését';

  @override
  String get status => 'Státusz';

  @override
  String get statusExampleMessage => 'Hogy érzi ma magát?';

  @override
  String get submit => 'Beküldés';

  @override
  String get synchronizingPleaseWait => 'Szinkronizálás...kérem várjon.';

  @override
  String synchronizingPleaseWaitCounter(String percentage) {
    return ' Synchronizing… ($percentage%)';
  }

  @override
  String get systemTheme => 'Rendszer';

  @override
  String get theyDontMatch => 'Nem egyeznek';

  @override
  String get theyMatch => 'Egyeznek';

  @override
  String get title => 'FluffyChat';

  @override
  String get toggleFavorite => 'Kedvencek mutatása';

  @override
  String get toggleMuted => 'Némítottak mutatása';

  @override
  String get toggleUnread => 'Jelölés olvasottként/olvasatlanként';

  @override
  String get tooManyRequestsWarning => 'Túl sok egyidejű kérelem. Kérem próbálja meg később!';

  @override
  String get transferFromAnotherDevice => 'Másik eszközről való átköltözés';

  @override
  String get tryToSendAgain => 'Újraküldés megpróbálása';

  @override
  String get unavailable => 'Nem elérhető';

  @override
  String unbannedUser(String username, String targetName) {
    return '$username feloldotta $targetName kitiltását';
  }

  @override
  String get unblockDevice => 'Eszköz blokkolásának megszüntetése';

  @override
  String get unknownDevice => 'Ismeretlen eszköz';

  @override
  String get unknownEncryptionAlgorithm => 'Ismeretlen titkosítási algoritmus';

  @override
  String unknownEvent(String type) {
    return 'Ismeretlen esemény: \'$type\'';
  }

  @override
  String get unmuteChat => 'Csevegés némítás feloldása';

  @override
  String get unpin => 'Rögzítés megszüntetése';

  @override
  String unreadChats(int unreadCount) {
    String _temp0 = intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount olvasatlan csevegés',
      one: '1 olvasatlan csevegés',
    );
    return '$_temp0';
  }

  @override
  String userAndOthersAreTyping(String username, int count) {
    return '$username és $count másik résztvevő gépel…';
  }

  @override
  String userAndUserAreTyping(String username, String username2) {
    return '$username és $username2 gépel…';
  }

  @override
  String userIsTyping(String username) {
    return '$username gépel…';
  }

  @override
  String userLeftTheChat(String username) {
    return '🚪 $username elhagyta a csevegést';
  }

  @override
  String get username => 'Felhasználónév';

  @override
  String userSentUnknownEvent(String username, String type) {
    return '$username $type eseményt küldött';
  }

  @override
  String get unverified => 'Nem visszaigazolt';

  @override
  String get verified => 'Visszaigazolt';

  @override
  String get verify => 'Hitelesít';

  @override
  String get verifyStart => 'Hitelesítés megkezdése';

  @override
  String get verifySuccess => 'Sikeres hitelesítés!';

  @override
  String get verifyTitle => 'Másik fiók hitelesítése';

  @override
  String get videoCall => 'Videóhívás';

  @override
  String get visibilityOfTheChatHistory => 'Csevegési előzmény láthatósága';

  @override
  String get visibleForAllParticipants => 'Minden résztvevő számára látható';

  @override
  String get visibleForEveryone => 'Bárki számára látható';

  @override
  String get voiceMessage => 'Hangüzenet';

  @override
  String get waitingPartnerAcceptRequest => 'Várakozás a partnerre, hogy elfogadja a kérést…';

  @override
  String get waitingPartnerEmoji => 'Várakozás a partnerre, hogy elfogadja az emojit…';

  @override
  String get waitingPartnerNumbers => 'Várakozás a partnerre, hogy elfogadja a számokat…';

  @override
  String get wallpaper => 'Háttér:';

  @override
  String get warning => 'Figyelmeztetés!';

  @override
  String get weSentYouAnEmail => 'Küldtünk Önnek egy emailt';

  @override
  String get whoCanPerformWhichAction => 'Ki milyen műveletet végezhet';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Ki csatlakozhat a csoporthoz';

  @override
  String get whyDoYouWantToReportThis => 'Miért kívánja ezt bejelenteni?';

  @override
  String get wipeChatBackup => 'Le kívánja törölni a chat mentését, hogy létrehozhasson egy új visszaállítási kulcsot?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Ezekkel a címekkel vissza tudja állítani a jelszavát.';

  @override
  String get writeAMessage => 'Írjon egy üzenetet…';

  @override
  String get yes => 'Igen';

  @override
  String get you => 'Ön';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Immáron nem vesz részt ebben a csevegésben';

  @override
  String get youHaveBeenBannedFromThisChat => 'Kitiltották ebből a csevegésből';

  @override
  String get yourPublicKey => 'A publikus kulcsa';

  @override
  String get messageInfo => 'Üzenet információ';

  @override
  String get time => 'Idő';

  @override
  String get messageType => 'Üzenet típus';

  @override
  String get sender => 'Küldő';

  @override
  String get openGallery => 'Galéria megnyitása';

  @override
  String get removeFromSpace => 'Eltávolítás a térről';

  @override
  String get addToSpaceDescription => 'Válassza ki melyik térhez kívánja hozzáadni a csevegést.';

  @override
  String get start => 'Kezdés';

  @override
  String get pleaseEnterRecoveryKeyDescription => 'A régi üzenetei feloldásához adja meg a korábban generált visszaállítási jelszavát. A visszaállítási jelszó NEM UGYANAZ mint a jelszó.';

  @override
  String get publish => 'Közzététel';

  @override
  String videoWithSize(String size) {
    return 'Videó ($size)';
  }

  @override
  String get openChat => 'Csevegés megnyitása';

  @override
  String get markAsRead => 'Olvasottként megjelölés';

  @override
  String get reportUser => 'Felhasználó jelentése';

  @override
  String get dismiss => 'Elvetés';

  @override
  String reactedWith(String sender, String reaction) {
    return '$sender a következőt reagálta: $reaction';
  }

  @override
  String get pinMessage => 'Kitűzés a szobában';

  @override
  String get confirmEventUnpin => 'Biztosan végleg le akarja venni a kitűzött eseményt?';

  @override
  String get emojis => 'Emojik';

  @override
  String get placeCall => 'Tér hívás';

  @override
  String get voiceCall => 'Hang hívás';

  @override
  String get unsupportedAndroidVersion => 'Nem támogatott Android verzió';

  @override
  String get unsupportedAndroidVersionLong => 'Ehhez a funkcióhoz egy újabb Android verzió kell. Kérem ellenőrizze be van e frissítve teljesen készüléke, esetlegesen van e LineageOS támogatás hozzá.';

  @override
  String get videoCallsBetaWarning => 'Kérem vegye figyelembe, hogy a videó hívások jelenleg béta fázisban vannak. Nem biztos, hogy megfelelően fognak működni, vagy egyáltalán elindulnak egyes platformokon.';

  @override
  String get experimentalVideoCalls => 'Kísérleti videó hívások';

  @override
  String get emailOrUsername => 'Email vagy felhasználónév';

  @override
  String get indexedDbErrorTitle => 'Privát mód problémák';

  @override
  String get indexedDbErrorLong => 'Sajnos az üzenet mentés alapból nincs bekapcsolva privát módban.\nKeresse meg a\n - about:config\n - állítsa a dom.indexedDB.privateBrowsing.enabled \"true\"-ra\nMáskülönben nem lehetséges a FluffyChat futtatása.';

  @override
  String switchToAccount(String number) {
    return 'A $number számú fiókra váltás';
  }

  @override
  String get nextAccount => 'Következő fiók';

  @override
  String get previousAccount => 'Előző fiók';

  @override
  String get addWidget => 'Widget hozzáadása';

  @override
  String get widgetVideo => 'Videó';

  @override
  String get widgetEtherpad => 'Szöveges megjegyzés';

  @override
  String get widgetJitsi => 'Jitsi Találkozó';

  @override
  String get widgetCustom => 'Egyéni';

  @override
  String get widgetName => 'Név';

  @override
  String get widgetUrlError => 'Ez nem egy valós cím.';

  @override
  String get widgetNameError => 'Kérem adjon meg egy megjeleníthető nevet.';

  @override
  String get errorAddingWidget => 'Hiba lépett fel a widget hozzáadásánál.';

  @override
  String get youRejectedTheInvitation => 'Visszautasította a meghívást';

  @override
  String get youJoinedTheChat => 'Becsatlakozott a csevegésbe';

  @override
  String get youAcceptedTheInvitation => '👍 Elfogadta a meghívást';

  @override
  String youBannedUser(String user) {
    return 'Letitotta $user-t';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(String user) {
    return 'Visszavonta a meghívást $user-tól';
  }

  @override
  String youInvitedToBy(String alias) {
    return '📩 Meghívást kapott linken keresztül a következőhöz:\n$alias';
  }

  @override
  String youInvitedBy(String user) {
    return '📩 Meghívást kapott $user-tól';
  }

  @override
  String invitedBy(String user) {
    return '📩 Meghívva $user által';
  }

  @override
  String youInvitedUser(String user) {
    return '📩 Meghívta $user-t';
  }

  @override
  String youKicked(String user) {
    return '👞 Kirúgta $user-t';
  }

  @override
  String youKickedAndBanned(String user) {
    return '🙅 Kirúgta és kitiltotta $user-t';
  }

  @override
  String youUnbannedUser(String user) {
    return 'Levette a letiltást $user-ről';
  }

  @override
  String hasKnocked(String user) {
    return '🚪 $user bekopogott';
  }

  @override
  String get usersMustKnock => 'A felhasználóknak be kell kopogniuk';

  @override
  String get noOneCanJoin => 'Senki sem csatlakozhat';

  @override
  String userWouldLikeToChangeTheChat(String user) {
    return '$user szeretne csatlakozni a csevegéshez.';
  }

  @override
  String get noPublicLinkHasBeenCreatedYet => 'Még nem lett létrehozva nyilvános link';

  @override
  String get knock => 'Kopogás';

  @override
  String get users => 'Felhasználók';

  @override
  String get unlockOldMessages => 'Régi üzenetek feloldása';

  @override
  String get storeInSecureStorageDescription => 'Tárolja a visszaállítási kulcsot az eszköz biztonsági tárjában.';

  @override
  String get saveKeyManuallyDescription => 'A kulcs manuális mentése rendszer megosztás vagy vágólap másolás segítségével.';

  @override
  String get storeInAndroidKeystore => 'Tárolás az Android KeyStore-ba';

  @override
  String get storeInAppleKeyChain => 'Tárolás az Apple KeyChain-be';

  @override
  String get storeSecurlyOnThisDevice => 'Biztonságos tárolás az eszközön';

  @override
  String countFiles(int count) {
    return '$count fájl';
  }

  @override
  String get user => 'Felhasználó';

  @override
  String get custom => 'Egyéni';

  @override
  String get foregroundServiceRunning => 'Ez az értesítés akkor jelenik meg ha az előtéri szolgáltatás fut.';

  @override
  String get screenSharingTitle => 'képernyő megosztás';

  @override
  String get screenSharingDetail => 'Megosztja a képernyőjét a FluffyChat-ben';

  @override
  String get callingPermissions => 'Hívási engedélyek';

  @override
  String get callingAccount => 'Hívási fiók';

  @override
  String get callingAccountDetails => 'Engedélyezés a FluffyChat számára hogy használja a natív android hívás applikációt.';

  @override
  String get appearOnTop => 'Mindig legfelül jelenik meg';

  @override
  String get appearOnTopDetails => 'Engedélyezi az app számára, hogy mindig legfelül jelenjen meg (nem szükséges, ha a FluffyChat hívó fiókként lett beállítva)';

  @override
  String get otherCallingPermissions => 'Mikrofon, kamera, és más egyéb FluffyChat engedélyek';

  @override
  String get whyIsThisMessageEncrypted => 'Miért nem olvasható ez az üzenet?';

  @override
  String get noKeyForThisMessage => 'Akkor fordulhat elő, ha az üzenet az eszközre való bejelentkezés előtt került küldésre.\n\nAz is elképzelhető, hogy a küldő blokkolta az eszközét, vagy valami probléma lépett fel az internet kapcsolatban.\n\nMás helyen látja az üzenetet? Akkor át tudja másolni ide is! Menjen a Beállítások > Eszközök részbe, és győződjön meg róla, hogy az eszközei megerősítették egymást. Legközelebb amikor ezt a szobát megnyitja, és mind a két kliens az előtérben van, akkor szikronizálódni fognak.\n\nNem akarja elveszíteni a kulcsokat amikor kijelentkezik, vagy eszközt cserél? Győződjön meg róla, hogy bekapcsolta a chat mentést a beállításokban.';

  @override
  String get newGroup => 'Új csoport';

  @override
  String get newSpace => 'Új tér';

  @override
  String get enterSpace => 'Belépés a térre';

  @override
  String get enterRoom => 'Belépés a szobába';

  @override
  String get allSpaces => 'Minden tér';

  @override
  String numChats(String number) {
    return '$number csevegés';
  }

  @override
  String get hideUnimportantStateEvents => 'Jelentéktelen esemény státuszok elrejtése';

  @override
  String get hidePresences => 'El kívánja menteni a státusz listát?';

  @override
  String get doNotShowAgain => 'Ne mutassa újra';

  @override
  String wasDirectChatDisplayName(String oldDisplayName) {
    return 'Üres csevegés (korábban $oldDisplayName)';
  }

  @override
  String get newSpaceDescription => 'A terek lehetővé teszik a csevegések konszolidációját, ezáltal létrehozva publikus vagy privát közösségeket.';

  @override
  String get encryptThisChat => 'A csevegés titkosítása';

  @override
  String get disableEncryptionWarning => 'Biztonsági okokból nem kapcsolható ki egy korábban bekapcsolt csevegés titkosítás.';

  @override
  String get sorryThatsNotPossible => 'Ez sajnos nem lehetséges';

  @override
  String get deviceKeys => 'Eszköz kulcsok:';

  @override
  String get reopenChat => 'Csevegés újranyitása';

  @override
  String get noBackupWarning => 'Figyelem! Ha nem kapcsolja be a csevegés mentést, elveszíti a hozzáférést a tikosított üzeneteihez. Erősen ajánlott a csevegés mentés bekapcsolása kijelentkezés előtt.';

  @override
  String get noOtherDevicesFound => 'Nem található más eszköz';

  @override
  String fileIsTooBigForServer(String max) {
    return 'A szerver számára túl nagy a fájl a küldéshez.';
  }

  @override
  String fileHasBeenSavedAt(String path) {
    return 'A fájl mentésre került a következő elérési úton $path';
  }

  @override
  String get jumpToLastReadMessage => 'Az utoljára olvasott üzenethez ugrás';

  @override
  String get readUpToHere => 'Ezidáig elolvasva';

  @override
  String get jump => 'Ugrás';

  @override
  String get openLinkInBrowser => 'Hivatkozás megnyitása böngészőben';

  @override
  String get reportErrorDescription => '😭 Sajnos valami félresiklott. Ha kívánja jelezheti a bugot a fejlesztőknek.';

  @override
  String get report => 'bejelentés';

  @override
  String get signInWithPassword => 'Bejelentkezés jelszóval';

  @override
  String get pleaseTryAgainLaterOrChooseDifferentServer => 'Próbálja meg máskor, vagy válasszon másik szervert.';

  @override
  String signInWith(String provider) {
    return 'Bejelentkezés a következővel: $provider';
  }

  @override
  String get profileNotFound => 'A felhasználó nem található a szerveren. Lehetséges, hogy csatlakozási problémák adódtak, vagy nem létezik a felhasználó.';

  @override
  String get setTheme => 'Téma beállítása:';

  @override
  String get setColorTheme => 'Szín téma beállítása:';

  @override
  String get invite => 'Meghívás';

  @override
  String get inviteGroupChat => '📨 Meghívó a csoportba';

  @override
  String get invitePrivateChat => '📨 Meghívó csevegéshez';

  @override
  String get invalidInput => 'Hibás bevitel!';

  @override
  String wrongPinEntered(int seconds) {
    return 'Hibás pinkód került beírásra. Próbálja újra $seconds mp múlva...';
  }

  @override
  String get pleaseEnterANumber => 'Adjon meg egy 0-nál nagyobb számot';

  @override
  String get archiveRoomDescription => 'A csevegés bekerül az archívumba. Más felhasználók látni fogják, hogy elhagyta a csevegést.';

  @override
  String get roomUpgradeDescription => 'A csevegés újra elkészül az új verzióval. Minden résztvevő értesítést kap, hogy át kell állniuk az új csevegésre. További információkért a szoba verziókról látogasson el a https://spec.matrix.org/latest/rooms/ címre';

  @override
  String get removeDevicesDescription => 'Ki fog jelentkezni a készülékről, és többi nem fog tudni fogadni üzeneteket.';

  @override
  String get banUserDescription => 'A felhasználó kitiltásra kerül a csevegésből, és nem fog tudni visszajönni egészen a kitiltás feloldásáig.';

  @override
  String get unbanUserDescription => 'A felhasználó vissza tud jönni a csevegésbe ha akar.';

  @override
  String get kickUserDescription => 'A felhasználó kirúgásra került a csevegésből, de nincs kitiltva. Publikus csevegés esetén a felhasználó bármikor visszatérhet.';

  @override
  String get makeAdminDescription => 'Miután a felhasználóból admin lesz, nem fogja tudni visszavonni döntését, mivel azonos jogosultsági szinttel fognak rendelkezni.';

  @override
  String get pushNotificationsNotAvailable => 'Push értesítések nem elérhetőek';

  @override
  String get learnMore => 'Tudjon meg többet';

  @override
  String get yourGlobalUserIdIs => 'A globális felhasználó-ID-je: ';

  @override
  String noUsersFoundWithQuery(String query) {
    return '\"$query\" néven nem található felhasználó. Ellenőrizze nincs e elírás.';
  }

  @override
  String get knocking => 'Bekopogás';

  @override
  String chatCanBeDiscoveredViaSearchOnServer(String server) {
    return 'Csevegés felfedezhető a $server szerveren történő kereséssel';
  }

  @override
  String get searchChatsRooms => 'Keressen #csevegéseket, @felhasználókat...';

  @override
  String get nothingFound => 'Nincs találat...';

  @override
  String get groupName => 'Csoport név';

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
  String get createGroupAndInviteUsers => 'Hozzon létre egy csoportot és hívjon meg felhasználókat';

  @override
  String get groupCanBeFoundViaSearch => 'Kereséssel megtalálhatja a kívánt csoportot';

  @override
  String get wrongRecoveryKey => 'Sajnos, úgy tűnik hibásan adta meg a visszaállítási kulcsot.';

  @override
  String get startConversation => 'Beszélgetés indítása';

  @override
  String get commandHint_sendraw => 'Tiszta json küldése';

  @override
  String get databaseMigrationTitle => 'Adatbázis optimalizálása';

  @override
  String get databaseMigrationBody => 'Kérem várjon. Ez igénybe vehet valamennyi időt.';

  @override
  String get leaveEmptyToClearStatus => 'Hagyja üresen a státusz kitörléséhez.';

  @override
  String get select => 'Kiválaszt';

  @override
  String get searchForUsers => 'Keressen @felhasználókat...';

  @override
  String get pleaseEnterYourCurrentPassword => 'Kérem adja meg jelenlegi jelszavát';

  @override
  String get newPassword => 'Új jelszó';

  @override
  String get pleaseChooseAStrongPassword => 'Kérem válasszon egy erős jelszót';

  @override
  String get passwordsDoNotMatch => 'A jelszavak nem egyeznek';

  @override
  String get passwordIsWrong => 'A beírt jelszava hibás';

  @override
  String get publicLink => 'Nyilvános hivatkozás';

  @override
  String get publicChatAddresses => 'Nyilvános csevegés címek';

  @override
  String get createNewAddress => 'Új cím létrehozása';

  @override
  String get joinSpace => 'Csatlakozás a térre';

  @override
  String get publicSpaces => 'Nyilvános terek';

  @override
  String get addChatOrSubSpace => 'Csevegés vagy al-tér hozzáadása';

  @override
  String get subspace => 'Al-tér';

  @override
  String get decline => 'Elutasítás';

  @override
  String get thisDevice => 'Ez az eszköz:';

  @override
  String get initAppError => 'Hiba lépett fel az app indítása során';

  @override
  String get userRole => 'Felhasználói szerep';

  @override
  String minimumPowerLevel(String level) {
    return '$level a minimum szint.';
  }

  @override
  String searchIn(String chat) {
    return 'Keresés a csevegésben \"$chat\"...';
  }

  @override
  String get searchMore => 'További keresés...';

  @override
  String get gallery => 'Galéria';

  @override
  String get files => 'Fájlok';

  @override
  String databaseBuildErrorBody(String url, String error) {
    return 'Nem lehetséges az SQlite adatbázis létrehozása. Az app megpróbálja a régi típusú adatbázist használni. Kérem jelentse a hibát a fejlesztőknek a $url linken. A hiba szövege a következő: $error';
  }

  @override
  String sessionLostBody(String url, String error) {
    return 'A munkamenete elvesződött. Kérem jelentse ezt a fejlesztőknek a $url címen. A hiba szövege a következő: $error';
  }

  @override
  String restoreSessionBody(String url, String error) {
    return 'Megpróbálkozunk visszaállítani a munkamenetét egy korábbi mentésből. Kérem jelezze a hibát a fejlesztőknek a $url címen. A hiba szövege a következő: $error';
  }

  @override
  String forwardMessageTo(String roomName) {
    return 'Üzenet továbbítása a $roomName szobába?';
  }

  @override
  String get sendReadReceipts => 'Olvasási igazolás küldése';

  @override
  String get sendTypingNotificationsDescription => 'A csevegés többi tagja látja amikor gépel.';

  @override
  String get sendReadReceiptsDescription => 'A csevegés többi tagja látja melyik üzenetet látta.';

  @override
  String get formattedMessages => 'Formázott üzenetek';

  @override
  String get formattedMessagesDescription => 'Formázott szöveg - mint például félkövér - megjelenítése \"markdown\"-al.';

  @override
  String get verifyOtherUser => '🔐 Más felhasználók igazolása';

  @override
  String get verifyOtherUserDescription => 'Ha megerősít egy másik felhasználót, akkor teljesen biztos lehet abban kivel cseveg. 💪\n\nA megerősítési folyamat kezdetekor megjelenik egy felugró ablak mindkettejüknél. Ekkor egy emoji vagy szám sor összehasonlítási folyamat veszi kezdetét.\n\nA legpraktikusabb módja ennek, hogy találkozzanak, vagy videó hívás során beszéljék meg. 👭';

  @override
  String get verifyOtherDevice => '🔐 Más eszköz megerősítése';

  @override
  String get verifyOtherDeviceDescription => 'Amikor egy másik eszközt erősít meg, az eszközök kulcsokat cserélnek egymás között, ezáltal növelve az összbiztonságot. 💪 Amikor megkezdődik a folyamat, mind a két eszközön megjelenik egy felugró üzenet. Emojik és számok sorozata fog megjelenni, amit össze tud hasonlítani a két eszközön. Érdemes tehát mind a két eszközt a közelben tartani. 🤳';

  @override
  String acceptedKeyVerification(String sender) {
    return '$sender elfogadta a kulcs megerősítést';
  }

  @override
  String canceledKeyVerification(String sender) {
    return '$sender nem fogadta el a kulcs megerősítést';
  }

  @override
  String completedKeyVerification(String sender) {
    return '$sender befejezte a kulcs megerősítést';
  }

  @override
  String isReadyForKeyVerification(String sender) {
    return '$sender készen áll a kulcs megerősítésre';
  }

  @override
  String requestedKeyVerification(String sender) {
    return '$sender kulcs megerősítést kér';
  }

  @override
  String startedKeyVerification(String sender) {
    return '$sender elkezdte a kulcs megerősítést';
  }

  @override
  String get transparent => 'Átlátszó';

  @override
  String get incomingMessages => 'Bejövő üzenetek';

  @override
  String get stickers => 'Matrica';

  @override
  String get discover => 'Felfedezés';

  @override
  String get commandHint_ignore => 'Adott matrix ID figyelmen kívül hagyása';

  @override
  String get commandHint_unignore => 'Adott matrix ID figyelembe vétele';

  @override
  String unreadChatsInApp(String appname, String unread) {
    return '$appname: $unread olvasatlan csevegések';
  }

  @override
  String get noDatabaseEncryption => 'Adatbázis titkosítása nem támogatott ezen a platformon';

  @override
  String thereAreCountUsersBlocked(Object count) {
    return 'Jelenleg $count felhasználó van letiltva.';
  }

  @override
  String get restricted => 'Korlátozott';

  @override
  String get knockRestricted => 'Kopogás korlátozva';

  @override
  String goToSpace(Object space) {
    return 'Menj a térre: $space';
  }

  @override
  String get markAsUnread => 'Olvasatlannak jelölés';

  @override
  String userLevel(int level) {
    return '$level - Felhasználó';
  }

  @override
  String moderatorLevel(int level) {
    return '$level - Moderátor';
  }

  @override
  String adminLevel(int level) {
    return '$level - Rendszergazda';
  }

  @override
  String get changeGeneralChatSettings => 'Általános csevegés beállítások módosítása';

  @override
  String get inviteOtherUsers => 'Más felhasználók meghívása a csevegésbe';

  @override
  String get changeTheChatPermissions => 'Csevegés engedélyek változtatása';

  @override
  String get changeTheVisibilityOfChatHistory => 'Csevegési előzmények láthatóságának változtatása';

  @override
  String get changeTheCanonicalRoomAlias => 'Csevegés fő, nyilvános címének változtatása';

  @override
  String get sendRoomNotifications => '@room értesítés küldése';

  @override
  String get changeTheDescriptionOfTheGroup => 'Csevegés leírásának változtatása';

  @override
  String get chatPermissionsDescription => 'Adja meg milyen erősségi szint kell egyes csevegési akciókhoz. A 0, 50 és 100-as szintek általában felhasználókat, moderátorokat és rendszergazdákat jelölnek de bármilyen szintezés lehetséges.';

  @override
  String updateInstalled(String version) {
    return '🎉 $version verziójú fejlesztés telepítve!';
  }

  @override
  String get changelog => 'Változások';

  @override
  String get sendCanceled => 'Visszavonás küldése';

  @override
  String get loginWithMatrixId => 'Jelentkezzen be Matrix-ID-vel';

  @override
  String get discoverHomeservers => 'Matrix-kiszolgálók felfedezése';

  @override
  String get whatIsAHomeserver => 'Mi az a Matrix-kiszolgáló?';

  @override
  String get homeserverDescription => 'Az összes adata a Mátrix-kiszolgálón tárolódik, pont mint egy e-mail kiszolgálón. Kiválaszthatja melyik Matrix-kiszolgálót akarja használni, miközben tud kommunikálni mindenkivel. Tudjon meg többet itt: https://matrix.org.';

  @override
  String get doesNotSeemToBeAValidHomeserver => 'Nem tűnik kompatibilisnak a Mátrix-kiszolgálóval. Helytelen URL?';

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
