import 'package:freezed_annotation/freezed_annotation.dart';

part 'clinic_list_attribute.freezed.dart';
part 'clinic_list_attribute.g.dart';

@freezed
class ClinicListAttribute with _$ClinicListAttribute {
  factory ClinicListAttribute(
      {String? name,
      String? description,
      String? latitude,
      String? longitude,
      String? address,
      String? createdAt,
      String? updatedAt,
      String? publishedAt,
      String? photo,
      String? userId,
      double? rating}) = _ClinicListAttribute;
  const ClinicListAttribute._();

  factory ClinicListAttribute.fromJson(Map<String, dynamic> json) =>
      _$ClinicListAttributeFromJson(json);
}
