import 'package:flutter/cupertino.dart';
import 'package:medical_app/features/search/data/models/doctor_details.dart';

import 'search_doctors_list_view_item.dart';

class SearchListView extends StatelessWidget {
  final DoctorDetails? doctorsModel;
  const SearchListView({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: doctorsModel?.doctorDetailsDataList!.length,
        itemBuilder: (context, index) => SearchDoctorsListViewItem(
          doctorsModel: doctorsModel?.doctorDetailsDataList![index],
        ),
      ),
    );
  }
}
