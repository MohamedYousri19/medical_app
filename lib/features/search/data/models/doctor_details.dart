import 'package:json_annotation/json_annotation.dart';
part 'doctor_details.g.dart';

@JsonSerializable()
class DoctorDetails{
  @JsonKey(name: 'data')
  List<DoctorDetailsData?>? doctorDetailsDataList;
  DoctorDetails({
    this.doctorDetailsDataList,
  });
  factory DoctorDetails.fromJson(Map<String, dynamic> json) => _$DoctorDetailsFromJson(json);
}

@JsonSerializable()
class DoctorDetailsData{
  int? id ;
  String? name ;
  String? email ;
  String? phone ;
  String? photo ;
  String? gender ;
  String? address ;
  String? degree ;
  Specialization? specialization ;
  City? city ;
  DoctorDetailsData({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.degree,
    this.specialization,
    this.city,
});
  factory DoctorDetailsData.fromJson(Map<String, dynamic> json) => _$DoctorDetailsDataFromJson(json);
}

@JsonSerializable()
class Specialization{
  int? id ;
  String? name ;
  Specialization({
    this.id,
    this.name,
});
  factory Specialization.fromJson(Map<String, dynamic> json) => _$SpecializationFromJson(json);
}

@JsonSerializable()
class City{
  int? id ;
  String? name ;
  City({
    this.id,
    this.name,
});
  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}