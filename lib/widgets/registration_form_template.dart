import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gsform/gs_form/enums/field_status.dart';
import 'package:gsform/gs_form/enums/required_check_list_enum.dart';
import 'package:gsform/gs_form/model/data_model/check_data_model.dart';
import 'package:gsform/gs_form/model/data_model/date_data_model.dart';
import 'package:gsform/gs_form/model/data_model/radio_data_model.dart';
import 'package:gsform/gs_form/model/data_model/spinner_data_model.dart';
import 'package:gsform/gs_form/values/colors.dart';
import 'package:gsform/gs_form/widget/field.dart';
import 'package:gsform/gs_form/widget/form.dart';
import 'package:gsform/gs_form/widget/section.dart';
// import 'package:lottie/lottie.dart';

class SingleSectionForm extends StatelessWidget {
  SingleSectionForm({Key? key}) : super(key: key);

  late GSForm form;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: form = GSForm.singleSection(
                  context,
                  fields: [
                    GSField.text(
                      status: GSFieldStatusEnum.disabled,
                      tag: 'Username',
                      title: 'Username',
                      minLine: 1,
                      maxLine: 1,
                      weight: 6,
                      hint: 'jhon',
                      value: "Username",
                      required: false,
                      errorMessage: 'please enter a Username',
                    ),
                    // GSField.text(
                    //   value: "lastName",
                    //   tag: 'lastName',
                    //   title: 'Last name',
                    //   minLine: 1,
                    //   maxLine: 1,
                    //   weight: 6,
                    //   required: true,
                    // ),
                    GSField.password(
                      tag: 'password',
                      title: 'Password',
                      helpMessage: 'contain letter and number',
                      errorMessage: 'error',
                      weight: 12,
                      required: true,
                    ),
                    // GSField.datePicker(
                    //   tag: 'licenceExpireDate',
                    //   title: 'Birth Date',
                    //   weight: 12,
                    //   required: true,
                    //   postfixWidget: const Icon(
                    //     Icons.calendar_month,
                    //     color: Color(0xff676767),
                    //   ),
                    //   displayDateType: GSDateFormatType.fullText,
                    //   initialDate: GSDate(
                    //     day: DateTime.now().day,
                    //     month: DateTime.now().month,
                    //     year: DateTime.now().year,
                    //   ),
                    //   calendarType: GSCalendarType.gregorian,
                    // ),
                    // GSField.spinner(
                    //   tag: 'customer_type',
                    //   required: false,
                    //   weight: 12,
                    //   title: 'Gender',
                    //   items: [
                    //     SpinnerDataModel(
                    //       name: 'man',
                    //       id: 1,
                    //     ),
                    //     SpinnerDataModel(
                    //       name: 'woman',
                    //       id: 2,
                    //     ),
                    //   ],
                    // ),
                    // GSField.mobile(
                    //   tag: 'mobile',
                    //   title: 'Phone number',
                    //   maxLength: 11,
                    //   helpMessage: '9357814747',
                    //   weight: 12,
                    //   required: false,
                    //   errorMessage: 'some error',
                    // ),
                    // GSField.email(
                    //   tag: 'email',
                    //   title: 'Email',
                    //   errorMessage: 'error',
                    //   helpMessage: 'someemail@gmail.com',
                    //   postfixWidget:
                    //       const Icon(Icons.email, color: Color(0xff676767)),
                    //   weight: 12,
                    //   required: false,
                    // ),
                    // GSField.checkList(
                    //   hint: 'CheckBox List',
                    //   tag: 'check',
                    //   showScrollBar: true,
                    //   scrollBarColor: Colors.red,
                    //   height: 200,
                    //   scrollable: true,
                    //   requiredCheckListEnum: RequiredCheckListEnum.none,
                    //   weight: 12,
                    //   title: 'Size number',
                    //   searchable: true,
                    //   searchHint: 'Search...',
                    //   searchIcon: const Icon(Icons.search),
                    //   searchBoxDecoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.blue,
                    //       width: 1,
                    //     ),
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    //   items: [
                    //     CheckDataModel(
                    //         title: 'checkbox  ', isSelected: true),
                    //     CheckDataModel(title: 'ipsum', isSelected: false),
                    //     CheckDataModel(title: 'item', isSelected: true),
                    //     CheckDataModel(title: 'size', isSelected: false),
                    //     CheckDataModel(title: 'size 1', isSelected: false),
                    //     CheckDataModel(title: 'size 2', isSelected: false),
                    //     CheckDataModel(title: 'sample 1', isSelected: false),
                    //     CheckDataModel(title: 'Sample 2', isSelected: false),
                    //     CheckDataModel(title: 'Radio', isSelected: false),
                    //     CheckDataModel(title: 'Tv', isSelected: false),
                    //     CheckDataModel(title: 'data 1', isSelected: false),
                    //     CheckDataModel(title: 'data 2', isSelected: false),
                    //   ],
                    //   callBack: (data) {},
                    // ),
                    // GSField.radioGroup(
                    //   hint: 'Radio Group',
                    //   tag: 'radio',
                    //   showScrollBar: true,
                    //   scrollBarColor: Colors.red,
                    //   height: 200,
                    //   scrollable: true,
                    //   required: true,
                    //   weight: 12,
                    //   title: 'Size number',
                    //   searchable: true,
                    //   searchHint: 'Search...',
                    //   searchIcon: const Icon(Icons.search),
                    //   searchBoxDecoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Colors.blue,
                    //       width: 1,
                    //     ),
                    //     borderRadius: BorderRadius.circular(8),
                    //   ),
                    //   items: [
                    //     RadioDataModel(title: 'lorem', isSelected: true),
                    //     RadioDataModel(title: 'ipsum', isSelected: false),
                    //   ],
                    //   callBack: (data) {},
                    // ),
                    // GSField.textPlain(
                    //   tag: 'explain',
                    //   title: 'Description',
                    //   weight: 12,
                    //   maxLength: 150,
                    //   required: true,
                    // ),
                    // GSField.imagePicker(
                    //   tag: 'a',
                    //   title: 'انتخاب تصویر',
                    //   hint: 'فایل خود را انتخاب کنید',
                    //   iconWidget: Lottie.asset(
                    //     'assets/cam.json',
                    //     width: 70,
                    //     height: 70,
                    //   ),
                    // ),
                    // GSField.textPlain(
                    //   tag: 'Title',
                    //   title: 'Title',
                    //   weight: 12,
                    //   maxLine: 2,
                    //   required: true,
                    // ),
                    // GSField.textPlain(
                    //   tag: 'Description',
                    //   title: 'Description',
                    //   weight: 12,
                    //   maxLine: 5,
                    //   required: true,
                    // ),
                    // GSField.textPlain(
                    //   tag: 'Position',
                    //   title: 'Position',
                    //   weight: 12,
                    //   maxLine: 2,
                    //   required: true,
                    // ),
                    // GSField.textPlain(
                    //   tag: 'Duration',
                    //   title: 'Duration',
                    //   weight: 12,
                    //   maxLine: 2,
                    //   required: true,
                    // ),
                    // GSField.textPlain(
                    //   tag: 'Paid',
                    //   title: 'Paid',
                    //   weight: 12,
                    //   maxLine: 2,
                    //   required: true,
                    // ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      bool isValid = form.isValid();
                      Map<String, dynamic> map = form.onSubmit();
                      debugPrint(isValid.toString());
                      debugPrint(map.toString());
                    },
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
