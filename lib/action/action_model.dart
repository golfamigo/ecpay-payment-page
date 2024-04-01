import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'action_widget.dart' show ActionWidget;
import 'package:flutter/material.dart';

class ActionModel extends FlutterFlowModel<ActionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - checkMAC] action in Button widget.
  List<String>? varOut;
  // Stores action output result for [Backend Call - API (getToken)] action in Button widget.
  ApiCallResponse? token;
  // Stores action output result for [Custom Action - customActionDecrypt] action in Button widget.
  dynamic decodeToken;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
