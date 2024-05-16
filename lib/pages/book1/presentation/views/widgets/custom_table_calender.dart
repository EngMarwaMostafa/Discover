

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/app_colors.dart';
import '../../../../../core/app_text_style.dart';

class CustomTableCalendar extends StatefulWidget {
  const CustomTableCalendar({super.key});

  @override
  State<CustomTableCalendar> createState() => _CustomTableCalendarState();
}

class _CustomTableCalendarState extends State<CustomTableCalendar> {
  List<DateTime?> _rangeDatePickerValueWithDefaultValue = [
    DateTime(1999, 5, 6),
    DateTime(1999, 5, 21),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            height: 56.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: AppColors.primaryColor, width: 1),
            ),
           child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                _buildDefaultRangeDatePickerWithValue(),
      ])
      ) );
  }

  String _getValueText(
      CalendarDatePicker2Type datePickerType,
      List<DateTime?> values,
      ) {
    values =
        values.map((e) => e != null ? DateUtils.dateOnly(e) : null).toList();
    var valueText = (values.isNotEmpty ? values[0] : null)
        .toString()
        .replaceAll('00:00:00.000', '');

    if (datePickerType == CalendarDatePicker2Type.multi) {
      valueText = values.isNotEmpty
          ? values
          .map((v) => v.toString().replaceAll('00:00:00.000', ''))
          .join(', ')
          : 'null';
    } else if (datePickerType == CalendarDatePicker2Type.range) {
      if (values.isNotEmpty) {
        final startDate = values[0].toString().replaceAll('00:00:00.000', '');
        final endDate = values.length > 1
            ? values[1].toString().replaceAll('00:00:00.000', '')
            : 'null';
        valueText = '$startDate إلى $endDate';
      } else {
        return 'null';
      }
    }
    return valueText;
  }

  Widget _buildDefaultRangeDatePickerWithValue() {
    final config = CalendarDatePicker2Config(
   dayBorderRadius: const BorderRadius.all(Radius.elliptical(175,50)),
    dayTextStyle: AppTextStyle.text12W500Black(context),
      calendarType: CalendarDatePicker2Type.range,
      selectedDayHighlightColor: AppColors.primaryColor,
      selectedRangeHighlightColor: AppColors.calenderColor,
      
      weekdayLabelTextStyle: const TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        CalendarDatePicker2(
          config: config,
          value: _rangeDatePickerValueWithDefaultValue,
          onValueChanged: (dates) =>
              setState(() => _rangeDatePickerValueWithDefaultValue = dates),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('الاختيار:  '),
            const SizedBox(width: 10),
            Text(
              _getValueText(
                config.calendarType,
                _rangeDatePickerValueWithDefaultValue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
      ],
    );
  }

// DateTime today = DateTime.now();
  // void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
  //   setState(() {
  //     today = selectedDay;
  //   });
  // }
  //
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     height: 55.8.h,
  //     alignment: Alignment.center,
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(16.0),
  //       border: Border.all(color: AppColors.primaryColor, width: 1),
  //     ),
  //     child: Column(
  //       children: [
  //         SizedBox(
  //           height: 3.h,
  //         ),
  //         TableCalendar(
  //           headerStyle: HeaderStyle(
  //             formatButtonVisible: false,
  //             titleCentered: true,
  //             titleTextStyle: AppTextStyle.titleM,
  //             headerMargin: EdgeInsets.only(bottom: 3.h),
  //             leftChevronIcon: const ImageIcon(
  //               AssetImage(ImageAssetsConstants.chevronRight),
  //               size: 24,
  //               color: AppColors.blackColor,
  //             ),
  //             rightChevronIcon: const ImageIcon(
  //               AssetImage(ImageAssetsConstants.chevronLeft),
  //               size: 24,
  //               color: AppColors.blackColor,
  //             ),
  //           ),
  //           availableGestures: AvailableGestures.all,
  //           calendarStyle: CalendarStyle(
  //             selectedDecoration: BoxDecoration(
  //               color: AppColors.primaryColor,
  //               borderRadius: BorderRadius.circular(50),
  //               shape: BoxShape.rectangle,
  //             ),
  //             cellMargin: EdgeInsets.only(top: 2.5.h),
  //             defaultTextStyle: AppTextStyle.bodyS.copyWith(
  //               fontSize: 12.sp,
  //               fontWeight: FontWeight.w500,
  //             ),
  //             selectedTextStyle: AppTextStyle.bodyS.copyWith(
  //               fontSize: 12.sp,
  //               fontWeight: FontWeight.w500,
  //               color: AppColors.white,
  //             ),
  //             todayTextStyle: AppTextStyle.bodyS.copyWith(
  //               fontSize: 12.sp,
  //               fontWeight: FontWeight.w500,
  //               color: AppColors.white,
  //             ),
  //           ),
  //           daysOfWeekHeight: 4.8.h,
  //           daysOfWeekStyle: DaysOfWeekStyle(
  //             weekdayStyle: AppTextStyle.bodyS.copyWith(
  //               fontSize: 10.sp,
  //             ),
  //           ),
  //           selectedDayPredicate: (day) => isSameDay(day, today),
  //           focusedDay: today,
  //           firstDay: today,
  //           lastDay: DateTime.now().add(const Duration(days: 360)),
  //           onDaySelected: onDaySelected,
  //           locale: 'ar',
  //         ),
  //       ],
  //     ),
  //   );
  // }
}