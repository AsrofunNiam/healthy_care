import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthy_care/src/app/model/clinic_list_attribute.dart';

part 'clinic_list.freezed.dart';
part 'clinic_list.g.dart';

@freezed
class ClinicList with _$ClinicList {
  factory ClinicList({
    int? id,
    @JsonKey(name: 'attributes', fromJson: ClinicListAttribute.fromJson)
    required ClinicListAttribute? clinicListAttribute,
  }) = _ClinicList;
  const ClinicList._();

  factory ClinicList.fromJson(Map<String, dynamic> json) =>
      _$ClinicListFromJson(json);
}
