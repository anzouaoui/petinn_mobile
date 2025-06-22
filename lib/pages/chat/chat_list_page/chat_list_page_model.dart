import '/component/chat/chats_card_component/chats_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_list_page_widget.dart' show ChatListPageWidget;
import 'package:flutter/material.dart';

class ChatListPageModel extends FlutterFlowModel<ChatListPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel1;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel2;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel3;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel4;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel5;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel6;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel7;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel8;
  // Model for ChatsCardComponent component.
  late ChatsCardComponentModel chatsCardComponentModel9;

  @override
  void initState(BuildContext context) {
    chatsCardComponentModel1 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel2 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel3 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel4 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel5 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel6 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel7 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel8 =
        createModel(context, () => ChatsCardComponentModel());
    chatsCardComponentModel9 =
        createModel(context, () => ChatsCardComponentModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    chatsCardComponentModel1.dispose();
    chatsCardComponentModel2.dispose();
    chatsCardComponentModel3.dispose();
    chatsCardComponentModel4.dispose();
    chatsCardComponentModel5.dispose();
    chatsCardComponentModel6.dispose();
    chatsCardComponentModel7.dispose();
    chatsCardComponentModel8.dispose();
    chatsCardComponentModel9.dispose();
  }
}
