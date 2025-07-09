import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_app/features/search/logic/search_cubit.dart';
import 'package:medical_app/features/search/logic/search_state.dart';
import 'package:medical_app/features/search/ui/widgets/search_doctors_shimmer_loading.dart';
import 'package:medical_app/features/search/ui/widgets/search_list_view.dart';

class SearchBlocBuilder extends StatelessWidget {
  const SearchBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>
      current is SearchSuccess || current is SearchError || current is SearchLoading,
      builder: (context, state) {
        if(state is SearchLoading){
          return SearchDoctorsShimmerLoading();
        }
        if(state is SearchSuccess){
          return setupSuccess(state.doctorDetails);
        }
        if(state is SearchError){
          return Text(state.error);
        }
        return const SizedBox.shrink();
      },
    );
  }
}

Widget setupSuccess(doctorsList) {
  return SearchListView(
    doctorsModel: doctorsList,
  );
}

Widget setupError() {
  return const SizedBox.shrink();
}
