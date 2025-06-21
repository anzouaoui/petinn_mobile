import '/component/property/property_horizontal_component/property_horizontal_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel1;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel2;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel3;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel4;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel5;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel6;
  // Model for PropertyHorizontalComponent component.
  late PropertyHorizontalComponentModel propertyHorizontalComponentModel7;

  @override
  void initState(BuildContext context) {
    propertyHorizontalComponentModel1 =
        createModel(context, () => PropertyHorizontalComponentModel());
    propertyHorizontalComponentModel2 =
        createModel(context, () => PropertyHorizontalComponentModel());
    propertyHorizontalComponentModel3 =
        createModel(context, () => PropertyHorizontalComponentModel());
    propertyHorizontalComponentModel4 =
        createModel(context, () => PropertyHorizontalComponentModel());
    propertyHorizontalComponentModel5 =
        createModel(context, () => PropertyHorizontalComponentModel());
    propertyHorizontalComponentModel6 =
        createModel(context, () => PropertyHorizontalComponentModel());
    propertyHorizontalComponentModel7 =
        createModel(context, () => PropertyHorizontalComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    propertyHorizontalComponentModel1.dispose();
    propertyHorizontalComponentModel2.dispose();
    propertyHorizontalComponentModel3.dispose();
    propertyHorizontalComponentModel4.dispose();
    propertyHorizontalComponentModel5.dispose();
    propertyHorizontalComponentModel6.dispose();
    propertyHorizontalComponentModel7.dispose();
  }
}
