// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClinicList _$$_ClinicListFromJson(Map<String, dynamic> json) =>
    _$_ClinicList(
      id: json['id'] as int?,
      clinicListAttribute: ClinicListAttribute.fromJson(
          json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ClinicListToJson(_$_ClinicList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.clinicListAttribute,
    };
