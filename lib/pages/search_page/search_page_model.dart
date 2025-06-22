import '/component/accomodation/accomodation_horizontal_component/accomodation_horizontal_component_widget.dart';
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
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel1;
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel2;
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel3;
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel4;
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel5;
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel6;
  // Model for AccomodationHorizontalComponent component.
  late AccomodationHorizontalComponentModel
      accomodationHorizontalComponentModel7;

  @override
  void initState(BuildContext context) {
    accomodationHorizontalComponentModel1 =
        createModel(context, () => AccomodationHorizontalComponentModel());
    accomodationHorizontalComponentModel2 =
        createModel(context, () => AccomodationHorizontalComponentModel());
    accomodationHorizontalComponentModel3 =
        createModel(context, () => AccomodationHorizontalComponentModel());
    accomodationHorizontalComponentModel4 =
        createModel(context, () => AccomodationHorizontalComponentModel());
    accomodationHorizontalComponentModel5 =
        createModel(context, () => AccomodationHorizontalComponentModel());
    accomodationHorizontalComponentModel6 =
        createModel(context, () => AccomodationHorizontalComponentModel());
    accomodationHorizontalComponentModel7 =
        createModel(context, () => AccomodationHorizontalComponentModel());
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

    accomodationHorizontalComponentModel1.dispose();
    accomodationHorizontalComponentModel2.dispose();
    accomodationHorizontalComponentModel3.dispose();
    accomodationHorizontalComponentModel4.dispose();
    accomodationHorizontalComponentModel5.dispose();
    accomodationHorizontalComponentModel6.dispose();
    accomodationHorizontalComponentModel7.dispose();
  }
}
