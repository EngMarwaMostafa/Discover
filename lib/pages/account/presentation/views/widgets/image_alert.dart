import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_strings.dart';
import '../../../../../core/app_text_style.dart';
import '../../../../../core/image_assets_consts.dart';
import '../../../../../widgets/reusable_components.dart';
import '../../../../bookings2/presentation/views/widgets/custom_book_button.dart';

void imageAlert(BuildContext context) {  int selectedOption = 1;
showDialog(
    context: context,
    builder: (BuildContext context) =>
        AlertDialog(
                      title: Text(AppStrings.changePhoto,style: AppTextStyle.text16W500Black(context),),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      content: SizedBox(
                        height: 15.h,
                        width: 91.w,
                        child: StatefulBuilder(
                            builder:
                                (BuildContext context,
                                void Function(void Function()) setState) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        value: 1,
                                        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                          if (states.contains(MaterialState.disabled)) {
                                            return Colors.black.withOpacity(.32);
                                          }
                                          return Colors.blue;
                                        }),
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                      Text(AppStrings.currentImg,style: AppTextStyle.text14W500Black(context),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                          if (states.contains(MaterialState.disabled)) {
                                            return Colors.blue.withOpacity(.32);
                                          }
                                          return Colors.blue;
                                        }),
                                        value: 2,
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!;
                                          });
                                        },
                                      ),
                                      Text(AppStrings.galleryImg,style: AppTextStyle.text14W500Black(context),),
                                    ],
                                  ),
                                ],
                              );
                            }
                        ),
                      ),
                    ));
          }


