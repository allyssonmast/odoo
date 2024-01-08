import 'package:json_annotation/json_annotation.dart';
part 'invoice.g.dart';

@JsonSerializable()
class Records {
  String invoiceNumber;
  DateTime issuedDate;
  double amount;
  Duration duration;

  Records(
      {required this.invoiceNumber,
      required this.issuedDate,
        required this.duration,
      required this.amount});

  factory Records.fromJson(Map<String, dynamic> json) =>
      _$RecordsFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsToJson(this);
}
