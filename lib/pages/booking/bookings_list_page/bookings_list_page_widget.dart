import '/component/booking/booking_passed_card_component/booking_passed_card_component_widget.dart';
import '/component/booking/booking_upcoming_card_component/booking_upcoming_card_component_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bookings_list_page_model.dart';
export 'bookings_list_page_model.dart';

/// Upcoming Booking List
class BookingsListPageWidget extends StatefulWidget {
  const BookingsListPageWidget({super.key});

  static String routeName = 'BookingsListPage';
  static String routePath = '/bookingsListPage';

  @override
  State<BookingsListPageWidget> createState() => _BookingsListPageWidgetState();
}

class _BookingsListPageWidgetState extends State<BookingsListPageWidget>
    with TickerProviderStateMixin {
  late BookingsListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingsListPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'zw51xjb3' /* Bookings */,
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                font: GoogleFonts.balooDa2(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment(0.0, 0),
                      child: FlutterFlowButtonTabBar(
                        useToggleButtonStyle: true,
                        labelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.balooDa2(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        unselectedLabelStyle:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  font: GoogleFonts.balooDa2(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                        labelColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        unselectedLabelColor:
                            FlutterFlowTheme.of(context).secondaryText,
                        backgroundColor: FlutterFlowTheme.of(context).primary,
                        unselectedBackgroundColor:
                            FlutterFlowTheme.of(context).alternate,
                        unselectedBorderColor:
                            FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        elevation: 0.0,
                        buttonMargin:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'sfktd88a' /* Upcoming */,
                            ),
                          ),
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              '2pqcssik' /* Passed */,
                            ),
                          ),
                        ],
                        controller: _model.tabBarController,
                        onTap: (i) async {
                          [() async {}, () async {}][i]();
                        },
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _model.tabBarController,
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model:
                                      _model.bookingUpcomingCardComponentModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingUpcomingCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingUpcomingCardComponentModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingUpcomingCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingUpcomingCardComponentModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingUpcomingCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingUpcomingCardComponentModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingUpcomingCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingUpcomingCardComponentModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingUpcomingCardComponentWidget(),
                                ),
                              ]
                                  .divide(SizedBox(height: 8.0))
                                  .addToStart(SizedBox(height: 16.0))
                                  .addToEnd(SizedBox(height: 16.0)),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model:
                                      _model.bookingPassedCardComponentModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingPassedCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingPassedCardComponentModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingPassedCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingPassedCardComponentModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingPassedCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingPassedCardComponentModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingPassedCardComponentWidget(),
                                ),
                                wrapWithModel(
                                  model:
                                      _model.bookingPassedCardComponentModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: BookingPassedCardComponentWidget(),
                                ),
                              ]
                                  .divide(SizedBox(height: 8.0))
                                  .addToStart(SizedBox(height: 16.0))
                                  .addToEnd(SizedBox(height: 16.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
