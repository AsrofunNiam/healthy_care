// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clinic_list_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ClinicListAttribute _$$_ClinicListAttributeFromJson(
        Map<String, dynamic> json) =>
    _$_ClinicListAttribute(
      name: json['name'] as String?,
      description: json['description'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      address: json['address'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?,
      photo: json['photo'] as String?,
      userId: json['userId'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ClinicListAttributeToJson(
        _$_ClinicListAttribute instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'address': instance.address,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'photo': instance.photo,
      'userId': instance.userId,
      'rating': instance.rating,
    };
