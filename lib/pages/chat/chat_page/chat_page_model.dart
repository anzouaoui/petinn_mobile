import '/component/chat/message_name_component/message_name_component_widget.dart';
import '/component/chat/message_textfield_component/message_textfield_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for MessageNameComponent component.
  late MessageNameComponentModel messageNameComponentModel;
  // Model for MessageTextfieldComponent component.
  late MessageTextfieldComponentModel messageTextfieldComponentModel;

  @override
  void initState(BuildContext context) {
    messageNameComponentModel =
        createModel(context, () => MessageNameComponentModel());
    messageTextfieldComponentModel =
        createModel(context, () => MessageTextfieldComponentModel());
  }

  @override
  void dispose() {
    messageNameComponentModel.dispose();
    messageTextfieldComponentModel.dispose();
  }
}
