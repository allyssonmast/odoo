// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => Invoice(
      invoiceNumber: json['invoiceNumber'] as String,
      issuedDate: DateTime.parse(json['issuedDate'] as String),
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
      'invoiceNumber': instance.invoiceNumber,
      'issuedDate': instance.issuedDate.toIso8601String(),
      'amount': instance.amount,
    };
