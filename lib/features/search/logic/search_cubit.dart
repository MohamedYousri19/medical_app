import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/search/data/repos/search_repos.dart';
import 'package:medical_app/features/search/logic/search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo _searchRepo;

  SearchCubit(this._searchRepo) : super(SearchInitial());

  static SearchCubit get(context) => BlocProvider.of(context);

  void getAllDoctors() async {
    emit(SearchLoading());
    final response = await _searchRepo.getAllDoctors();
    response.when(
      success: (doctorDetails) {
        emit(SearchSuccess(doctorDetails: doctorDetails));
      },
      failure: (error) {
        emit(SearchError(error: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
