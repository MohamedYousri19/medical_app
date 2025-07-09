import 'package:flutter/material.dart';
import 'package:medical_app/core/helpers/spacing.dart';
import 'package:medical_app/core/theming/styles.dart';
import 'package:medical_app/features/search/ui/widgets/search_bloc_builder.dart';
import 'package:medical_app/features/search/ui/widgets/text_form_field_box.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:  Text('Recommendation Doctor' , style: TextStyles.font18DarkBlueBold,),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
        child: Column(
          children: [
            TextFormFieldBox(),
            verticalSpace(20),
            SearchBlocBuilder()
          ],
        ),
      ),
    );
  }
}
