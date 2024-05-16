
import 'package:discover/core/app_colors.dart';
import 'package:discover/core/image_assets_consts.dart';
import 'package:discover/pages/select_city/presentation/controller/select_city_controller.dart';
import 'package:discover/widgets/search_edit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/app_strings.dart';
import '../../../../core/app_text_style.dart';


class SelectCityView extends StatefulWidget {
  const SelectCityView({super.key});

  @override
  State<SelectCityView> createState() => _SelectCityViewState();
}

class _SelectCityViewState extends State<SelectCityView> {
  final SelectCityController controller=Get.put(SelectCityController());
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    controller.getCity().then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back,
          ),
        ),
        toolbarHeight: 12.h,
        title: Text(
          AppStrings.city,
          style: AppTextStyle.text18W600Black(context),
        ),
        centerTitle: true,
      ),
      body: isLoading? const Center(child: CircularProgressIndicator())
        :
    SingleChildScrollView(
        child: Column(
          children: [
          //  const Search(),
            SizedBox(
              height:75.h,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 12.0, // spacing between rows
                 crossAxisSpacing: 12.0, // spacing between columns
               ),
                padding: const EdgeInsets.all(8.0), // padding around the grid
                itemCount:controller.citiesList.length, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                    width: 42.w,
                    height: 23.h,
                    decoration: BoxDecoration(
                     border: Border.all(
                       color: AppColors.primaryColor
                     ),
                     borderRadius: BorderRadius.circular(10)
                     // color: AppColors.primaryColor,
                    ),
                    child:  Column(
                      children: [
                        SizedBox(height: 0.5.h,),
                        SizedBox(
                            width:41.w,
                            height: 17.h,
                            child: Image.asset(
                              controller.citiesList[index].data!.first.image!
                              ,fit: BoxFit.fill,),),
                        Text(
                         controller.citiesList[index].data!.first.title!
                        ,style: AppTextStyle.text16W600Black(context),),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

