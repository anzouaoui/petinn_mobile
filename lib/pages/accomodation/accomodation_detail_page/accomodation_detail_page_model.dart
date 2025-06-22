import '/component/accomodation/booking_price_component/booking_price_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'accomodation_detail_page_widget.dart' show AccomodationDetailPageWidget;
import 'package:flutter/material.dart';

class AccomodationDetailPageModel
    extends FlutterFlowModel<AccomodationDetailPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BookingPriceComponent component.
  late BookingPriceComponentModel bookingPriceComponentModel;

  @override
  void initState(BuildContext context) {
    bookingPriceComponentModel =
        createModel(context, () => BookingPriceComponentModel());
  }

  @override
  void dispose() {
    bookingPriceComponentModel.dispose();
  }
}
