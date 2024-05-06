import 'package:freezed_annotation/freezed_annotation.dart';

part 'race_model.freezed.dart';
part 'race_model.g.dart';

@freezed
class RaceModel with _$RaceModel {
  const factory RaceModel({
    required String name,
    String? organizer,
    required String date,
    required String country,
    required String city,
    required String image,
    required String type,
    required String distances,
  }) = _RaceModel;

  factory RaceModel.fromJson(Map<String, dynamic> json) =>
      _$RaceModelFromJson(json);
}
