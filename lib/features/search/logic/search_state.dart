import 'package:medical_app/features/search/data/models/doctor_details.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
  final DoctorDetails doctorDetails;

  SearchSuccess({required this.doctorDetails});
}
final class SearchError extends SearchState {
  final String error;

  SearchError({required this.error});
}

