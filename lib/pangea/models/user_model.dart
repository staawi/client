import 'package:country_picker/country_picker.dart';
import 'package:fluffychat/pangea/constants/local.key.dart';
import 'package:fluffychat/pangea/constants/model_keys.dart';
import 'package:fluffychat/pangea/controllers/pangea_controller.dart';
import 'package:fluffychat/pangea/enum/instructions_enum.dart';
import 'package:fluffychat/pangea/models/space_model.dart';
import 'package:fluffychat/widgets/matrix.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:matrix/matrix.dart';

import '../constants/language_constants.dart';
import 'language_model.dart';

class PUserModel {
  String access;
  String refresh;
  Profile? profile;

  PUserModel({required this.access, required this.refresh, this.profile});

  factory PUserModel.fromJson(Map<String, dynamic> json) => PUserModel(
        access: json[ModelKey.userAccess],
        refresh: json[ModelKey.userRefresh],
        profile: json[ModelKey.userProfile] != null
            ? Profile.fromJson(json[ModelKey.userProfile])
            : null,
      );

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[ModelKey.userAccess] = access;
    data[ModelKey.userRefresh] = refresh;
    if (profile != null) {
      data[ModelKey.userProfile] = profile!.toJson();
    }
    return data;
  }

  Future<void> save(PangeaController pangeaController) async {
    await pangeaController.pStoreService.save(
      PLocalKey.user,
      toJson(),
    );
  }
}

/// A list of all the fields in the user profile saved to matrix
enum MatrixProfileEnum {
  dateOfBirth,
  autoPlayMessages,
  itAutoPlay,
  activatedFreeTrial,
  interactiveTranslator,
  interactiveGrammar,
  immersionMode,
  definitions,
  showedItInstructions,
  showedClickMessage,
  showedBlurMeansTranslate,
  showedTooltipInstructions,
  createdAt,
  targetLanguage,
  sourceLanguage,
  country,
  publicProfile,
  autoIGC,
}

extension MatrixProfileEnumExtension on MatrixProfileEnum {
  String get title {
    switch (this) {
      case MatrixProfileEnum.dateOfBirth:
        return ModelKey.userDateOfBirth;
      case MatrixProfileEnum.autoPlayMessages:
        return ModelKey.autoPlayMessages;
      case MatrixProfileEnum.itAutoPlay:
        return ModelKey.itAutoPlay;
      case MatrixProfileEnum.activatedFreeTrial:
        return ModelKey.activatedTrialKey;
      case MatrixProfileEnum.interactiveTranslator:
        return ToolSetting.interactiveTranslator.toString();
      case MatrixProfileEnum.interactiveGrammar:
        return ToolSetting.interactiveGrammar.toString();
      case MatrixProfileEnum.immersionMode:
        return ToolSetting.immersionMode.toString();
      case MatrixProfileEnum.definitions:
        return ToolSetting.definitions.toString();
      case MatrixProfileEnum.autoIGC:
        return ToolSetting.autoIGC.toString();
      case MatrixProfileEnum.showedItInstructions:
        return InstructionsEnum.itInstructions.toString();
      case MatrixProfileEnum.showedClickMessage:
        return InstructionsEnum.clickMessage.toString();
      case MatrixProfileEnum.showedBlurMeansTranslate:
        return InstructionsEnum.blurMeansTranslate.toString();
      case MatrixProfileEnum.showedTooltipInstructions:
        return InstructionsEnum.tooltipInstructions.toString();
      case MatrixProfileEnum.createdAt:
        return ModelKey.userCreatedAt;
      case MatrixProfileEnum.targetLanguage:
        return ModelKey.l2LanguageKey;
      case MatrixProfileEnum.sourceLanguage:
        return ModelKey.l1LanguageKey;
      case MatrixProfileEnum.country:
        return ModelKey.userCountry;
      case MatrixProfileEnum.publicProfile:
        return ModelKey.publicProfile;
    }
  }

  ToolSetting? get asToolSetting {
    switch (this) {
      case MatrixProfileEnum.interactiveTranslator:
        return ToolSetting.interactiveTranslator;
      case MatrixProfileEnum.interactiveGrammar:
        return ToolSetting.interactiveGrammar;
      case MatrixProfileEnum.immersionMode:
        return ToolSetting.immersionMode;
      case MatrixProfileEnum.definitions:
        return ToolSetting.definitions;
      case MatrixProfileEnum.autoIGC:
        return ToolSetting.autoIGC;
      default:
        return null;
    }
  }
}

/// A wrapper around the matrix account data for the user profile.
/// Enables easy access to the profile data and saving new data.
/// The matrix profile doesn't function exactly the same as a 'model',
/// since all the data here is already stored in the client as account
/// data, and duplicating that data could lead to some inconsistenies.
/// So this class is more of a helper class to make it easier to
/// access and save the data.
class MatrixProfile {
  /// Convenience function get get user's account data from the client
  Map<String, BasicEvent> get accountData =>
      MatrixState.pangeaController.matrixState.client.accountData;

  /// Returns the profile of the user.
  ///
  /// The profile is retrieved from the user's account data
  /// using the key `ModelKey.userProfile`. It returns a `Map<String, dynamic>` object
  /// representing the user's profile information.
  Map<String, dynamic>? get profile =>
      accountData[ModelKey.userProfile]?.content;

  /// Retrieves the profile data for the given [key].
  ///
  /// This method first tries to get the data from the new profile format. If the data is found,
  /// it is returned. If not, it checks if the data is stored in the old format. If it is, the data
  /// is saved to the new format and returned.
  dynamic getProfileData(MatrixProfileEnum key) {
    // try to get the data from the new profile format
    if (profile?[key.title] != null) {
      return profile?[key.title];
    }

    // check if the data is stored in the old format
    // and if so, save it to the new format
    final prevFormatData = accountData[key.title]?.content[key.title];
    if (prevFormatData != null) {
      saveProfileData({key.title: prevFormatData});
      return prevFormatData;
    }
  }

  /// Saves the profile data by updating the current user's profile with the provided updates.
  ///
  /// The [updates] parameter is a map containing the key-value pairs of the profile fields to be updated.
  /// Only non-null values in the [updates] map will be applied to the current profile.
  ///
  /// If the updated profile is equal to the current profile, no changes will be made.
  ///
  /// If [waitForDataInSync] is true, the function will wait for the updated data in a sync update
  /// If this is set to false, after this function completes there may be a gap where the
  /// data has been sent but is not in the client's account data, as the sync update has not yet been received.
  Future<void> saveProfileData(
    Map<String, dynamic> updates, {
    waitForDataInSync = false,
  }) async {
    final currentProfile = toJson();
    for (final entry in updates.entries) {
      if (entry.value == null) continue;
      currentProfile[entry.key] = entry.value;
    }
    if (mapEquals(toJson(), currentProfile)) return;

    final PangeaController pangeaController = MatrixState.pangeaController;
    final Client client = pangeaController.matrixState.client;

    final List<String> profileKeys =
        MatrixProfileEnum.values.map((e) => e.title).toList();

    Future<SyncUpdate>? waitForUpdate;
    if (waitForDataInSync) {
      waitForUpdate = client.onSync.stream.firstWhere(
        (sync) =>
            sync.accountData != null &&
            sync.accountData!.any(
              (event) => event.content.keys.any((k) => profileKeys.contains(k)),
            ),
      );
    }
    await client.setAccountData(
      client.userID!,
      ModelKey.userProfile,
      currentProfile,
    );
    if (waitForDataInSync) await waitForUpdate;
  }

  /// Converts the Matrix Profile to a JSON representation.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {};
    for (final value in MatrixProfileEnum.values) {
      json[value.title] = profile?[value.title];
    }
    return json;
  }

  // below are some convenience methods for accessing the profile data
  // getProfileData could be used directly, but these methods reduce the
  // need for repeating the same code (like parsing DateTimes or
  // assigning default values to null booleans) when accessing specific values.

  DateTime? get dateOfBirth {
    final dob = getProfileData(MatrixProfileEnum.dateOfBirth);
    return dob != null ? DateTime.parse(dob) : null;
  }

  bool get autoPlayMessages =>
      getProfileData(MatrixProfileEnum.autoPlayMessages) ?? false;
  bool get itAutoPlay => getProfileData(MatrixProfileEnum.itAutoPlay) ?? false;
  bool get activatedFreeTrial =>
      getProfileData(MatrixProfileEnum.activatedFreeTrial) ?? false;
  bool get interactiveTranslator =>
      getProfileData(MatrixProfileEnum.interactiveTranslator) ?? true;
  bool get interactiveGrammar =>
      getProfileData(MatrixProfileEnum.interactiveGrammar) ?? true;
  bool get immersionMode =>
      getProfileData(MatrixProfileEnum.immersionMode) ?? false;
  bool get definitions => getProfileData(MatrixProfileEnum.definitions) ?? true;
  bool get autoIGC => getProfileData(MatrixProfileEnum.autoIGC) ?? false;

  /// A list of all the fields in MatrixProfileEnum that correspond to tool settings
  static List<MatrixProfileEnum> get toolSettings => [
        MatrixProfileEnum.interactiveTranslator,
        MatrixProfileEnum.interactiveGrammar,
        MatrixProfileEnum.immersionMode,
        MatrixProfileEnum.definitions,
        MatrixProfileEnum.autoIGC,
      ];

  /// A list of all the fields in MatrixProfileEnum that correspond to pangea profile values
  static List<MatrixProfileEnum> pangeaProfileFields = [
    MatrixProfileEnum.dateOfBirth,
    MatrixProfileEnum.createdAt,
    MatrixProfileEnum.targetLanguage,
    MatrixProfileEnum.sourceLanguage,
    MatrixProfileEnum.country,
    MatrixProfileEnum.publicProfile,
  ];
}

class Profile {
  // i'm considering removing this field because it's duplicating info in the
  // matrix database
  // String? fullName;
  final String createdAt;
  final String pangeaUserId;
  String? dateOfBirth;
  String? targetLanguage;
  String? sourceLanguage;

  String? country;
  bool publicProfile;

  Profile({
    // this.fullName,
    required this.createdAt,
    required this.pangeaUserId,
    this.dateOfBirth,
    this.targetLanguage,
    this.sourceLanguage,
    this.country,
    this.publicProfile = false,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    final l2 = LanguageModel.codeFromNameOrCode(
      json[ModelKey.l2LanguageKey] ?? LanguageKeys.unknownLanguage,
    );
    final l1 = LanguageModel.codeFromNameOrCode(
      json[ModelKey.l1LanguageKey] ?? LanguageKeys.unknownLanguage,
    );

    return Profile(
      // fullName: json[ModelKey.userFullName],
      createdAt: json[ModelKey.userCreatedAt],
      pangeaUserId: json[ModelKey.userPangeaUserId],
      dateOfBirth: json[ModelKey.userDateOfBirth],
      targetLanguage: l2,
      sourceLanguage: l1,
      publicProfile: json[ModelKey.publicProfile] ?? false,
      country: json[ModelKey.userCountry],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    // data[ModelKey.userFullName] = fullName;
    data[ModelKey.userCreatedAt] = createdAt;
    data[ModelKey.userPangeaUserId] = pangeaUserId;
    data[ModelKey.userDateOfBirth] = dateOfBirth;
    data[ModelKey.l2LanguageKey] = targetLanguage;
    data[ModelKey.l1LanguageKey] = sourceLanguage;
    data[ModelKey.publicProfile] = publicProfile;
    data[ModelKey.userCountry] = country;
    return data;
  }

  /// used in find a partner page for display partner's country
  String get flagEmoji {
    final String? countryName = this.country?.split(' (')[0];
    final Country? country = CountryService().findByName(countryName);
    return country?.flagEmoji ?? "";
  }

  String? countryDisplayName(BuildContext context) {
    final String? countryName = this.country?.split(' (')[0];
    final Country? country = CountryService().findByName(countryName);
    if (country?.countryCode == null) return null;
    switch (country!.countryCode) {
      case 'WW':
        return L10n.of(context)!.wwCountryDisplayName;
      case 'AF':
        return L10n.of(context)!.afCountryDisplayName;
      case 'AX':
        return L10n.of(context)!.axCountryDisplayName;
      case 'AL':
        return L10n.of(context)!.alCountryDisplayName;
      case 'DZ':
        return L10n.of(context)!.dzCountryDisplayName;
      case 'AS':
        return L10n.of(context)!.asCountryDisplayName;
      case 'AD':
        return L10n.of(context)!.adCountryDisplayName;
      case 'AO':
        return L10n.of(context)!.aoCountryDisplayName;
      case 'AI':
        return L10n.of(context)!.aiCountryDisplayName;
      case 'AG':
        return L10n.of(context)!.agCountryDisplayName;
      case 'AR':
        return L10n.of(context)!.arCountryDisplayName;
      case 'AM':
        return L10n.of(context)!.amCountryDisplayName;
      case 'AW':
        return L10n.of(context)!.awCountryDisplayName;
      case 'AC':
        return L10n.of(context)!.acCountryDisplayName;
      case 'AU':
        return L10n.of(context)!.auCountryDisplayName;
      case 'AT':
        return L10n.of(context)!.atCountryDisplayName;
      case 'AZ':
        return L10n.of(context)!.azCountryDisplayName;
      case 'BS':
        return L10n.of(context)!.bsCountryDisplayName;
      case 'BH':
        return L10n.of(context)!.bhCountryDisplayName;
      case 'BD':
        return L10n.of(context)!.bdCountryDisplayName;
      case 'BB':
        return L10n.of(context)!.bbCountryDisplayName;
      case 'BY':
        return L10n.of(context)!.byCountryDisplayName;
      case 'BE':
        return L10n.of(context)!.beCountryDisplayName;
      case 'BZ':
        return L10n.of(context)!.bzCountryDisplayName;
      case 'BJ':
        return L10n.of(context)!.bjCountryDisplayName;
      case 'BM':
        return L10n.of(context)!.bmCountryDisplayName;
      case 'BT':
        return L10n.of(context)!.btCountryDisplayName;
      case 'BO':
        return L10n.of(context)!.boCountryDisplayName;
      case 'BA':
        return L10n.of(context)!.baCountryDisplayName;
      case 'BW':
        return L10n.of(context)!.bwCountryDisplayName;
      case 'BR':
        return L10n.of(context)!.brCountryDisplayName;
      case 'IO':
        return L10n.of(context)!.ioCountryDisplayName;
      case 'VG':
        return L10n.of(context)!.vgCountryDisplayName;
      case 'BN':
        return L10n.of(context)!.bnCountryDisplayName;
      case 'BG':
        return L10n.of(context)!.bgCountryDisplayName;
      case 'BF':
        return L10n.of(context)!.bfCountryDisplayName;
      case 'BI':
        return L10n.of(context)!.biCountryDisplayName;
      case 'KH':
        return L10n.of(context)!.khCountryDisplayName;
      case 'CM':
        return L10n.of(context)!.cmCountryDisplayName;
      case 'CA':
        return L10n.of(context)!.caCountryDisplayName;
      case 'CV':
        return L10n.of(context)!.cvCountryDisplayName;
      case 'BQ':
        return L10n.of(context)!.bqCountryDisplayName;
      case 'KY':
        return L10n.of(context)!.kyCountryDisplayName;
      case 'CF':
        return L10n.of(context)!.cfCountryDisplayName;
      case 'TD':
        return L10n.of(context)!.tdCountryDisplayName;
      case 'CL':
        return L10n.of(context)!.clCountryDisplayName;
      case 'CN':
        return L10n.of(context)!.cnCountryDisplayName;
      case 'CX':
        return L10n.of(context)!.cxCountryDisplayName;
      case 'CC':
        return L10n.of(context)!.ccCountryDisplayName;
      case 'CO':
        return L10n.of(context)!.coCountryDisplayName;
      case 'KM':
        return L10n.of(context)!.kmCountryDisplayName;
      case 'CD':
        return L10n.of(context)!.cdCountryDisplayName;
      case 'CG':
        return L10n.of(context)!.cgCountryDisplayName;
      case 'CK':
        return L10n.of(context)!.ckCountryDisplayName;
      case 'CR':
        return L10n.of(context)!.crCountryDisplayName;
      case 'CI':
        return L10n.of(context)!.ciCountryDisplayName;
      case 'HR':
        return L10n.of(context)!.hrCountryDisplayName;
      case 'CU':
        return L10n.of(context)!.cuCountryDisplayName;
      case 'CW':
        return L10n.of(context)!.cwCountryDisplayName;
      case 'CY':
        return L10n.of(context)!.cyCountryDisplayName;
      case 'CZ':
        return L10n.of(context)!.czCountryDisplayName;
      case 'DK':
        return L10n.of(context)!.dkCountryDisplayName;
      case 'DJ':
        return L10n.of(context)!.djCountryDisplayName;
      case 'DM':
        return L10n.of(context)!.dmCountryDisplayName;
      case 'DO':
        return L10n.of(context)!.doCountryDisplayName;
      case 'TL':
        return L10n.of(context)!.tlCountryDisplayName;
      case 'EC':
        return L10n.of(context)!.ecCountryDisplayName;
      case 'EG':
        return L10n.of(context)!.egCountryDisplayName;
      case 'SV':
        return L10n.of(context)!.svCountryDisplayName;
      case 'GQ':
        return L10n.of(context)!.gqCountryDisplayName;
      case 'ER':
        return L10n.of(context)!.erCountryDisplayName;
      case 'EE':
        return L10n.of(context)!.eeCountryDisplayName;
      case 'SZ':
        return L10n.of(context)!.szCountryDisplayName;
      case 'ET':
        return L10n.of(context)!.etCountryDisplayName;
      case 'FK':
        return L10n.of(context)!.fkCountryDisplayName;
      case 'FO':
        return L10n.of(context)!.foCountryDisplayName;
      case 'FJ':
        return L10n.of(context)!.fjCountryDisplayName;
      case 'FI':
        return L10n.of(context)!.fiCountryDisplayName;
      case 'FR':
        return L10n.of(context)!.frCountryDisplayName;
      case 'GF':
        return L10n.of(context)!.gfCountryDisplayName;
      case 'PF':
        return L10n.of(context)!.pfCountryDisplayName;
      case 'GA':
        return L10n.of(context)!.gaCountryDisplayName;
      case 'GM':
        return L10n.of(context)!.gmCountryDisplayName;
      case 'GE':
        return L10n.of(context)!.geCountryDisplayName;
      case 'DE':
        return L10n.of(context)!.deCountryDisplayName;
      case 'GH':
        return L10n.of(context)!.ghCountryDisplayName;
      case 'GI':
        return L10n.of(context)!.giCountryDisplayName;
      case 'GR':
        return L10n.of(context)!.grCountryDisplayName;
      case 'GL':
        return L10n.of(context)!.glCountryDisplayName;
      case 'GD':
        return L10n.of(context)!.gdCountryDisplayName;
      case 'GP':
        return L10n.of(context)!.gpCountryDisplayName;
      case 'GU':
        return L10n.of(context)!.guCountryDisplayName;
      case 'GT':
        return L10n.of(context)!.gtCountryDisplayName;
      case 'GG':
        return L10n.of(context)!.ggCountryDisplayName;
      case 'GN':
        return L10n.of(context)!.gnCountryDisplayName;
      case 'GW':
        return L10n.of(context)!.gwCountryDisplayName;
      case 'GY':
        return L10n.of(context)!.gyCountryDisplayName;
      case 'HT':
        return L10n.of(context)!.htCountryDisplayName;
      case 'HM':
        return L10n.of(context)!.hmCountryDisplayName;
      case 'HN':
        return L10n.of(context)!.hnCountryDisplayName;
      case 'HK':
        return L10n.of(context)!.hkCountryDisplayName;
      case 'HU':
        return L10n.of(context)!.huCountryDisplayName;
      case 'IS':
        return L10n.of(context)!.isCountryDisplayName;
      case 'IN':
        return L10n.of(context)!.inCountryDisplayName;
      case 'ID':
        return L10n.of(context)!.idCountryDisplayName;
      case 'IR':
        return L10n.of(context)!.irCountryDisplayName;
      case 'IQ':
        return L10n.of(context)!.iqCountryDisplayName;
      case 'IE':
        return L10n.of(context)!.ieCountryDisplayName;
      case 'IM':
        return L10n.of(context)!.imCountryDisplayName;
      case 'IL':
        return L10n.of(context)!.ilCountryDisplayName;
      case 'IT':
        return L10n.of(context)!.itCountryDisplayName;
      case 'JM':
        return L10n.of(context)!.jmCountryDisplayName;
      case 'JP':
        return L10n.of(context)!.jpCountryDisplayName;
      case 'JE':
        return L10n.of(context)!.jeCountryDisplayName;
      case 'JO':
        return L10n.of(context)!.joCountryDisplayName;
      case 'KZ':
        return L10n.of(context)!.kzCountryDisplayName;
      case 'KE':
        return L10n.of(context)!.keCountryDisplayName;
      case 'KI':
        return L10n.of(context)!.kiCountryDisplayName;
      case 'XK':
        return L10n.of(context)!.xkCountryDisplayName;
      case 'KW':
        return L10n.of(context)!.kwCountryDisplayName;
      case 'KG':
        return L10n.of(context)!.kgCountryDisplayName;
      case 'LA':
        return L10n.of(context)!.laCountryDisplayName;
      case 'LV':
        return L10n.of(context)!.lvCountryDisplayName;
      case 'LB':
        return L10n.of(context)!.lbCountryDisplayName;
      case 'LS':
        return L10n.of(context)!.lsCountryDisplayName;
      case 'LR':
        return L10n.of(context)!.lrCountryDisplayName;
      case 'LY':
        return L10n.of(context)!.lyCountryDisplayName;
      case 'LI':
        return L10n.of(context)!.liCountryDisplayName;
      case 'LT':
        return L10n.of(context)!.ltCountryDisplayName;
      case 'LU':
        return L10n.of(context)!.luCountryDisplayName;
      case 'MO':
        return L10n.of(context)!.moCountryDisplayName;
      case 'MK':
        return L10n.of(context)!.mkCountryDisplayName;
      case 'MG':
        return L10n.of(context)!.mgCountryDisplayName;
      case 'MW':
        return L10n.of(context)!.mwCountryDisplayName;
      case 'MY':
        return L10n.of(context)!.myCountryDisplayName;
      case 'MV':
        return L10n.of(context)!.mvCountryDisplayName;
      case 'ML':
        return L10n.of(context)!.mlCountryDisplayName;
      case 'MT':
        return L10n.of(context)!.mtCountryDisplayName;
      case 'MH':
        return L10n.of(context)!.mhCountryDisplayName;
      case 'MQ':
        return L10n.of(context)!.mqCountryDisplayName;
      case 'MR':
        return L10n.of(context)!.mrCountryDisplayName;
      case 'MU':
        return L10n.of(context)!.muCountryDisplayName;
      case 'YT':
        return L10n.of(context)!.ytCountryDisplayName;
      case 'MX':
        return L10n.of(context)!.mxCountryDisplayName;
      case 'FM':
        return L10n.of(context)!.fmCountryDisplayName;
      case 'MD':
        return L10n.of(context)!.mdCountryDisplayName;
      case 'MC':
        return L10n.of(context)!.mcCountryDisplayName;
      case 'MN':
        return L10n.of(context)!.mnCountryDisplayName;
      case 'ME':
        return L10n.of(context)!.meCountryDisplayName;
      case 'MS':
        return L10n.of(context)!.msCountryDisplayName;
      case 'MA':
        return L10n.of(context)!.maCountryDisplayName;
      case 'MZ':
        return L10n.of(context)!.mzCountryDisplayName;
      case 'MM':
        return L10n.of(context)!.mmCountryDisplayName;
      case 'NA':
        return L10n.of(context)!.naCountryDisplayName;
      case 'NR':
        return L10n.of(context)!.nrCountryDisplayName;
      case 'NP':
        return L10n.of(context)!.npCountryDisplayName;
      case 'NL':
        return L10n.of(context)!.nlCountryDisplayName;
      case 'NC':
        return L10n.of(context)!.ncCountryDisplayName;
      case 'NZ':
        return L10n.of(context)!.nzCountryDisplayName;
      case 'NI':
        return L10n.of(context)!.niCountryDisplayName;
      case 'NE':
        return L10n.of(context)!.neCountryDisplayName;
      case 'NG':
        return L10n.of(context)!.ngCountryDisplayName;
      case 'NU':
        return L10n.of(context)!.nuCountryDisplayName;
      case 'NF':
        return L10n.of(context)!.nfCountryDisplayName;
      case 'KP':
        return L10n.of(context)!.kpCountryDisplayName;
      case 'MP':
        return L10n.of(context)!.mpCountryDisplayName;
      case 'NO':
        return L10n.of(context)!.noCountryDisplayName;
      case 'OM':
        return L10n.of(context)!.omCountryDisplayName;
      case 'PK':
        return L10n.of(context)!.pkCountryDisplayName;
      case 'PW':
        return L10n.of(context)!.pwCountryDisplayName;
      case 'PS':
        return L10n.of(context)!.psCountryDisplayName;
      case 'PA':
        return L10n.of(context)!.paCountryDisplayName;
      case 'PG':
        return L10n.of(context)!.pgCountryDisplayName;
      case 'PY':
        return L10n.of(context)!.pyCountryDisplayName;
      case 'PE':
        return L10n.of(context)!.peCountryDisplayName;
      case 'PH':
        return L10n.of(context)!.phCountryDisplayName;
      case 'PL':
        return L10n.of(context)!.plCountryDisplayName;
      case 'PT':
        return L10n.of(context)!.ptCountryDisplayName;
      case 'PR':
        return L10n.of(context)!.prCountryDisplayName;
      case 'QA':
        return L10n.of(context)!.qaCountryDisplayName;
      case 'RE':
        return L10n.of(context)!.reCountryDisplayName;
      case 'RO':
        return L10n.of(context)!.roCountryDisplayName;
      case 'RU':
        return L10n.of(context)!.ruCountryDisplayName;
      case 'RW':
        return L10n.of(context)!.rwCountryDisplayName;
      case 'BL':
        return L10n.of(context)!.blCountryDisplayName;
      case 'SH':
        return L10n.of(context)!.shCountryDisplayName;
      case 'KN':
        return L10n.of(context)!.knCountryDisplayName;
      case 'LC':
        return L10n.of(context)!.lcCountryDisplayName;
      case 'MF':
        return L10n.of(context)!.mfCountryDisplayName;
      case 'PM':
        return L10n.of(context)!.pmCountryDisplayName;
      case 'VC':
        return L10n.of(context)!.vcCountryDisplayName;
      case 'WS':
        return L10n.of(context)!.wsCountryDisplayName;
      case 'SM':
        return L10n.of(context)!.smCountryDisplayName;
      case 'ST':
        return L10n.of(context)!.stCountryDisplayName;
      case 'SA':
        return L10n.of(context)!.saCountryDisplayName;
      case 'SN':
        return L10n.of(context)!.snCountryDisplayName;
      case 'RS':
        return L10n.of(context)!.rsCountryDisplayName;
      case 'SC':
        return L10n.of(context)!.scCountryDisplayName;
      case 'SL':
        return L10n.of(context)!.slCountryDisplayName;
      case 'SG':
        return L10n.of(context)!.sgCountryDisplayName;
      case 'SX':
        return L10n.of(context)!.sxCountryDisplayName;
      case 'SK':
        return L10n.of(context)!.skCountryDisplayName;
      case 'SI':
        return L10n.of(context)!.siCountryDisplayName;
      case 'SB':
        return L10n.of(context)!.sbCountryDisplayName;
      case 'SO':
        return L10n.of(context)!.soCountryDisplayName;
      case 'ZA':
        return L10n.of(context)!.zaCountryDisplayName;
      case 'GS':
        return L10n.of(context)!.gsCountryDisplayName;
      case 'KR':
        return L10n.of(context)!.krCountryDisplayName;
      case 'SS':
        return L10n.of(context)!.ssCountryDisplayName;
      case 'ES':
        return L10n.of(context)!.esCountryDisplayName;
      case 'LK':
        return L10n.of(context)!.lkCountryDisplayName;
      case 'SD':
        return L10n.of(context)!.sdCountryDisplayName;
      case 'SR':
        return L10n.of(context)!.srCountryDisplayName;
      case 'SJ':
        return L10n.of(context)!.sjCountryDisplayName;
      case 'SE':
        return L10n.of(context)!.seCountryDisplayName;
      case 'CH':
        return L10n.of(context)!.chCountryDisplayName;
      case 'SY':
        return L10n.of(context)!.syCountryDisplayName;
      case 'TW':
        return L10n.of(context)!.twCountryDisplayName;
      case 'TJ':
        return L10n.of(context)!.tjCountryDisplayName;
      case 'TZ':
        return L10n.of(context)!.tzCountryDisplayName;
      case 'TH':
        return L10n.of(context)!.thCountryDisplayName;
      case 'TG':
        return L10n.of(context)!.tgCountryDisplayName;
      case 'TK':
        return L10n.of(context)!.tkCountryDisplayName;
      case 'TO':
        return L10n.of(context)!.toCountryDisplayName;
      case 'TT':
        return L10n.of(context)!.ttCountryDisplayName;
      case 'TN':
        return L10n.of(context)!.tnCountryDisplayName;
      case 'TR':
        return L10n.of(context)!.trCountryDisplayName;
      case 'TM':
        return L10n.of(context)!.tmCountryDisplayName;
      case 'TC':
        return L10n.of(context)!.tcCountryDisplayName;
      case 'TV':
        return L10n.of(context)!.tvCountryDisplayName;
      case 'VI':
        return L10n.of(context)!.viCountryDisplayName;
      case 'UG':
        return L10n.of(context)!.ugCountryDisplayName;
      case 'UA':
        return L10n.of(context)!.uaCountryDisplayName;
      case 'AE':
        return L10n.of(context)!.aeCountryDisplayName;
      case 'GB':
        return L10n.of(context)!.gbCountryDisplayName;
      case 'US':
        return L10n.of(context)!.usCountryDisplayName;
      case 'UY':
        return L10n.of(context)!.uyCountryDisplayName;
      case 'UZ':
        return L10n.of(context)!.uzCountryDisplayName;
      case 'VU':
        return L10n.of(context)!.vuCountryDisplayName;
      case 'VA':
        return L10n.of(context)!.vaCountryDisplayName;
      case 'VE':
        return L10n.of(context)!.veCountryDisplayName;
      case 'VN':
        return L10n.of(context)!.vnCountryDisplayName;
      case 'WF':
        return L10n.of(context)!.wfCountryDisplayName;
      case 'EH':
        return L10n.of(context)!.ehCountryDisplayName;
      case 'YE':
        return L10n.of(context)!.yeCountryDisplayName;
      case 'ZM':
        return L10n.of(context)!.zmCountryDisplayName;
      case 'ZW':
        return L10n.of(context)!.zwCountryDisplayName;
    }
    return null;
  }
}
