import '/component/chat/chat_settings_component/chat_settings_component_widget.dart';
import '/component/chat/chats_card_component/chats_card_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'chat_list_page_model.dart';
export 'chat_list_page_model.dart';

/// Chat Message List
class ChatListPageWidget extends StatefulWidget {
  const ChatListPageWidget({super.key});

  static String routeName = 'ChatListPage';
  static String routePath = '/chatListPage';

  @override
  State<ChatListPageWidget> createState() => _ChatListPageWidgetState();
}

class _ChatListPageWidgetState extends State<ChatListPageWidget> {
  late ChatListPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatListPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'b6zzn9yi' /* Chats */,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.balooDa2(
                                  fontWeight: FontWeight.w600,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              enableDrag: false,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () {
                                    FocusScope.of(context).unfocus();
                                    FocusManager.instance.primaryFocus
                                        ?.unfocus();
                                  },
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ChatSettingsComponentWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            Expanded(
                              child: TextFormField(
                                controller: _model.textController,
                                focusNode: _model.textFieldFocusNode,
                                autofocus: false,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: FFLocalizations.of(context).getText(
                                    'cysfkdg7' /* Search */,
                                  ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.quicksand(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  focusedErrorBorder: InputBorder.none,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.quicksand(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      primary: false,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel1,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel2,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel3,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel4,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel5,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel6,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel7,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel8,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(),
                            child: wrapWithModel(
                              model: _model.chatsCardComponentModel9,
                              updateCallback: () => safeSetState(() {}),
                              child: ChatsCardComponentWidget(),
                            ),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                    ),
                  ].divide(SizedBox(height: 16.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
