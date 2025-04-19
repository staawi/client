// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class L10nSw extends L10n {
  L10nSw([String locale = 'sw']) : super(locale);

  @override
  String get alwaysUse24HourFormat => 'sivyo';

  @override
  String get repeatPassword => 'Rudia nenosiri';

  @override
  String get notAnImage => 'Si faili la picha.';

  @override
  String get remove => 'Ondoa';

  @override
  String get importNow => 'Ingiza sasa';

  @override
  String get importEmojis => 'Ingiza Emoji';

  @override
  String get importFromZipFile => 'Ingiza kutoka faili la .zip';

  @override
  String get exportEmotePack => 'Hamisha kifurushi cha Emoji kama .zip';

  @override
  String get replace => 'Badilisha';

  @override
  String get about => 'Kuhusu';

  @override
  String aboutHomeserver(String homeserver) {
    return 'Kuhusu $homeserver';
  }

  @override
  String get accept => 'Kubali';

  @override
  String acceptedTheInvitation(String username) {
    return '👍 $username amekubali mwaliko';
  }

  @override
  String get account => 'Akaunti';

  @override
  String activatedEndToEndEncryption(String username) {
    return '🔐 $username amewasha usimbaji fiche wa mwisho hadi mwisho';
  }

  @override
  String get addEmail => 'Ongeza barua pepe';

  @override
  String get confirmMatrixId => 'Tafadhali thibitisha kitambulisho chako cha Matrix ili kufuta akaunti yako.';

  @override
  String supposedMxid(String mxid) {
    return 'Hii inapaswa kuwa $mxid';
  }

  @override
  String get addChatDescription => 'Ongeza maelezo ya gumzo...';

  @override
  String get addToSpace => 'Ongeza kwenye nafasi';

  @override
  String get admin => 'Msimamizi';

  @override
  String get alias => 'alama ya utambulisho';

  @override
  String get all => 'Zote';

  @override
  String get allChats => 'Gumzo zote';

  @override
  String get commandHint_googly => 'Tuma macho yaliyotoka nje';

  @override
  String get commandHint_cuddle => 'Tuma kumbatio';

  @override
  String get commandHint_hug => 'Tuma kumbatio';

  @override
  String googlyEyesContent(String senderName) {
    return '$senderName anakutumia macho yaliyotoka nje';
  }

  @override
  String cuddleContent(String senderName) {
    return '$senderName anakukumbatia';
  }

  @override
  String hugContent(String senderName) {
    return '$senderName anakukumbatia';
  }

  @override
  String answeredTheCall(String senderName) {
    return '$senderName amejibu simu';
  }

  @override
  String get anyoneCanJoin => 'Mtu yeyote anaweza kujiunga';

  @override
  String get appLock => 'Funga programu';

  @override
  String get appLockDescription => 'Funga programu ikiwa haitumiki kwa kutumia nambari ya siri';

  @override
  String get archive => 'Arifa';

  @override
  String get areGuestsAllowedToJoin => 'Je, wageni wanaruhusiwa kujiunga';

  @override
  String get areYouSure => 'Una uhakika?';

  @override
  String get areYouSureYouWantToLogout => 'Una uhakika unataka kutoka?';

  @override
  String get askSSSSSign => 'Ili uweze kusaini mtu mwingine, tafadhali weka nenosiri lako la kuhifadhi salama au ufunguo wa kurejesha.';

  @override
  String askVerificationRequest(String username) {
    return 'Kubali ombi hili la uthibitishaji kutoka kwa $username?';
  }

  @override
  String get autoplayImages => 'Cheza moja kwa moja stika na emoji zilizo na uhuishaji';

  @override
  String badServerLoginTypesException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Seva inasaidia aina za kuingia:\n$serverVersions\nLakini programu hii inasaidia tu:\n$supportedVersions';
  }

  @override
  String get sendTypingNotifications => 'Tuma arifa za kuchapa';

  @override
  String get swipeRightToLeftToReply => 'Telezesha kulia kwenda kushoto kujibu';

  @override
  String get sendOnEnter => 'Tuma kwa kubofya Enter';

  @override
  String badServerVersionsException(String serverVersions, String supportedVersions, Object suportedVersions) {
    return 'Seva inasaidia matoleo ya Spec:\n$serverVersions\nLakini programu hii inasaidia tu $supportedVersions';
  }

  @override
  String countChatsAndCountParticipants(int chats, int participants) {
    return '$chats gumzo na washiriki $participants';
  }

  @override
  String get noMoreChatsFound => 'Hakuna gumzo zaidi zilizopatikana...';

  @override
  String get noChatsFoundHere => 'Hakuna gumzo zilizopatikana hapa bado. Anza gumzo jipya na mtu kwa kutumia kitufe hapa chini. ⤵️';

  @override
  String get joinedChats => 'Gumzo zilizojiunga';

  @override
  String get unread => 'Haijasomwa';

  @override
  String get space => 'Nafasi';

  @override
  String get spaces => 'Nafasi';

  @override
  String get banFromChat => 'Piga marufuku kutoka kwenye gumzo';

  @override
  String get banned => 'Zuiwa';

  @override
  String bannedUser(String username, String targetName) {
    return '$username amemzuia $targetName';
  }

  @override
  String get blockDevice => 'Zuia kifaa';

  @override
  String get blocked => 'Zuiwa';

  @override
  String get botMessages => 'Ujumbe wa roboti';

  @override
  String get cancel => 'Ghairi';

  @override
  String cantOpenUri(String uri) {
    return 'Imeshindikana kufungua URI $uri';
  }

  @override
  String get changeDeviceName => 'Badilisha jina la kifaa';

  @override
  String changedTheChatAvatar(String username) {
    return '$username amebadilisha avatar ya gumzo';
  }

  @override
  String changedTheChatDescriptionTo(String username, String description) {
    return '$username amebadilisha maelezo ya gumzo kuwa: \'$description\'';
  }

  @override
  String changedTheChatNameTo(String username, String chatname) {
    return '$username amebadilisha jina la gumzo kuwa: \'$chatname\'';
  }

  @override
  String changedTheChatPermissions(String username) {
    return '$username amebadilisha ruhusa za gumzo';
  }

  @override
  String changedTheDisplaynameTo(String username, String displayname) {
    return '$username amebadilisha jina lake la kuonyesha kuwa: \'$displayname\'';
  }

  @override
  String changedTheGuestAccessRules(String username) {
    return '$username amebadilisha sheria za ufikiaji wa wageni';
  }

  @override
  String changedTheGuestAccessRulesTo(String username, String rules) {
    return '$username amebadilisha sheria za ufikiaji wa wageni kuwa: $rules';
  }

  @override
  String changedTheHistoryVisibility(String username) {
    return '$username amebadilisha mwonekano wa historia';
  }

  @override
  String changedTheHistoryVisibilityTo(String username, String rules) {
    return '$username amebadilisha mwonekano wa historia kuwa: $rules';
  }

  @override
  String changedTheJoinRules(String username) {
    return '$username amebadilisha sheria za kujiunga';
  }

  @override
  String changedTheJoinRulesTo(String username, String joinRules) {
    return '$username amebadilisha sheria za kujiunga kuwa: $joinRules';
  }

  @override
  String changedTheProfileAvatar(String username) {
    return '$username amebadilisha avatar yake';
  }

  @override
  String changedTheRoomAliases(String username) {
    return '$username amebadilisha alama za chumba';
  }

  @override
  String changedTheRoomInvitationLink(String username) {
    return '$username amebadilisha kiungo cha mwaliko';
  }

  @override
  String get changePassword => 'Badilisha nenosiri';

  @override
  String get changeTheHomeserver => 'Badilisha seva ya nyumbani';

  @override
  String get changeTheme => 'Badilisha mtindo wako';

  @override
  String get changeTheNameOfTheGroup => 'Badilisha jina la kikundi';

  @override
  String get changeYourAvatar => 'Badilisha avatar yako';

  @override
  String get channelCorruptedDecryptError => 'Usimbaji umeharibika';

  @override
  String get chat => 'Gumzo';

  @override
  String get yourChatBackupHasBeenSetUp => 'Chelezo yako ya gumzo imewekwa.';

  @override
  String get chatBackup => 'Chelezo ya gumzo';

  @override
  String get chatBackupDescription => 'Ujumbe wako wa zamani umehifadhiwa na ufunguo wa kurejesha. Tafadhali hakikisha huipotezi.';

  @override
  String get chatDetails => 'Maelezo ya gumzo';

  @override
  String get chatHasBeenAddedToThisSpace => 'Gumzo limeongezwa kwenye nafasi hii';

  @override
  String get chats => 'Gumzo';

  @override
  String get chooseAStrongPassword => 'Chagua nenosiri lenye nguvu';

  @override
  String get clearArchive => 'Futa arifa';

  @override
  String get close => 'Funga';

  @override
  String get commandHint_markasdm => 'Tia alama kama chumba cha ujumbe wa moja kwa moja kwa kitambulisho cha Matrix kilichopewa';

  @override
  String get commandHint_markasgroup => 'Tia alama kama kikundi';

  @override
  String get commandHint_ban => 'Piga marufuku mtumiaji aliyetolewa kutoka chumba hiki';

  @override
  String get commandHint_clearcache => 'Futa kache';

  @override
  String get commandHint_create => 'Unda gumzo la kikundi tupu\nTumia --no-encryption kuzima usimbaji';

  @override
  String get commandHint_discardsession => 'Futa kikao';

  @override
  String get commandHint_dm => 'Anza gumzo la moja kwa moja\nTumia --no-encryption kuzima usimbaji';

  @override
  String get commandHint_html => 'Tuma maandishi yaliyopangwa kwa HTML';

  @override
  String get commandHint_invite => 'Mwalika mtumiaji aliyetolewa kwenye chumba hiki';

  @override
  String get commandHint_join => 'Jiunge na chumba kilichopewa';

  @override
  String get commandHint_kick => 'Ondoa mtumiaji aliyetolewa kutoka chumba hiki';

  @override
  String get commandHint_leave => 'Ondoka kwenye chumba hiki';

  @override
  String get commandHint_me => 'Jieleze';

  @override
  String get commandHint_myroomavatar => 'Weka picha yako kwa chumba hiki (kwa mxc-uri)';

  @override
  String get commandHint_myroomnick => 'Weka jina lako la kuonyesha kwa chumba hiki';

  @override
  String get commandHint_op => 'Weka kiwango cha nguvu cha mtumiaji aliyetolewa (chaguo-msingi: 50)';

  @override
  String get commandHint_plain => 'Tuma maandishi yasiyopangwa';

  @override
  String get commandHint_react => 'Tuma jibu kama mmenyuko';

  @override
  String get commandHint_send => 'Tuma maandishi';

  @override
  String get commandHint_unban => 'Ondoa marufuku ya mtumiaji aliyetolewa kutoka chumba hiki';

  @override
  String get commandInvalid => 'Amri si sahihi';

  @override
  String commandMissing(String command) {
    return '$command si amri.';
  }

  @override
  String get compareEmojiMatch => 'Tafadhali linganisha emoji';

  @override
  String get compareNumbersMatch => 'Tafadhali linganisha nambari';

  @override
  String get configureChat => 'Sanidi gumzo';

  @override
  String get confirm => 'Thibitisha';

  @override
  String get connect => 'Unganisha';

  @override
  String get contactHasBeenInvitedToTheGroup => 'Mawasiliano yamealikwa kwenye kikundi';

  @override
  String get containsDisplayName => 'Ina jina la kuonyesha';

  @override
  String get containsUserName => 'Ina jina la mtumiaji';

  @override
  String get contentHasBeenReported => 'Yaliyomo yameripotiwa kwa wasimamizi wa seva';

  @override
  String get copiedToClipboard => 'Imenakiliwa kwenye ubao wa kunakili';

  @override
  String get copy => 'Nakili';

  @override
  String get copyToClipboard => 'Nakili kwenye ubao wa kunakili';

  @override
  String couldNotDecryptMessage(String error) {
    return 'Imeshindikana kufungua ujumbe: $error';
  }

  @override
  String countParticipants(int count) {
    return '$count washiriki';
  }

  @override
  String get create => 'Unda';

  @override
  String createdTheChat(String username) {
    return '💬 $username ameunda gumzo';
  }

  @override
  String get createGroup => 'Unda kikundi';

  @override
  String get createNewSpace => 'Nafasi mpya';

  @override
  String get currentlyActive => 'Kwa sasa inafanya kazi';

  @override
  String get darkTheme => 'Giza';

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
  String get deactivateAccountWarning => 'Hii itazima akaunti yako ya mtumiaji. Hii haiwezi kubatilishwa! Una uhakika?';

  @override
  String get defaultPermissionLevel => 'Kiwango cha ruhusa cha chaguo-msingi kwa watumiaji wapya';

  @override
  String get delete => 'Futa';

  @override
  String get deleteAccount => 'Futa akaunti';

  @override
  String get deleteMessage => 'Futa ujumbe';

  @override
  String get device => 'Kifaa';

  @override
  String get deviceId => 'Kitambulisho cha kifaa';

  @override
  String get devices => 'Vifaa';

  @override
  String get directChats => 'Gumzo za moja kwa moja';

  @override
  String get allRooms => 'Gumzo zote za Kikundi';

  @override
  String get displaynameHasBeenChanged => 'Jina la kuonyesha limebadilishwa';

  @override
  String get downloadFile => 'Pakua faili';

  @override
  String get edit => 'Hariri';

  @override
  String get editBlockedServers => 'Hariri seva zilizozuiwa';

  @override
  String get chatPermissions => 'Ruhusa za gumzo';

  @override
  String get editDisplayname => 'Hariri jina la kuonyesha';

  @override
  String get editRoomAliases => 'Hariri alama za chumba';

  @override
  String get editRoomAvatar => 'Hariri avatar ya chumba';

  @override
  String get emoteExists => 'Emoji tayari ipo!';

  @override
  String get emoteInvalid => 'Emoji shortcode si sahihi!';

  @override
  String get emoteKeyboardNoRecents => 'Emoji zilizotumika hivi karibuni zitaonekana hapa...';

  @override
  String get emotePacks => 'Vifurushi vya emoji kwa chumba';

  @override
  String get emoteSettings => 'Mipangilio ya emoji';

  @override
  String get globalChatId => 'Kitambulisho cha gumzo la kimataifa';

  @override
  String get accessAndVisibility => 'Ufikiaji na mwonekano';

  @override
  String get accessAndVisibilityDescription => 'Nani anaruhusiwa kujiunga na gumzo hili na jinsi gumzo linavyoweza kugunduliwa.';

  @override
  String get calls => 'Simu';

  @override
  String get customEmojisAndStickers => 'Emoji na stika maalum';

  @override
  String get customEmojisAndStickersBody => 'Ongeza au shiriki emoji au stika maalum ambazo zinaweza kutumika katika gumzo lolote.';

  @override
  String get emoteShortcode => 'Emoji shortcode';

  @override
  String get emoteWarnNeedToPick => 'Unahitaji kuchagua emoji shortcode na picha!';

  @override
  String get emptyChat => 'Gumzo tupu';

  @override
  String get enableEmotesGlobally => 'Wezesha kifurushi cha emoji kimataifa';

  @override
  String get enableEncryption => 'Wezesha usimbaji';

  @override
  String get enableEncryptionWarning => 'Hutaweza kuzima usimbaji tena. Una uhakika?';

  @override
  String get encrypted => 'Imesimbwa';

  @override
  String get encryption => 'Usimbaji';

  @override
  String get encryptionNotEnabled => 'Usimbaji haujawezeshwa';

  @override
  String endedTheCall(String senderName) {
    return '$senderName amemaliza simu';
  }

  @override
  String get enterAnEmailAddress => 'Ingiza anwani ya barua pepe';

  @override
  String get homeserver => 'Seva ya nyumbani';

  @override
  String get enterYourHomeserver => 'Ingiza seva yako ya nyumbani';

  @override
  String errorObtainingLocation(String error) {
    return 'Hitilafu ya kupata mahali: $error';
  }

  @override
  String get everythingReady => 'Kila kitu kiko tayari!';

  @override
  String get extremeOffensive => 'Matusi makubwa';

  @override
  String get fileName => 'Jina la faili';

  @override
  String get stawi => 'Stawi';

  @override
  String get fontSize => 'Ukubwa wa fonti';

  @override
  String get forward => 'Tuma mbele';

  @override
  String get fromJoining => 'Kutoka kujiunga';

  @override
  String get fromTheInvitation => 'Kutoka mwaliko';

  @override
  String get goToTheNewRoom => 'Nenda kwenye chumba kipya';

  @override
  String get group => 'Kikundi';

  @override
  String get chatDescription => 'Maelezo ya gumzo';

  @override
  String get chatDescriptionHasBeenChanged => 'Maelezo ya gumzo yamebadilishwa';

  @override
  String get groupIsPublic => 'Kikundi ni cha umma';

  @override
  String get groups => 'Vikundi';

  @override
  String groupWith(String displayname) {
    return 'Kikundi na $displayname';
  }

  @override
  String get guestsAreForbidden => 'Wageni wamezuiwa';

  @override
  String get guestsCanJoin => 'Wageni wanaweza kujiunga';

  @override
  String hasWithdrawnTheInvitationFor(String username, String targetName) {
    return '$username amefuta mwaliko kwa $targetName';
  }

  @override
  String get help => 'Msaada';

  @override
  String get hideRedactedEvents => 'Ficha matukio yaliyofutwa';

  @override
  String get hideRedactedMessages => 'Ficha ujumbe uliosafishwa';

  @override
  String get hideRedactedMessagesBody => 'Ikiwa mtu atafuta ujumbe, ujumbe huu hautaonekana tena kwenye gumzo.';

  @override
  String get hideInvalidOrUnknownMessageFormats => 'Ficha miundo ya ujumbe isiyo sahihi au isiyojulikana';

  @override
  String get howOffensiveIsThisContent => 'Yaliyomo haya ni matusi kiasi gani?';

  @override
  String get id => 'Kitambulisho';

  @override
  String get identity => 'Utambulisho';

  @override
  String get block => 'Zuia';

  @override
  String get blockedUsers => 'Watumiaji waliopigwa marufuku';

  @override
  String get blockListDescription => 'Unaweza kuzuia watumiaji wanaokusumbua. Hutaweza kupokea ujumbe wowote au mialiko ya chumba kutoka kwa watumiaji kwenye orodha yako ya kuzuia binafsi.';

  @override
  String get blockUsername => 'Puuza jina la mtumiaji';

  @override
  String get iHaveClickedOnLink => 'Nimebofya kiungo';

  @override
  String get incorrectPassphraseOrKey => 'Kauli ya siri au ufunguo wa kurejesha si sahihi';

  @override
  String get inoffensive => 'Sio matusi';

  @override
  String get inviteContact => 'Mwalika mawasiliano';

  @override
  String inviteContactToGroupQuestion(String contact, String groupName) {
    return 'Unataka kumwalika $contact kwenye gumzo \"$groupName\"?';
  }

  @override
  String inviteContactToGroup(String groupName) {
    return 'Mwalika mawasiliano kwa $groupName';
  }

  @override
  String get noChatDescriptionYet => 'Hakuna maelezo ya gumzo yaliyoundwa bado.';

  @override
  String get tryAgain => 'Jaribu tena';

  @override
  String get invalidServerName => 'Jina la seva si sahihi';

  @override
  String get invited => 'Mwalikwa';

  @override
  String get redactMessageDescription => 'Ujumbe utaondolewa kwa washiriki wote katika mazungumzo haya. Hii haiwezi kubatilishwa.';

  @override
  String get optionalRedactReason => '(Hiari) Sababu ya kufuta ujumbe huu...';

  @override
  String invitedUser(String username, String targetName) {
    return '📩 $username amemwalika $targetName';
  }

  @override
  String get invitedUsersOnly => 'Watumiaji waliyoalikwa pekee';

  @override
  String get inviteForMe => 'Mwalika kwa ajili yangu';

  @override
  String inviteText(String username, String link) {
    return '$username amekualika kwenye stawi. Tembelea kiungo cha mwaliko $link ili kuungana';
  }

  @override
  String get isTyping => 'anachapa…';

  @override
  String joinedTheChat(String username) {
    return '👋 $username amejiunga na gumzo';
  }

  @override
  String get joinRoom => 'Jiunge na chumba';

  @override
  String kicked(String username, String targetName) {
    return '👞 $username amemfukuza $targetName';
  }

  @override
  String kickedAndBanned(String username, String targetName) {
    return '🙅 $username amemfukuza na kumzuia $targetName';
  }

  @override
  String get kickFromChat => 'Fukuza kutoka kwenye gumzo';

  @override
  String lastActiveAgo(String localizedTimeShort) {
    return 'Mara ya mwisho mtandaoni: $localizedTimeShort';
  }

  @override
  String get leave => 'Ondoka';

  @override
  String get leftTheChat => 'Ameondoka kwenye gumzo';

  @override
  String get license => 'Leseni';

  @override
  String get lightTheme => 'Mandhari Nyepesi';

  @override
  String loadCountMoreParticipants(int count) {
    return 'Pakia washiriki $count zaidi';
  }

  @override
  String get dehydrate => 'Hamisha kikao na futa kifaa';

  @override
  String get dehydrateWarning => 'Kitendo hiki hakiwezi kubatilishwa. Hakikisha umehifadhi faili ya chelezo kwa usalama.';

  @override
  String get dehydrateTor => 'Watumiaji wa TOR: Hamisha kikao';

  @override
  String get dehydrateTorLong => 'Kwa watumiaji wa TOR, inapendekezwa kuhifadhi kikao kabla ya kufunga dirisha.';

  @override
  String get hydrateTor => 'Watumiaji wa TOR: Leta kikao kilichohamishwa';

  @override
  String get hydrateTorLong => 'Je, ulitoa kikao chako mara ya mwisho kwenye TOR? Leta haraka na uendelee kuchati.';

  @override
  String get hydrate => 'Rejesha kutoka faili la chelezo';

  @override
  String get loadingPleaseWait => 'Inapakia… Tafadhali subiri.';

  @override
  String get loadMore => 'Pakia zaidi…';

  @override
  String get locationDisabledNotice => 'Huduma za mahali zimezimwa. Tafadhali ziwashe ili uweze kushiriki mahali pako.';

  @override
  String get locationPermissionDeniedNotice => 'Ruhusa ya mahali imekataliwa. Tafadhali toa ruhusa ili uweze kushiriki mahali pako.';

  @override
  String get contactPermissionDeniedNotice => 'Ruhusa ya mawasiliano imekataliwa. Tafadhali toa ruhusa ili uweze kuungana na wengine.';

  @override
  String get login => 'Ingia';

  @override
  String logInTo(String homeserver) {
    return 'Ingia kwenye $homeserver';
  }

  @override
  String get logout => 'Toka';

  @override
  String get memberChanges => 'Mabadiliko ya wanachama';

  @override
  String get mention => 'Taja';

  @override
  String get messages => 'Ujumbe';

  @override
  String get messagesStyle => 'Ujumbe:';

  @override
  String get moderator => 'Msimamizi';

  @override
  String get muteChat => 'Zima sauti ya gumzo';

  @override
  String get needPantalaimonWarning => 'Tafadhali fahamu kuwa unahitaji Pantalaimon kutumia usimbaji wa mwisho hadi mwisho kwa sasa.';

  @override
  String get newChat => 'Gumzo jipya';

  @override
  String get newMessageInStawi => '💬 Ujumbe mpya katika Stawi';

  @override
  String get newVerificationRequest => 'Ombi jipya la uthibitishaji!';

  @override
  String get next => 'Ifuatayo';

  @override
  String get no => 'Hapana';

  @override
  String get noConnectionToTheServer => 'Hakuna muunganisho kwa seva';

  @override
  String get noEmotesFound => 'Hakuna emoji zilizopatikana. 😕';

  @override
  String get noEncryptionForPublicRooms => 'Unaweza tu kuwezesha usimbaji mara tu chumba hakipatikani tena hadharani.';

  @override
  String get noGoogleServicesWarning => 'Firebase Cloud Messaging haionekani kupatikana kwenye kifaa chako. Ili bado kupokea arifa za kusukuma, tunapendekeza kusakinisha ntfy. Kwa ntfy au mtoa huduma mwingine wa Unified Push unaweza kupokea arifa za kusukuma kwa njia salama ya data. Unaweza kupakua ntfy kutoka PlayStore au kutoka F-Droid.';

  @override
  String noMatrixServer(String server1, String server2) {
    return '$server1 si seva ya matrix, tumia $server2 badala yake?';
  }

  @override
  String get shareInviteLink => 'Shiriki kiungo cha mwaliko';

  @override
  String get scanQrCode => 'Changanua msimbo wa QR';

  @override
  String get none => 'Hakuna';

  @override
  String get noPasswordRecoveryDescription => 'Hujaongeza njia ya kurejesha nenosiri lako bado.';

  @override
  String get noPermission => 'Hakuna ruhusa';

  @override
  String get noRoomsFound => 'Hakuna vyumba vilivyopatikana…';

  @override
  String get notifications => 'Arifa';

  @override
  String get notificationsEnabledForThisAccount => 'Arifa zimewezeshwa kwa akaunti hii';

  @override
  String numUsersTyping(int count) {
    return '$count watumiaji wanachapa…';
  }

  @override
  String get obtainingLocation => 'Inapata mahali…';

  @override
  String get offensive => 'Matusi';

  @override
  String get offline => 'Nje ya mtandao';

  @override
  String get ok => 'Sawa';

  @override
  String get online => 'Mtandaoni';

  @override
  String get onlineKeyBackupEnabled => 'Chelezo ya ufunguo mtandaoni imewezeshwa';

  @override
  String get oopsPushError => 'Samahani! Hitilafu imetokea wakati wa kusanidi arifa za push.';

  @override
  String get oopsSomethingWentWrong => 'Samahani, kuna hitilafu imetokea…';

  @override
  String get openAppToReadMessages => 'Fungua programu kusoma ujumbe';

  @override
  String get openCamera => 'Fungua kamera';

  @override
  String get openVideoCamera => 'Fungua kamera kwa video';

  @override
  String get oneClientLoggedOut => 'Mojawapo ya vifaa vyako vimetolewa';

  @override
  String get addAccount => 'Ongeza akaunti';

  @override
  String get editBundlesForAccount => 'Hariri vifurushi vya akaunti hii';

  @override
  String get addToBundle => 'Ongeza kwenye kifurushi';

  @override
  String get removeFromBundle => 'Ondoa kwenye kifurushi hiki';

  @override
  String get bundleName => 'Jina la kifurushi';

  @override
  String get enableMultiAccounts => '(BETA) Wezesha akaunti nyingi kwenye kifaa hiki';

  @override
  String get openInMaps => 'Fungua kwenye ramani';

  @override
  String get link => 'Kiungo';

  @override
  String get serverRequiresEmail => 'Seva hii inahitaji kuthibitisha anwani yako ya barua pepe kwa usajili.';

  @override
  String get or => 'Au';

  @override
  String get participant => 'Mshiriki';

  @override
  String get passphraseOrKey => 'kauli ya siri au ufunguo wa kurejesha';

  @override
  String get password => 'Nenosiri';

  @override
  String get passwordForgotten => 'Umesahau nenosiri';

  @override
  String get passwordHasBeenChanged => 'Nenosiri limebadilishwa';

  @override
  String get hideMemberChangesInPublicChats => 'Ficha mabadiliko ya wanachama kwenye gumzo za umma';

  @override
  String get hideMemberChangesInPublicChatsBody => 'Usionyeshe kwenye historia ya gumzo ikiwa mtu amejiunga au kuondoka ili kuboresha usomekaji.';

  @override
  String get overview => 'Muhtasari';

  @override
  String get notifyMeFor => 'Niarifu kwa';

  @override
  String get passwordRecoverySettings => 'Mipangilio ya urejeshaji nenosiri';

  @override
  String get passwordRecovery => 'Urejeshaji nenosiri';

  @override
  String get people => 'Watu';

  @override
  String get pickImage => 'Chagua picha';

  @override
  String get pin => 'Bandika';

  @override
  String play(String fileName) {
    return 'Cheza $fileName';
  }

  @override
  String get pleaseChoose => 'Tafadhali chagua';

  @override
  String get pleaseChooseAPasscode => 'Tafadhali chagua nambari ya siri';

  @override
  String get pleaseClickOnLink => 'Tafadhali bofya kiungo kwenye barua pepe kisha uendelee.';

  @override
  String get pleaseEnter4Digits => 'Tafadhali ingiza tarakimu 4 au acha tupu ili kuzima kufunga programu.';

  @override
  String get pleaseEnterRecoveryKey => 'Tafadhali ingiza ufunguo wako wa kurejesha:';

  @override
  String get pleaseEnterYourPassword => 'Tafadhali ingiza nenosiri lako';

  @override
  String get pleaseEnterYourPin => 'Tafadhali ingiza nambari yako ya siri';

  @override
  String get pleaseEnterYourUsername => 'Tafadhali ingiza jina lako la mtumiaji';

  @override
  String get pleaseFollowInstructionsOnWeb => 'Tafadhali fuata maagizo kwenye tovuti na gonga \'endelea\'.';

  @override
  String get privacy => 'Faragha';

  @override
  String get publicRooms => 'Vyumba vya Umma';

  @override
  String get pushRules => 'Sheria za arifa';

  @override
  String get reason => 'Sababu';

  @override
  String get recording => 'Inarekodi';

  @override
  String redactedBy(String username) {
    return 'Imefutwa na $username';
  }

  @override
  String get directChat => 'Gumzo la moja kwa moja';

  @override
  String redactedByBecause(String username, String reason) {
    return 'Imefutwa na $username kwa sababu: \"$reason\"';
  }

  @override
  String redactedAnEvent(String username) {
    return '$username amefuta tukio';
  }

  @override
  String get redactMessage => 'Futa ujumbe';

  @override
  String get register => 'Jisajili';

  @override
  String get reject => 'Kataa';

  @override
  String rejectedTheInvitation(String username) {
    return '$username amekataa mwaliko';
  }

  @override
  String get rejoin => 'Jiunge tena';

  @override
  String get removeAllOtherDevices => 'Ondoa vifaa vingine vyote';

  @override
  String removedBy(String username) {
    return 'Imeondolewa na $username';
  }

  @override
  String get removeDevice => 'Ondoa kifaa';

  @override
  String get unbanFromChat => 'Ruhusu kutoka kwenye marufuku ya gumzo';

  @override
  String get removeYourAvatar => 'Ondoa avatar yako';

  @override
  String get replaceRoomWithNewerVersion => 'Badilisha chumba na toleo jipya';

  @override
  String get reply => 'Jibu';

  @override
  String get reportMessage => 'Ripoti ujumbe';

  @override
  String get requestPermission => 'Omba ruhusa';

  @override
  String get roomHasBeenUpgraded => 'Chumba kimeboreshwa';

  @override
  String get roomVersion => 'Toleo la chumba';

  @override
  String get saveFile => 'Hifadhi faili';

  @override
  String get search => 'Tafuta';

  @override
  String get security => 'Usalama';

  @override
  String get recoveryKey => 'Ufunguo wa urejeshaji';

  @override
  String get recoveryKeyLost => 'Ufunguo wa urejeshaji umepotea?';

  @override
  String seenByUser(String username) {
    return 'Imeonekana na $username';
  }

  @override
  String get send => 'Tuma';

  @override
  String get sendAMessage => 'Tuma ujumbe';

  @override
  String get sendAsText => 'Tuma kama maandishi';

  @override
  String get sendAudio => 'Tuma sauti';

  @override
  String get sendFile => 'Tuma faili';

  @override
  String get sendImage => 'Tuma picha';

  @override
  String sendImages(int count) {
    return 'Tuma picha $count';
  }

  @override
  String get sendMessages => 'Tuma ujumbe';

  @override
  String get sendOriginal => 'Tuma asili';

  @override
  String get sendSticker => 'Tuma stika';

  @override
  String get sendVideo => 'Tuma video';

  @override
  String sentAFile(String username) {
    return '📁 $username ametuma faili';
  }

  @override
  String sentAnAudio(String username) {
    return '🎤 $username ametuma sauti';
  }

  @override
  String sentAPicture(String username) {
    return '🖼️ $username ametuma picha';
  }

  @override
  String sentASticker(String username) {
    return '😊 $username ametuma stika';
  }

  @override
  String sentAVideo(String username) {
    return '🎥 $username ametuma video';
  }

  @override
  String sentCallInformations(String senderName) {
    return '$senderName ametuma taarifa za simu';
  }

  @override
  String get separateChatTypes => 'Tenganisha Gumzo za Moja kwa Moja na Vikundi';

  @override
  String get setAsCanonicalAlias => 'Weka kama alama kuu';

  @override
  String get setCustomEmotes => 'Weka emoji maalum';

  @override
  String get setChatDescription => 'Weka maelezo ya gumzo';

  @override
  String get setInvitationLink => 'Weka kiungo cha mwaliko';

  @override
  String get setPermissionsLevel => 'Weka kiwango cha ruhusa';

  @override
  String get setStatus => 'Weka hali';

  @override
  String get settings => 'Mipangilio';

  @override
  String get share => 'Shiriki';

  @override
  String sharedTheLocation(String username) {
    return '$username ameshiriki mahali pake';
  }

  @override
  String get shareLocation => 'Shiriki mahali';

  @override
  String get showPassword => 'Onyesha nenosiri';

  @override
  String get presenceStyle => 'Hali:';

  @override
  String get presencesToggle => 'Onyesha ujumbe wa hali kutoka kwa watumiaji wengine';

  @override
  String get singlesignon => 'Ingia kwa mara moja';

  @override
  String get skip => 'Ruka';

  @override
  String get sourceCode => 'Msimbo wa chanzo';

  @override
  String get spaceIsPublic => 'Nafasi ni ya umma';

  @override
  String get spaceName => 'Jina la nafasi';

  @override
  String startedACall(String senderName) {
    return '$senderName ameanzisha simu';
  }

  @override
  String get startFirstChat => 'Anza gumzo lako la kwanza';

  @override
  String get status => 'Hali';

  @override
  String get statusExampleMessage => 'Habari yako leo?';

  @override
  String get submit => 'Wasilisha';

  @override
  String get synchronizingPleaseWait => 'Inalinganisha… Tafadhali subiri.';

  @override
  String synchronizingPleaseWaitCounter(String percentage) {
    return ' Inalinganisha… ($percentage%)';
  }

  @override
  String get systemTheme => 'Mfumo';

  @override
  String get theyDontMatch => 'Havilingani';

  @override
  String get theyMatch => 'Vinalingana';

  @override
  String get title => 'Stawi';

  @override
  String get toggleFavorite => 'Badilisha kipendwa';

  @override
  String get toggleMuted => 'Badilisha kimya';

  @override
  String get toggleUnread => 'Tia alama kama imesomwa/haijasomwa';

  @override
  String get tooManyRequestsWarning => 'Maombi mengi sana. Tafadhali jaribu tena baadaye!';

  @override
  String get transferFromAnotherDevice => 'Hamisha kutoka kifaa kingine';

  @override
  String get tryToSendAgain => 'Jaribu kutuma tena';

  @override
  String get unavailable => 'Haipatikani';

  @override
  String unbannedUser(String username, String targetName) {
    return '$username amemruhusu $targetName';
  }

  @override
  String get unblockDevice => 'Ruhusu kifaa';

  @override
  String get unknownDevice => 'Kifaa kisichojulikana';

  @override
  String get unknownEncryptionAlgorithm => 'Algorithimu ya usimbaji isiyojulikana';

  @override
  String unknownEvent(String type) {
    return 'Tukio lisilojulikana \'$type\'';
  }

  @override
  String get unmuteChat => 'Ruhusu sauti ya gumzo';

  @override
  String get unpin => 'Ondoa bandiko';

  @override
  String unreadChats(int unreadCount) {
    String _temp0 = intl.Intl.pluralLogic(
      unreadCount,
      locale: localeName,
      other: '$unreadCount gumzo haijasomwa',
      one: '1 gumzo haijasomwa',
    );
    return '$_temp0';
  }

  @override
  String userAndOthersAreTyping(String username, int count) {
    return '$username na $count wengine wanachapa…';
  }

  @override
  String userAndUserAreTyping(String username, String username2) {
    return '$username na $username2 wanachapa…';
  }

  @override
  String userIsTyping(String username) {
    return '$username anachapa…';
  }

  @override
  String userLeftTheChat(String username) {
    return '🚪 $username ameondoka kwenye gumzo';
  }

  @override
  String get username => 'Jina la mtumiaji';

  @override
  String userSentUnknownEvent(String username, String type) {
    return '$username ametuma tukio la $type';
  }

  @override
  String get unverified => 'Haijathibitishwa';

  @override
  String get verified => 'Imethibitishwa';

  @override
  String get verify => 'Thibitisha';

  @override
  String get verifyStart => 'Anza Uthibitishaji';

  @override
  String get verifySuccess => 'Umefanikiwa kuthibitisha!';

  @override
  String get verifyTitle => 'Kuthibitisha akaunti nyingine';

  @override
  String get videoCall => 'Simu ya video';

  @override
  String get visibilityOfTheChatHistory => 'Mwonekano wa historia ya gumzo';

  @override
  String get visibleForAllParticipants => 'Inaonekana kwa washiriki wote';

  @override
  String get visibleForEveryone => 'Inaonekana kwa kila mtu';

  @override
  String get voiceMessage => 'Ujumbe wa sauti';

  @override
  String get waitingPartnerAcceptRequest => 'Inasubiri mshirika akubali ombi…';

  @override
  String get waitingPartnerEmoji => 'Inasubiri mshirika akubali emoji…';

  @override
  String get waitingPartnerNumbers => 'Inasubiri mshirika akubali nambari…';

  @override
  String get wallpaper => 'Ukuta:';

  @override
  String get warning => 'Onyo!';

  @override
  String get weSentYouAnEmail => 'Tumekutumia barua pepe';

  @override
  String get whoCanPerformWhichAction => 'Nani anaweza kufanya kitendo gani';

  @override
  String get whoIsAllowedToJoinThisGroup => 'Nani anaruhusiwa kujiunga na kikundi hiki';

  @override
  String get whyDoYouWantToReportThis => 'Kwa nini unataka kuripoti hili?';

  @override
  String get wipeChatBackup => 'Futa chelezo ya gumzo ili kuunda ufunguo mpya wa urejeshaji?';

  @override
  String get withTheseAddressesRecoveryDescription => 'Kwa anwani hizi unaweza kurejesha nenosiri lako.';

  @override
  String get writeAMessage => 'Andika ujumbe…';

  @override
  String get yes => 'Ndio';

  @override
  String get you => 'Wewe';

  @override
  String get youAreNoLongerParticipatingInThisChat => 'Hushiriki tena katika gumzo hili';

  @override
  String get youHaveBeenBannedFromThisChat => 'Umezuiwa kutoka kwenye gumzo hili';

  @override
  String get yourPublicKey => 'Ufunguo wako wa umma';

  @override
  String get messageInfo => 'Taarifa za ujumbe';

  @override
  String get time => 'Wakati';

  @override
  String get messageType => 'Aina ya ujumbe';

  @override
  String get sender => 'Mtumaji';

  @override
  String get openGallery => 'Fungua galeri';

  @override
  String get removeFromSpace => 'Ondoa kutoka nafasi';

  @override
  String get addToSpaceDescription => 'Chagua nafasi ya kuongeza gumzo hili.';

  @override
  String get start => 'Anza';

  @override
  String get pleaseEnterRecoveryKeyDescription => 'Ili kufungua ujumbe wako wa zamani, tafadhali ingiza ufunguo wako wa urejeshaji ambao umeundwa katika kikao cha awali. Ufunguo wako wa urejeshaji SIYO nenosiri lako.';

  @override
  String get publish => 'Chapisha';

  @override
  String videoWithSize(String size) {
    return 'Video ($size)';
  }

  @override
  String get openChat => 'Fungua Gumzo';

  @override
  String get markAsRead => 'Tia alama kama imesomwa';

  @override
  String get reportUser => 'Ripoti mtumiaji';

  @override
  String get dismiss => 'Futa';

  @override
  String reactedWith(String sender, String reaction) {
    return '$sender amejibu na $reaction';
  }

  @override
  String get pinMessage => 'Bandika kwenye chumba';

  @override
  String get confirmEventUnpin => 'Una uhakika wa kuondoa bandiko la tukio?';

  @override
  String get emojis => 'Emoji';

  @override
  String get placeCall => 'Piga simu';

  @override
  String get voiceCall => 'Simu ya sauti';

  @override
  String get unsupportedAndroidVersion => 'Toleo la Android halitumiki';

  @override
  String get unsupportedAndroidVersionLong => 'Kipengele hiki kinahitaji toleo jipya la Android. Tafadhali angalia masasisho au msaada wa Lineage OS.';

  @override
  String get videoCallsBetaWarning => 'Tafadhali fahamu kuwa simu za video ziko katika beta kwa sasa. Huenda hazitafanya kazi kama inavyotarajiwa au hazitafanya kazi kabisa kwenye majukwaa yote.';

  @override
  String get experimentalVideoCalls => 'Simu za video za majaribio';

  @override
  String get emailOrUsername => 'Barua pepe au jina la mtumiaji';

  @override
  String get indexedDbErrorTitle => 'Masuala ya hali ya faragha';

  @override
  String get indexedDbErrorLong => 'Hifadhi ya ujumbe haijawezeshwa katika hali ya faragha kwa chaguo-msingi.\nTafadhali tembelea\n - about:config\n - weka dom.indexedDB.privateBrowsing.enabled kuwa kweli\nVinginevyo, haiwezekani kuendesha Stawi.';

  @override
  String switchToAccount(String number) {
    return 'Badilisha akaunti $number';
  }

  @override
  String get nextAccount => 'Akaunti inayofuata';

  @override
  String get previousAccount => 'Akaunti iliyopita';

  @override
  String get addWidget => 'Ongeza wijeti';

  @override
  String get widgetVideo => 'Video';

  @override
  String get widgetEtherpad => 'Padi ya Maandishi';

  @override
  String get widgetJitsi => 'Jitsi Meet';

  @override
  String get widgetCustom => 'Maalum';

  @override
  String get widgetName => 'Jina';

  @override
  String get widgetUrlError => 'Hii si URL sahihi.';

  @override
  String get widgetNameError => 'Tafadhali toa jina la kuonyesha.';

  @override
  String get errorAddingWidget => 'Hitilafu ya kuongeza wijeti.';

  @override
  String get youRejectedTheInvitation => 'Ulikataa mwaliko';

  @override
  String get youJoinedTheChat => 'Umejiunga na gumzo';

  @override
  String get youAcceptedTheInvitation => '👍 Ulikubali mwaliko';

  @override
  String youBannedUser(String user) {
    return 'Umemzuia $user';
  }

  @override
  String youHaveWithdrawnTheInvitationFor(String user) {
    return 'Umefuta mwaliko kwa $user';
  }

  @override
  String youInvitedToBy(String alias) {
    return '📩 Umealikwa kupitia kiungo kwa:\n$alias';
  }

  @override
  String youInvitedBy(String user) {
    return '📩 Umealikwa na $user';
  }

  @override
  String invitedBy(String user) {
    return '📩 Amealikwa na $user';
  }

  @override
  String youInvitedUser(String user) {
    return '📩 Umealikwa $user';
  }

  @override
  String youKicked(String user) {
    return '👞 Umefukuza $user';
  }

  @override
  String youKickedAndBanned(String user) {
    return '🙅 Umefukuza na kumzuia $user';
  }

  @override
  String youUnbannedUser(String user) {
    return 'Umemruhusu $user';
  }

  @override
  String hasKnocked(String user) {
    return '🚪 $user amegonga';
  }

  @override
  String get usersMustKnock => 'Watumiaji lazima wagonge';

  @override
  String get noOneCanJoin => 'Hakuna anayeweza kujiunga';

  @override
  String userWouldLikeToChangeTheChat(String user) {
    return '$user angependa kujiunga na gumzo.';
  }

  @override
  String get noPublicLinkHasBeenCreatedYet => 'Hakuna kiungo cha umma kilichoundwa bado';

  @override
  String get knock => 'Gonga';

  @override
  String get users => 'Watumiaji';

  @override
  String get unlockOldMessages => 'Fungua ujumbe wa zamani';

  @override
  String get storeInSecureStorageDescription => 'Hifadhi ufunguo wa urejeshaji katika hifadhi salama ya kifaa hiki.';

  @override
  String get saveKeyManuallyDescription => 'Hifadhi ufunguo huu kwa mikono kwa kuchochea dialog ya kushiriki mfumo au ubao wa kunakili.';

  @override
  String get storeInAndroidKeystore => 'Hifadhi katika Android KeyStore';

  @override
  String get storeInAppleKeyChain => 'Hifadhi katika Apple KeyChain';

  @override
  String get storeSecurlyOnThisDevice => 'Hifadhi kwa usalama kwenye kifaa hiki';

  @override
  String countFiles(int count) {
    return '$count faili';
  }

  @override
  String get user => 'Mtumiaji';

  @override
  String get custom => 'Maalum';

  @override
  String get foregroundServiceRunning => 'Arifa hii inaonekana wakati huduma ya mbele inaendesha.';

  @override
  String get screenSharingTitle => 'kushiriki skrini';

  @override
  String get screenSharingDetail => 'Unashiriki skrini yako katika FuffyChat';

  @override
  String get callingPermissions => 'Ruhusa za kupiga simu';

  @override
  String get callingAccount => 'Akaunti ya kupiga simu';

  @override
  String get callingAccountDetails => 'Inaruhusu Stawi kutumia programu ya kupiga simu ya asili ya android.';

  @override
  String get appearOnTop => 'Onyesha juu';

  @override
  String get appearOnTopDetails => 'Inaruhusu programu kuonekana juu (sio lazima ikiwa tayari umeweka Fluffychat kama akaunti ya kupiga simu)';

  @override
  String get otherCallingPermissions => 'Mikrofoni, kamera na ruhusa nyingine za Stawi';

  @override
  String get whyIsThisMessageEncrypted => 'Kwa nini ujumbe huu hauwezi kusomeka?';

  @override
  String get noKeyForThisMessage => 'Hii inaweza kutokea ikiwa ujumbe ulitumwa kabla hujaingia kwenye akaunti yako kwenye kifaa hiki.\n\nInawezekana pia kuwa mtumaji amezuia kifaa chako au kitu kimeenda vibaya na muunganisho wa intaneti.\n\nJe, unaweza kusoma ujumbe kwenye kikao kingine? Basi unaweza kuhamisha ujumbe kutoka kwake! Nenda kwenye Mipangilio > Vifaa na hakikisha kuwa vifaa vyako vimehakikishana. Unapofungua chumba mara inayofuata na vikao vyote viwili viko mbele, funguo zitahamishwa kiotomatiki.\n\nJe, hutaki kupoteza funguo unapoondoka au kubadilisha vifaa? Hakikisha kuwa umewezesha chelezo ya gumzo katika mipangilio.';

  @override
  String get newGroup => 'Kikundi kipya';

  @override
  String get newSpace => 'Nafasi mpya';

  @override
  String get enterSpace => 'Ingiza nafasi';

  @override
  String get enterRoom => 'Ingiza chumba';

  @override
  String get allSpaces => 'Nafasi zote';

  @override
  String numChats(String number) {
    return '$number gumzo';
  }

  @override
  String get hideUnimportantStateEvents => 'Ficha matukio yasiyo muhimu ya hali';

  @override
  String get hidePresences => 'Ficha Orodha ya Hali?';

  @override
  String get doNotShowAgain => 'Usionyeshe tena';

  @override
  String wasDirectChatDisplayName(String oldDisplayName) {
    return 'Gumzo tupu (ilikuwa $oldDisplayName)';
  }

  @override
  String get newSpaceDescription => 'Nafasi hukuruhusu kuunganisha gumzo zako na kujenga jumuiya za kibinafsi au za umma.';

  @override
  String get encryptThisChat => 'Simbua gumzo hili';

  @override
  String get disableEncryptionWarning => 'Kwa sababu za usalama huwezi kuzima usimbaji katika gumzo, ambapo imewezeshwa hapo awali.';

  @override
  String get sorryThatsNotPossible => 'Samahani... hiyo haiwezekani';

  @override
  String get deviceKeys => 'Funguo za kifaa:';

  @override
  String get reopenChat => 'Fungua tena gumzo';

  @override
  String get noBackupWarning => 'Onyo! Bila kuwezesha chelezo ya gumzo, utapoteza ufikiaji wa ujumbe wako uliofichwa. Inapendekezwa sana kuwezesha chelezo ya gumzo kwanza kabla ya kutoka.';

  @override
  String get noOtherDevicesFound => 'Hakuna vifaa vingine vilivyopatikana';

  @override
  String fileIsTooBigForServer(String max) {
    return 'Haiwezi kutuma! Seva inasaidia tu viambatisho hadi $max.';
  }

  @override
  String fileHasBeenSavedAt(String path) {
    return 'Faili imehifadhiwa katika $path';
  }

  @override
  String get jumpToLastReadMessage => 'Ruka kwenye ujumbe wa mwisho ulio soma';

  @override
  String get readUpToHere => 'Soma hadi hapa';

  @override
  String get jump => 'Ruka';

  @override
  String get openLinkInBrowser => 'Fungua kiungo kwenye kivinjari';

  @override
  String get reportErrorDescription => '😭 Oh hapana. Kitu kimeenda vibaya. Ikiwa unataka, unaweza kuripoti hitilafu hii kwa watengenezaji.';

  @override
  String get report => 'Ripoti';

  @override
  String get signInWithPassword => 'Ingia kwa nenosiri';

  @override
  String get pleaseTryAgainLaterOrChooseDifferentServer => 'Tafadhali jaribu tena baadaye au chagua seva tofauti.';

  @override
  String signInWith(String provider) {
    return 'Ingia na $provider';
  }

  @override
  String get profileNotFound => 'Mtumiaji hakuweza kupatikana kwenye seva. Labda kuna tatizo la muunganisho au mtumiaji hayupo.';

  @override
  String get setTheme => 'Weka mandhari:';

  @override
  String get setColorTheme => 'Weka mandhari ya rangi:';

  @override
  String get invite => 'Mwalika';

  @override
  String get inviteGroupChat => '📨 Mwalika gumzo la kikundi';

  @override
  String get invitePrivateChat => '📨 Mwalika gumzo la faragha';

  @override
  String get invalidInput => 'Ingizo si sahihi!';

  @override
  String wrongPinEntered(int seconds) {
    return 'Nambari ya siri si sahihi! Jaribu tena baada ya sekunde $seconds...';
  }

  @override
  String get pleaseEnterANumber => 'Tafadhali ingiza nambari kubwa kuliko 0';

  @override
  String get archiveRoomDescription => 'Gumzo litahamishwa kwenye kumbukumbu. Watumiaji wengine wataweza kuona kuwa umeondoka kwenye gumzo.';

  @override
  String get roomUpgradeDescription => 'Gumzo litaanzishwa tena na toleo jipya la chumba. Washiriki wote watajulishwa kuwa wanahitaji kubadilisha gumzo jipya. Unaweza kujua zaidi kuhusu matoleo ya chumba kwenye https://spec.matrix.org/latest/rooms/';

  @override
  String get removeDevicesDescription => 'Utatolewa kwenye kifaa hiki na hutaweza kupokea ujumbe tena.';

  @override
  String get banUserDescription => 'Mtumiaji atazuiwa kutoka kwenye gumzo na hatoweza kuingia tena hadi atakapozuiwa.';

  @override
  String get unbanUserDescription => 'Mtumiaji ataweza kuingia tena kwenye gumzo ikiwa atajaribu.';

  @override
  String get kickUserDescription => 'Mtumiaji atafukuzwa kutoka kwenye gumzo lakini hatazuiwa. Katika gumzo za umma, mtumiaji anaweza kujiunga tena wakati wowote.';

  @override
  String get makeAdminDescription => 'Ukifanya mtumiaji huyu kuwa msimamizi, huenda usiweze kubatilisha hili kwani watakuwa na ruhusa sawa na wewe.';

  @override
  String get pushNotificationsNotAvailable => 'Arifa za kusukuma hazipatikani';

  @override
  String get learnMore => 'Jifunze zaidi';

  @override
  String get yourGlobalUserIdIs => 'Kitambulisho chako cha mtumiaji wa kimataifa ni: ';

  @override
  String noUsersFoundWithQuery(String query) {
    return 'Samahani hakuna mtumiaji aliyepatikana na \"$query\". Tafadhali angalia kama umeandika vibaya.';
  }

  @override
  String get knocking => 'Gonga';

  @override
  String chatCanBeDiscoveredViaSearchOnServer(String server) {
    return 'Gumzo linaweza kugunduliwa kupitia utafutaji kwenye $server';
  }

  @override
  String get searchChatsRooms => 'Tafuta #gumzo, @watumiaji...';

  @override
  String get nothingFound => 'Hakuna kilichopatikana...';

  @override
  String get groupName => 'Jina la kikundi';

  @override
  String get groupDescription => 'Maelezo ya kikundi';

  @override
  String get groupConfiguration => 'Usanidi wa Kikundi';

  @override
  String get groupType => 'Aina ya Kikundi';

  @override
  String get groupTypeProduct => 'Kikundi cha Bidhaa';

  @override
  String get groupTypeGrameen => 'Kikundi cha Kawaida';

  @override
  String get groupTypeVoluntary => 'Kikundi cha Hiari';

  @override
  String get groupTypeFunding => 'Kikundi cha Ufadhili';

  @override
  String get groupTypeTemporary => 'Kikundi cha Muda';

  @override
  String get groupTypeMerryGoRound => 'Kikundi cha Merry Go Round';

  @override
  String get groupTypeDescriptionDefault => 'Wanachama wanaweza kuweka akiba na kukopesha ndani ya kikundi mara kwa mara chini ya mbinu ya grameen. Mikopo ni sawa na kiasi cha pesa wanachoweka kulingana na mipangilio ya leverage inayoruhusiwa.';

  @override
  String get groupTypeDescriptionFunding => 'Wanachama wa vikundi hivi huanzisha kwa lengo la kukopesha vikundi vya grameen na kupata faida. Hakuna muda maalum kwani wanachama huweka muda ambao wako tayari kufunga fedha zao kwa ajili ya kukopesha vikundi. Kuna uwezekano wa kufungwa kwa muda usiojulikana kwa baadhi ya fedha wakati vikundi vinapopigwa faini kwa kutofanya kazi.';

  @override
  String get groupTypeDescriptionTemporary => 'Haya ni makundi yaliyoanzishwa kwa madhumuni maalum na tarehe ya mwisho, yanaweza kuwa kwa hafla kama vile kuchangisha fedha za mazishi, harusi na mikutano ya utambulisho.';

  @override
  String get groupTypeDescriptionVoluntary => 'Vikundi vilivyopangwa ambavyo vina ratiba ya michango kutoka kwa wanachama. Hali hutokea katika maisha halisi kabla ya kikundi kufanya kitu kwa mtumiaji, mfano: 1. Katika mazingira ya kanisa, waumini wanaweza kuhitaji kutoa michango kila wiki kwa ajili ya sadaka za jumapili. kuwa na mchango wa 10% kila mwezi au kuwa na mchango wa kila mwaka. 2. Vyama vya walimu au vikundi vya wanachama huchangia ada fulani kila mara kwa ajili ya janga linalompata mwanachama, Wanaweza kuwa na hali kama vile ikiwa mwanachama hachangii basi wanapokuwa na matatizo hawatapata msaada sawa.';

  @override
  String get groupTypeDescriptionMerryGoRound => 'Wanachama huchangia na kuwa na ratiba ya mtu mmoja kupokea sehemu ya akiba ya mara kwa mara. Hii inaweza kuwa 70% ya michango na michango mingine inagawanywa sawa mwishoni mwa mzunguko wa kikundi.';

  @override
  String get groupTypeDescriptionProduct => 'Vikundi vya bidhaa ni vikundi vya mfumo vinavyosaidia na utendaji wa mfumo mzima';

  @override
  String get groupSecret => 'Siri ya Kikundi';

  @override
  String get currency => 'Sarafu';

  @override
  String get currencySelectDescription => 'Inawakilisha Sarafu itakayotumika kwa kushughulikia fedha za kikundi';

  @override
  String get periodicSetup => 'Vigezo vya Mzunguko';

  @override
  String get periodType => 'Aina ya Kipindi';

  @override
  String get periodicTypeDescription => 'Aina ya kipindi inawakilisha muda kati ya ambao wanachama wana wajibu kwa kikundi chao';

  @override
  String get periodTypeWeekly => 'Kila Wiki';

  @override
  String get periodTypeBiWeekly => 'Kila Wiki Mbili';

  @override
  String get periodTypeMonthly => 'Kila Mwezi';

  @override
  String get periodicSavingAmount => 'Kiasi cha Akiba ya Mara kwa Mara';

  @override
  String get periodicSavingAmountDescription => 'Kiasi kinachowekwa mara kwa mara na wanachama wa kikundi';

  @override
  String get finalizeGroupConfiguration => 'Kamilisha Usanidi wa Kikundi';

  @override
  String finalizeGroupConfigurationDescription(String groupName) {
    return 'Kikundi chako $groupName kitakuwa kimewekwa hivi karibuni';
  }

  @override
  String get groupTerminationDate => 'Tarehe ya Kukomesha Kikundi';

  @override
  String get groupTerminationDateDescription => 'Tarehe baada ya lengo la kikundi litakuwa limekamilika';

  @override
  String get groupCreationSuccessful => 'Ombi la Kuunda Kikundi Limefanikiwa';

  @override
  String groupCreationSuccessfulDescription(String groupName) {
    return 'Kikundi chenye jina $groupName kinasanidiwa, hii itachukua muda mfupi. \n\n Ongeza wanachama wote kwenye kikundi kutoka kwa mawasiliano yako';
  }

  @override
  String get createGroupAndInviteUsers => 'Unda kikundi na waalike watumiaji';

  @override
  String get groupCanBeFoundViaSearch => 'Kikundi kinaweza kupatikana kupitia utafutaji';

  @override
  String get wrongRecoveryKey => 'Samahani... hii haionekani kuwa ufunguo sahihi wa urejeshaji.';

  @override
  String get startConversation => 'Anza mazungumzo';

  @override
  String get commandHint_sendraw => 'Tuma json mbichi';

  @override
  String get databaseMigrationTitle => 'Hifadhidata imeboreshwa';

  @override
  String get databaseMigrationBody => 'Tafadhali subiri. Hii inaweza kuchukua muda.';

  @override
  String get leaveEmptyToClearStatus => 'Acha tupu ili kufuta hali yako.';

  @override
  String get select => 'Chagua';

  @override
  String get searchForUsers => 'Tafuta @watumiaji...';

  @override
  String get pleaseEnterYourCurrentPassword => 'Tafadhali ingiza nenosiri lako la sasa';

  @override
  String get newPassword => 'Nenosiri jipya';

  @override
  String get pleaseChooseAStrongPassword => 'Tafadhali chagua nenosiri lenye nguvu';

  @override
  String get passwordsDoNotMatch => 'Nenosiri hayalingani';

  @override
  String get passwordIsWrong => 'Nenosiri uliloingiza si sahihi';

  @override
  String get publicLink => 'Kiungo cha umma';

  @override
  String get publicChatAddresses => 'Anwani za gumzo za umma';

  @override
  String get createNewAddress => 'Unda anwani mpya';

  @override
  String get joinSpace => 'Jiunge na nafasi';

  @override
  String get publicSpaces => 'Nafasi za umma';

  @override
  String get addChatOrSubSpace => 'Ongeza gumzo au nafasi ndogo';

  @override
  String get subspace => 'Nafasi ndogo';

  @override
  String get decline => 'Kataa';

  @override
  String get thisDevice => 'Kifaa hiki:';

  @override
  String get initAppError => 'Hitilafu imetokea wakati wa kuanzisha programu';

  @override
  String get userRole => 'Nafasi ya mtumiaji';

  @override
  String minimumPowerLevel(String level) {
    return '$level ni kiwango cha chini cha nguvu.';
  }

  @override
  String searchIn(String chat) {
    return 'Tafuta katika gumzo \"$chat\"...';
  }

  @override
  String get searchMore => 'Tafuta zaidi...';

  @override
  String get gallery => 'Galeri';

  @override
  String get files => 'Faili';

  @override
  String databaseBuildErrorBody(String url, String error) {
    return 'Imeshindikana kujenga hifadhidata ya SQlite. Programu inajaribu kutumia hifadhidata ya zamani kwa sasa. Tafadhali ripoti hitilafu hii kwa watengenezaji kwenye $url. Ujumbe wa hitilafu ni: $error';
  }

  @override
  String sessionLostBody(String url, String error) {
    return 'Kikao chako kimepotea. Tafadhali ripoti hitilafu hii kwa watengenezaji kwenye $url. Ujumbe wa hitilafu ni: $error';
  }

  @override
  String restoreSessionBody(String url, String error) {
    return 'Programu sasa inajaribu kurejesha kikao chako kutoka kwenye chelezo. Tafadhali ripoti hitilafu hii kwa watengenezaji kwenye $url. Ujumbe wa hitilafu ni: $error';
  }

  @override
  String forwardMessageTo(String roomName) {
    return 'Tuma ujumbe mbele kwa $roomName?';
  }

  @override
  String get sendReadReceipts => 'Tuma risiti za kusoma';

  @override
  String get sendTypingNotificationsDescription => 'Washiriki wengine katika gumzo wanaweza kuona unapochapa ujumbe mpya.';

  @override
  String get sendReadReceiptsDescription => 'Washiriki wengine katika gumzo wanaweza kuona unapokuwa umesoma ujumbe.';

  @override
  String get formattedMessages => 'Ujumbe uliopangwa';

  @override
  String get formattedMessagesDescription => 'Onyesha maudhui tajiri ya ujumbe kama maandishi yenye ujasiri kwa kutumia markdown.';

  @override
  String get verifyOtherUser => '🔐 Thibitisha mtumiaji mwingine';

  @override
  String get verifyOtherUserDescription => 'Ukithibitisha mtumiaji mwingine, unaweza kuwa na uhakika kwamba unajua unayeandika naye kweli. 💪\n\nUnapoanza uthibitishaji, wewe na mtumiaji mwingine mtaona dirisha ibukizi kwenye programu. Hapo utaona mfululizo wa emoji au nambari ambazo unapaswa kulinganisha na kila mmoja.\n\nNjia bora ya kufanya hivi ni kukutana au kuanza simu ya video. 👭';

  @override
  String get verifyOtherDevice => '🔐 Thibitisha kifaa kingine';

  @override
  String get verifyOtherDeviceDescription => 'Unapothibitisha kifaa kingine, vifaa hivyo vinaweza kubadilishana funguo, kuongeza usalama wako kwa ujumla. 💪 Unapoanza uthibitishaji, dirisha ibukizi litaonekana kwenye programu kwenye vifaa vyote viwili. Hapo utaona mfululizo wa emoji au nambari ambazo unapaswa kulinganisha na kila mmoja. Ni bora kuwa na vifaa vyote karibu kabla ya kuanza uthibitishaji. 🤳';

  @override
  String acceptedKeyVerification(String sender) {
    return '$sender amekubali uthibitishaji wa ufunguo';
  }

  @override
  String canceledKeyVerification(String sender) {
    return '$sender amekataa uthibitishaji wa ufunguo';
  }

  @override
  String completedKeyVerification(String sender) {
    return '$sender amekamilisha uthibitishaji wa ufunguo';
  }

  @override
  String isReadyForKeyVerification(String sender) {
    return '$sender yuko tayari kwa uthibitishaji wa ufunguo';
  }

  @override
  String requestedKeyVerification(String sender) {
    return '$sender ameomba uthibitishaji wa ufunguo';
  }

  @override
  String startedKeyVerification(String sender) {
    return '$sender ameanza uthibitishaji wa ufunguo';
  }

  @override
  String get transparent => 'Wazi';

  @override
  String get incomingMessages => 'Ujumbe unaoingia';

  @override
  String get stickers => 'Stika';

  @override
  String get discover => 'Gundua';

  @override
  String get commandHint_ignore => 'Puuza kitambulisho cha matrix kilichopewa';

  @override
  String get commandHint_unignore => 'Ondoa kupuuza kitambulisho cha matrix kilichopewa';

  @override
  String unreadChatsInApp(String appname, String unread) {
    return '$appname: $unread gumzo haijasomwa';
  }

  @override
  String get noDatabaseEncryption => 'Usimbaji wa hifadhidata hauungwi mkono kwenye jukwaa hili';

  @override
  String thereAreCountUsersBlocked(Object count) {
    return 'Kwa sasa kuna $count watumiaji waliopigwa marufuku.';
  }

  @override
  String get restricted => 'Imewekewa vikwazo';

  @override
  String get knockRestricted => 'Gonga imewekewa vikwazo';

  @override
  String goToSpace(Object space) {
    return 'Nenda kwenye nafasi: $space';
  }

  @override
  String get markAsUnread => 'Tia alama kama haijasomwa';

  @override
  String userLevel(int level) {
    return '$level - Mtumiaji';
  }

  @override
  String moderatorLevel(int level) {
    return '$level - Msimamizi';
  }

  @override
  String adminLevel(int level) {
    return '$level - Msimamizi Mkuu';
  }

  @override
  String get changeGeneralChatSettings => 'Badilisha mipangilio ya jumla ya gumzo';

  @override
  String get inviteOtherUsers => 'Mwalika watumiaji wengine kwenye gumzo hili';

  @override
  String get changeTheChatPermissions => 'Badilisha ruhusa za gumzo';

  @override
  String get changeTheVisibilityOfChatHistory => 'Badilisha mwonekano wa historia ya gumzo';

  @override
  String get changeTheCanonicalRoomAlias => 'Badilisha anwani kuu ya umma ya gumzo';

  @override
  String get sendRoomNotifications => 'Tuma arifa za @room';

  @override
  String get changeTheDescriptionOfTheGroup => 'Badilisha maelezo ya gumzo';

  @override
  String get chatPermissionsDescription => 'Fafanua ni kiwango gani cha nguvu kinachohitajika kwa vitendo fulani katika gumzo hili. Viwango vya nguvu 0, 50 na 100 kawaida vinawakilisha watumiaji, wasimamizi na wasimamizi wakuu, lakini upunguzaji wowote unawezekana.';

  @override
  String updateInstalled(String version) {
    return '🎉 Sasisho $version limewekwa!';
  }

  @override
  String get changelog => 'Orodha ya mabadiliko';

  @override
  String get sendCanceled => 'Kutuma kumesitishwa';

  @override
  String get loginWithMatrixId => 'Ingia na Kitambulisho cha Matrix';

  @override
  String get discoverHomeservers => 'Gundua seva za nyumbani';

  @override
  String get whatIsAHomeserver => 'Seva ya nyumbani ni nini?';

  @override
  String get homeserverDescription => 'Data zako zote zinahifadhiwa kwenye seva ya nyumbani, kama mtoa huduma wa barua pepe. Unaweza kuchagua seva ya nyumbani unayotaka kutumia, wakati bado unaweza kuwasiliana na kila mtu. Jifunze zaidi kwenye https://matrix.org.';

  @override
  String get doesNotSeemToBeAValidHomeserver => 'Haionekani kuwa seva ya nyumbani inayooana. URL si sahihi?';

  @override
  String get calculatingFileSize => 'Inakokotoa ukubwa wa faili...';

  @override
  String get prepareSendingAttachment => 'Andaa kutuma kiambatisho...';

  @override
  String get sendingAttachment => 'Inatuma kiambatisho...';

  @override
  String get generatingVideoThumbnail => 'Inazalisha picha ndogo ya video...';

  @override
  String get compressVideo => 'Inakandamiza video...';

  @override
  String sendingAttachmentCountOfCount(int index, int length) {
    return 'Inatuma kiambatisho $index ya $length...';
  }

  @override
  String serverLimitReached(int seconds) {
    return 'Kikomo cha seva kimefikiwa! Inasubiri sekunde $seconds...';
  }

  @override
  String get oneOfYourDevicesIsNotVerified => 'Moja ya vifaa vyako haijathibitishwa';

  @override
  String get noticeChatBackupDeviceVerification => 'Kumbuka: Unapounganisha vifaa vyako vyote kwenye chelezo ya gumzo, vinathibitishwa kiotomatiki.';

  @override
  String get continueText => 'Endelea';

  @override
  String get welcomeText => 'Unda au jiunge na vikundi kwa lengo la kuweka akiba, kupata mkopo au kutoa mikopo kwa wanachama wengine';

  @override
  String get blur => 'Punguza:';

  @override
  String get opacity => 'Uwazi:';

  @override
  String get setWallpaper => 'Weka ukuta';

  @override
  String get manageAccount => 'Dhibiti akaunti';

  @override
  String get noContactInformationProvided => 'Seva haijatoa taarifa yoyote halali ya mawasiliano';

  @override
  String get contactServerAdmin => 'Wasiliana na msimamizi wa seva';

  @override
  String get contactServerSecurity => 'Wasiliana na usalama wa seva';

  @override
  String get supportPage => 'Ukurasa wa msaada';

  @override
  String get serverInformation => 'Taarifa za seva:';

  @override
  String get name => 'Jina';

  @override
  String get version => 'Toleo';

  @override
  String get website => 'Tovuti';

  @override
  String get compress => 'Kandamiza';

  @override
  String get boldText => 'Maandishi mazito';

  @override
  String get italicText => 'Maandishi ya italiki';

  @override
  String get strikeThrough => 'Futa maandishi';

  @override
  String get pleaseFillOut => 'Tafadhali jaza';

  @override
  String get invalidUrl => 'URL si sahihi';

  @override
  String get addLink => 'Ongeza kiungo';

  @override
  String get unableToJoinChat => 'Imeshindikana kujiunga na gumzo. Labda upande mwingine umefunga mazungumzo tayari.';

  @override
  String get previous => 'Iliyopita';

  @override
  String get otherPartyNotLoggedIn => 'Upande mwingine haujaingia kwa sasa na hivyo hauwezi kupokea ujumbe!';

  @override
  String appWantsToUseForLogin(String server) {
    return 'Tumia \'$server\' kuingia';
  }

  @override
  String get appWantsToUseForLoginDescription => 'Unaruhusu programu na tovuti kushiriki taarifa kuhusu wewe.';

  @override
  String get open => 'Fungua';

  @override
  String get waitingForServer => 'Inasubiri seva...';

  @override
  String get appIntroduction => 'Jiunge au unda vikundi vya mazungumzo vya kirafiki kwa lengo la kukua kifedha. Jifunze zaidi kwenye https://stawi.im au gusa *Endelea*.';

  @override
  String get newChatRequest => '📩 Ombi jipya la gumzo';

  @override
  String get contentNotificationSettings => 'Mipangilio ya arifa za maudhui';

  @override
  String get generalNotificationSettings => 'Mipangilio ya jumla ya arifa';

  @override
  String get roomNotificationSettings => 'Mipangilio ya arifa za chumba';

  @override
  String get userSpecificNotificationSettings => 'Mipangilio ya arifa maalum kwa mtumiaji';

  @override
  String get otherNotificationSettings => 'Mipangilio mingine ya arifa';

  @override
  String get notificationRuleContainsUserName => 'Ina Jina la Mtumiaji';

  @override
  String get notificationRuleContainsUserNameDescription => 'Inamuarifu mtumiaji wakati ujumbe unapo jina lake la mtumiaji.';

  @override
  String get notificationRuleMaster => 'Zima arifa zote';

  @override
  String get notificationRuleMasterDescription => 'Inazima sheria zote nyingine na kuzima arifa zote.';

  @override
  String get notificationRuleSuppressNotices => 'Zima Ujumbe wa Kiotomatiki';

  @override
  String get notificationRuleSuppressNoticesDescription => 'Inazima arifa kutoka kwa wateja wa kiotomatiki kama roboti.';

  @override
  String get notificationRuleInviteForMe => 'Mwaliko kwa Ajili Yangu';

  @override
  String get notificationRuleInviteForMeDescription => 'Inamuarifu mtumiaji wakati anaalikwa kwenye chumba.';

  @override
  String get notificationRuleMemberEvent => 'Tukio la Mwanachama';

  @override
  String get notificationRuleMemberEventDescription => 'Inazima arifa za matukio ya uanachama.';

  @override
  String get notificationRuleIsUserMention => 'Kutajwa kwa Mtumiaji';

  @override
  String get notificationRuleIsUserMentionDescription => 'Inamuarifu mtumiaji wakati anatajwa moja kwa moja kwenye ujumbe.';

  @override
  String get notificationRuleContainsDisplayName => 'Ina Jina la Kuonyesha';

  @override
  String get notificationRuleContainsDisplayNameDescription => 'Inamuarifu mtumiaji wakati ujumbe unapo jina lake la kuonyesha.';

  @override
  String get notificationRuleIsRoomMention => 'Kutajwa kwa Chumba';

  @override
  String get notificationRuleIsRoomMentionDescription => 'Inamuarifu mtumiaji kuhusu kutajwa kwa chumba.';

  @override
  String get notificationRuleRoomnotif => 'Arifa ya Chumba';

  @override
  String get notificationRuleRoomnotifDescription => 'Inamuarifu mtumiaji kuhusu ujumbe wa kuzima chumba.';

  @override
  String get notificationRuleTombstone => 'Tombstone';

  @override
  String get notificationRuleTombstoneDescription => 'Inamuarifu mtumiaji kuhusu ujumbe wa kuzima chumba.';

  @override
  String get notificationRuleReaction => 'Mmenyuko';

  @override
  String get notificationRuleReactionDescription => 'Inazima arifa za mmenyuko.';

  @override
  String get notificationRuleRoomServerAcl => 'ACL ya Seva ya Chumba';

  @override
  String get notificationRuleRoomServerAclDescription => 'Inazima arifa za orodha za udhibiti wa ufikiaji wa seva ya chumba (ACL).';

  @override
  String get notificationRuleSuppressEdits => 'Zima Uhariri';

  @override
  String get notificationRuleSuppressEditsDescription => 'Inazima arifa za ujumbe uliosahihishwa.';

  @override
  String get notificationRuleCall => 'Simu';

  @override
  String get notificationRuleCallDescription => 'Inamuarifu mtumiaji kuhusu simu.';

  @override
  String get notificationRuleEncryptedRoomOneToOne => 'Chumba Kilichosimbwa Kimoja kwa Kimoja';

  @override
  String get notificationRuleEncryptedRoomOneToOneDescription => 'Inamuarifu mtumiaji kuhusu ujumbe katika vyumba vilivyosimbwa vya mtu mmoja mmoja.';

  @override
  String get notificationRuleRoomOneToOne => 'Chumba Kimoja kwa Kimoja';

  @override
  String get notificationRuleRoomOneToOneDescription => 'Inamuarifu mtumiaji kuhusu ujumbe katika vyumba vya mtu mmoja mmoja.';

  @override
  String get notificationRuleMessage => 'Ujumbe';

  @override
  String get notificationRuleMessageDescription => 'Inamuarifu mtumiaji kuhusu ujumbe wa kawaida.';

  @override
  String get notificationRuleEncrypted => 'Imesimbwa';

  @override
  String get notificationRuleEncryptedDescription => 'Inamuarifu mtumiaji kuhusu ujumbe katika vyumba vilivyosimbwa.';

  @override
  String get notificationRuleJitsi => 'Jitsi';

  @override
  String get notificationRuleJitsiDescription => 'Inamuarifu mtumiaji kuhusu matukio ya wijeti ya Jitsi.';

  @override
  String get notificationRuleServerAcl => 'Zuia Matukio ya ACL ya Seva';

  @override
  String get notificationRuleServerAclDescription => 'Inazuia arifa za matukio ya ACL ya Seva.';

  @override
  String unknownPushRule(String rule) {
    return 'Sheria isiyojulikana ya kusukuma \'$rule\'';
  }

  @override
  String get deletePushRuleCanNotBeUndone => 'Ukifuta mpangilio huu wa arifa, huwezi kurudisha.';

  @override
  String get more => 'Zaidi';

  @override
  String get shareKeysWith => 'Shiriki funguo na...';

  @override
  String get shareKeysWithDescription => 'Vifaa vipi vinaaminika ili viweze kusoma ujumbe wako katika gumzo zilizofichwa?';

  @override
  String get allDevices => 'Vifaa vyote';

  @override
  String get crossVerifiedDevicesIfEnabled => 'Vifaa vilivyohakikiwa vikifaa kimewezeshwa';

  @override
  String get crossVerifiedDevices => 'Vifaa vilivyohakikiwa';

  @override
  String get verifiedDevicesOnly => 'Vifaa vilivyothibitishwa pekee';

  @override
  String get poll => 'Kura';

  @override
  String get question => 'Swali';

  @override
  String get answer => 'Jibu';

  @override
  String get resultsDisclosed => 'Matokeo yamewekwa wazi';

  @override
  String get resultsUndisclosed => 'Matokeo hayajawekwa wazi';

  @override
  String get addAnswer => 'Ongeza jibu';

  @override
  String get deleteAnswer => 'Futa jibu';

  @override
  String startedAPoll(String sender) {
    return '$sender ameanzisha kura';
  }

  @override
  String countVotes(int votes, num percentage) {
    String _temp0 = intl.Intl.pluralLogic(
      votes,
      locale: localeName,
      other: '$votes kura',
      one: '1 kura',
    );
    return '$_temp0 - $percentage%';
  }

  @override
  String get chatSettings => 'Mipangilio ya Gumzo';

  @override
  String get finance => 'Fedha';

  @override
  String get savingsOptions => 'Chaguo za Akiba';

  @override
  String get votingMode => 'Mfumo wa Kupiga Kura';

  @override
  String get normalVoting => 'Kupiga Kura Kwa Kawaida';

  @override
  String get delegatedVoting => 'Kupiga Kura Kwa Kujitolea';

  @override
  String get normalVotingDescription => 'Wanachama wote hupiga kura moja kwa moja kwenye mapendekezo. Kila mwanachama ana kura moja na maamuzi yanafanywa na wengi.';

  @override
  String get delegatedVotingDescription => 'Wanachama wanaweza kujitolea mamlaka yao ya kupiga kura kwa wawakilishi wanaowatrust, kuruhusu kufanya maamuzi kulingana na utaalamu.';

  @override
  String get votingThreshold => 'Asilimia ya Kupiga Kura';

  @override
  String get votingThresholdDescription => 'Asilimia ya wanachama inayohitajika kupiga kura kwenye kauli kabla ya hatua kuchukuliwa au kufutwa.';

  @override
  String get save => 'Hifadhi';

  @override
  String get enterContactName => 'Ingiza jina la mawasiliano';

  @override
  String errorFieldRequired(String fieldName) {
    return 'Uga huu ni tupu, tafadhali jaza';
  }

  @override
  String errorFieldShouldBeNumeric(String fieldName) {
    return 'Uga huu si nambari halali';
  }

  @override
  String errorFieldShouldBeInTheFuture(String fieldName) {
    return 'Uga huu unapaswa kuwa katika siku zijazo';
  }

  @override
  String get fixErrorsInStep => 'Tafadhali rekebisha makosa katika hatua hii kabla ya kuendelea';

  @override
  String get calendarSelection => 'Tarehe ya Akiba';

  @override
  String get selectStartDate => 'Chagua Tarehe ya Kuanzia';

  @override
  String get startDateDescription => 'Chagua tarehe ya kuanzia kwa kikundi chako. Tarehe zinazofuata za akiba zitaelezwa kulingana na aina ya kipindi chako.';

  @override
  String get groupSchedule => 'Ratiba ya Kikundi';

  @override
  String get futureSavingDates => 'Kulingana na chaguo lako, hizi ni tarehe zako zinazofuata za akiba:';

  @override
  String get totalBalance => 'Salio la Jumla';

  @override
  String get groupSettings => 'Mipangilio ya Kikundi';

  @override
  String get saveChanges => 'Hifadhi Mabadiliko';

  @override
  String get back => 'Nyuma';

  @override
  String get general => 'Jumla';

  @override
  String get loans => 'Mikopo';

  @override
  String get contributions => 'Michango';

  @override
  String settingsCount(int n) {
    return 'Mipangilio $n';
  }

  @override
  String get loanTenure => 'Muda wa Mkopo';

  @override
  String get loanTenureDescription => 'Idadi ya wiki ambazo wanachama wanaweza kukopa';

  @override
  String get groupTenure => 'Muda wa Kikundi';

  @override
  String get groupTenureDescription => 'Muda jumla wa kikundi kabla ya mgao wa hisa';

  @override
  String get interestRate => 'Kiwango cha Riba';

  @override
  String get interestRateDescription => 'Asilimia inayotozwa kwa mikopo';

  @override
  String get socialFundContribution => 'Mchango wa Mfuko wa Kijamii';

  @override
  String get socialFundContributionDescription => 'Kiasi ambacho kila mwanachama anachangia kwenye mfuko wa kijamii';

  @override
  String get allowEarlyWithdrawal => 'Ruhusu Kutoa Mapema';

  @override
  String get allowEarlyWithdrawalDescription => 'Iwapo wanachama wanaweza kutoa fedha kabla ya muda wa kikundi kuisha';

  @override
  String get requireSavingsBeforeLoan => 'Hitaji Akiba Kabla ya Mkopo';

  @override
  String get requireSavingsBeforeLoanDescription => 'Iwapo wanachama lazima wawe na akiba kabla ya kukopa';

  @override
  String get weeks => 'wiki';

  @override
  String get months => 'miezi';

  @override
  String get year => 'mwaka';
}
