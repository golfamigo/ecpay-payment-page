import '/flutter_flow/flutter_flow_util.dart';
import 'inside_pay_widget.dart' show InsidePayWidget;
import 'package:flutter/material.dart';

class InsidePayModel extends FlutterFlowModel<InsidePayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
