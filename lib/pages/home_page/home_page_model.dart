import '/component/property/property_card_component/property_card_component_widget.dart';
import '/component/property/property_full_image_component/property_full_image_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for PropertyFullImageComponent component.
  late PropertyFullImageComponentModel propertyFullImageComponentModel1;
  // Model for PropertyFullImageComponent component.
  late PropertyFullImageComponentModel propertyFullImageComponentModel2;
  // Model for PropertyFullImageComponent component.
  late PropertyFullImageComponentModel propertyFullImageComponentModel3;
  // Model for PropertyFullImageComponent component.
  late PropertyFullImageComponentModel propertyFullImageComponentModel4;
  // Model for PropertyFullImageComponent component.
  late PropertyFullImageComponentModel propertyFullImageComponentModel5;
  // Model for PropertyCardComponent component.
  late PropertyCardComponentModel propertyCardComponentModel1;
  // Model for PropertyCardComponent component.
  late PropertyCardComponentModel propertyCardComponentModel2;
  // Model for PropertyCardComponent component.
  late PropertyCardComponentModel propertyCardComponentModel3;
  // Model for PropertyCardComponent component.
  late PropertyCardComponentModel propertyCardComponentModel4;
  // Model for PropertyCardComponent component.
  late PropertyCardComponentModel propertyCardComponentModel5;

  @override
  void initState(BuildContext context) {
    propertyFullImageComponentModel1 =
        createModel(context, () => PropertyFullImageComponentModel());
    propertyFullImageComponentModel2 =
        createModel(context, () => PropertyFullImageComponentModel());
    propertyFullImageComponentModel3 =
        createModel(context, () => PropertyFullImageComponentModel());
    propertyFullImageComponentModel4 =
        createModel(context, () => PropertyFullImageComponentModel());
    propertyFullImageComponentModel5 =
        createModel(context, () => PropertyFullImageComponentModel());
    propertyCardComponentModel1 =
        createModel(context, () => PropertyCardComponentModel());
    propertyCardComponentModel2 =
        createModel(context, () => PropertyCardComponentModel());
    propertyCardComponentModel3 =
        createModel(context, () => PropertyCardComponentModel());
    propertyCardComponentModel4 =
        createModel(context, () => PropertyCardComponentModel());
    propertyCardComponentModel5 =
        createModel(context, () => PropertyCardComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    propertyFullImageComponentModel1.dispose();
    propertyFullImageComponentModel2.dispose();
    propertyFullImageComponentModel3.dispose();
    propertyFullImageComponentModel4.dispose();
    propertyFullImageComponentModel5.dispose();
    propertyCardComponentModel1.dispose();
    propertyCardComponentModel2.dispose();
    propertyCardComponentModel3.dispose();
    propertyCardComponentModel4.dispose();
    propertyCardComponentModel5.dispose();
  }
}
