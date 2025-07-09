import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:medical_app/core/theming/colors.dart';
import 'package:medical_app/core/widgets/app_text_form_field.dart';

class TextFormFieldBox extends StatelessWidget {
  const TextFormFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w , vertical: 10.h ),
            prefixIcon: Icon(IconBroken.Search , size: 24,color: ColorsManager.lightGray,),
            hintText: 'Search',
            hintTextStyle: TextStyle(
              fontWeight: FontWeight.w600,
            ),
            validator: (value) {},
          ),
        ),
        Padding(
          padding:  EdgeInsetsDirectional.only(start: 15.0),
          child: SvgPicture.asset('assets/svgs/sort.svg'),
        ),
      ],
    );
  }
}
