import '/component/accomodation/accomodation_card_component/accomodation_card_component_widget.dart';
import '/component/accomodation/accomodation_full_image_component/accomodation_full_image_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for AccomodationFullImageComponent component.
  late AccomodationFullImageComponentModel accomodationFullImageComponentModel1;
  // Model for AccomodationFullImageComponent component.
  late AccomodationFullImageComponentModel accomodationFullImageComponentModel2;
  // Model for AccomodationFullImageComponent component.
  late AccomodationFullImageComponentModel accomodationFullImageComponentModel3;
  // Model for AccomodationFullImageComponent component.
  late AccomodationFullImageComponentModel accomodationFullImageComponentModel4;
  // Model for AccomodationFullImageComponent component.
  late AccomodationFullImageComponentModel accomodationFullImageComponentModel5;
  // Model for AccomodationCardComponent component.
  late AccomodationCardComponentModel accomodationCardComponentModel1;
  // Model for AccomodationCardComponent component.
  late AccomodationCardComponentModel accomodationCardComponentModel2;
  // Model for AccomodationCardComponent component.
  late AccomodationCardComponentModel accomodationCardComponentModel3;
  // Model for AccomodationCardComponent component.
  late AccomodationCardComponentModel accomodationCardComponentModel4;
  // Model for AccomodationCardComponent component.
  late AccomodationCardComponentModel accomodationCardComponentModel5;

  @override
  void initState(BuildContext context) {
    accomodationFullImageComponentModel1 =
        createModel(context, () => AccomodationFullImageComponentModel());
    accomodationFullImageComponentModel2 =
        createModel(context, () => AccomodationFullImageComponentModel());
    accomodationFullImageComponentModel3 =
        createModel(context, () => AccomodationFullImageComponentModel());
    accomodationFullImageComponentModel4 =
        createModel(context, () => AccomodationFullImageComponentModel());
    accomodationFullImageComponentModel5 =
        createModel(context, () => AccomodationFullImageComponentModel());
    accomodationCardComponentModel1 =
        createModel(context, () => AccomodationCardComponentModel());
    accomodationCardComponentModel2 =
        createModel(context, () => AccomodationCardComponentModel());
    accomodationCardComponentModel3 =
        createModel(context, () => AccomodationCardComponentModel());
    accomodationCardComponentModel4 =
        createModel(context, () => AccomodationCardComponentModel());
    accomodationCardComponentModel5 =
        createModel(context, () => AccomodationCardComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    accomodationFullImageComponentModel1.dispose();
    accomodationFullImageComponentModel2.dispose();
    accomodationFullImageComponentModel3.dispose();
    accomodationFullImageComponentModel4.dispose();
    accomodationFullImageComponentModel5.dispose();
    accomodationCardComponentModel1.dispose();
    accomodationCardComponentModel2.dispose();
    accomodationCardComponentModel3.dispose();
    accomodationCardComponentModel4.dispose();
    accomodationCardComponentModel5.dispose();
  }
}
