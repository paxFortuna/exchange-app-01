// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeResult _$ExchangeResultFromJson(Map<String, dynamic> json) =>
    ExchangeResult(
      json['time_last_update_unix'] as int,
      json['base_code'] as String,
      Map<String, num>.from(json['conversion_rates'] as Map),
    );

Map<String, dynamic> _$ExchangeResultToJson(ExchangeResult instance) =>
    <String, dynamic>{
      'time_last_update_unix': instance.lastUpdateTime,
      'base_code': instance.baseCode,
      'conversion_rates': instance.conversionRates,
    };
