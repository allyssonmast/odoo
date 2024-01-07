import 'package:json_annotation/json_annotation.dart';
part 'invoice.g.dart';

@JsonSerializable()
class Invoice {
  String invoiceNumber;
  DateTime issuedDate;
  double amount;

  Invoice(
      {required this.invoiceNumber,
      required this.issuedDate,
      required this.amount});

  factory Invoice.fromJson(Map<String, dynamic> json) =>
      _$InvoiceFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
