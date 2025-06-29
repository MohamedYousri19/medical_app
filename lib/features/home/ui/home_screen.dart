import 'package:flutter/material.dart';
import 'package:medical_app/core/helpers/spacing.dart';
import 'package:medical_app/core/theming/styles.dart';
import 'package:medical_app/features/home/ui/widgets/blue_container.dart';
import 'package:medical_app/features/home/ui/widgets/custom_app_bar.dart';
import 'package:medical_app/features/home/ui/widgets/doctor_list/doctros_bloc_builder.dart';
import 'package:medical_app/features/home/ui/widgets/specialization_list/specializations_bloc_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            width: double.infinity,
              margin: EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
              child: Column(
                children: [
                  CustomAppBar(),
                  verticalSpace(15),
                  BlueContainer(),
                  verticalSpace(15),
                  Row(
                    children: [
                      Text(
                        'Doctor Speciality',
                        style: TextStyles.font18DarkBlueBold,
                      ),
                      const Spacer(),
                      Text(
                        'See All',
                        style: TextStyles.font13BlueRegular,
                      )
                    ],
                  ),
                  verticalSpace(15),
                  const SpecializationsBlocBuilder(),
                  verticalSpace(8),
                  const DoctorsBlocBuilder(),
                ],
              )
          )
      ),
    );
  }
}
