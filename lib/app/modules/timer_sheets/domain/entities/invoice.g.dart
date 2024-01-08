// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Records _$RecordsFromJson(Map<String, dynamic> json) => Records(
      invoiceNumber: json['invoiceNumber'] as String,
      issuedDate: DateTime.parse(json['issuedDate'] as String),
      duration: Duration(microseconds: json['duration'] as int),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$RecordsToJson(Records instance) => <String, dynamic>{
      'invoiceNumber': instance.invoiceNumber,
      'issuedDate': instance.issuedDate.toIso8601String(),
      'amount': instance.amount,
      'duration': instance.duration.inMicroseconds,
    };
