import '/component/booking/booking_passed_card_component/booking_passed_card_component_widget.dart';
import '/component/booking/booking_upcoming_card_component/booking_upcoming_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bookings_list_page_widget.dart' show BookingsListPageWidget;
import 'package:flutter/material.dart';

class BookingsListPageModel extends FlutterFlowModel<BookingsListPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // Model for BookingUpcomingCardComponent component.
  late BookingUpcomingCardComponentModel bookingUpcomingCardComponentModel1;
  // Model for BookingUpcomingCardComponent component.
  late BookingUpcomingCardComponentModel bookingUpcomingCardComponentModel2;
  // Model for BookingUpcomingCardComponent component.
  late BookingUpcomingCardComponentModel bookingUpcomingCardComponentModel3;
  // Model for BookingUpcomingCardComponent component.
  late BookingUpcomingCardComponentModel bookingUpcomingCardComponentModel4;
  // Model for BookingUpcomingCardComponent component.
  late BookingUpcomingCardComponentModel bookingUpcomingCardComponentModel5;
  // Model for BookingPassedCardComponent component.
  late BookingPassedCardComponentModel bookingPassedCardComponentModel1;
  // Model for BookingPassedCardComponent component.
  late BookingPassedCardComponentModel bookingPassedCardComponentModel2;
  // Model for BookingPassedCardComponent component.
  late BookingPassedCardComponentModel bookingPassedCardComponentModel3;
  // Model for BookingPassedCardComponent component.
  late BookingPassedCardComponentModel bookingPassedCardComponentModel4;
  // Model for BookingPassedCardComponent component.
  late BookingPassedCardComponentModel bookingPassedCardComponentModel5;

  @override
  void initState(BuildContext context) {
    bookingUpcomingCardComponentModel1 =
        createModel(context, () => BookingUpcomingCardComponentModel());
    bookingUpcomingCardComponentModel2 =
        createModel(context, () => BookingUpcomingCardComponentModel());
    bookingUpcomingCardComponentModel3 =
        createModel(context, () => BookingUpcomingCardComponentModel());
    bookingUpcomingCardComponentModel4 =
        createModel(context, () => BookingUpcomingCardComponentModel());
    bookingUpcomingCardComponentModel5 =
        createModel(context, () => BookingUpcomingCardComponentModel());
    bookingPassedCardComponentModel1 =
        createModel(context, () => BookingPassedCardComponentModel());
    bookingPassedCardComponentModel2 =
        createModel(context, () => BookingPassedCardComponentModel());
    bookingPassedCardComponentModel3 =
        createModel(context, () => BookingPassedCardComponentModel());
    bookingPassedCardComponentModel4 =
        createModel(context, () => BookingPassedCardComponentModel());
    bookingPassedCardComponentModel5 =
        createModel(context, () => BookingPassedCardComponentModel());
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    bookingUpcomingCardComponentModel1.dispose();
    bookingUpcomingCardComponentModel2.dispose();
    bookingUpcomingCardComponentModel3.dispose();
    bookingUpcomingCardComponentModel4.dispose();
    bookingUpcomingCardComponentModel5.dispose();
    bookingPassedCardComponentModel1.dispose();
    bookingPassedCardComponentModel2.dispose();
    bookingPassedCardComponentModel3.dispose();
    bookingPassedCardComponentModel4.dispose();
    bookingPassedCardComponentModel5.dispose();
  }
}
