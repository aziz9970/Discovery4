import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'gold_and_silver_rate_widget.dart' show GoldAndSilverRateWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GoldAndSilverRateModel extends FlutterFlowModel<GoldAndSilverRateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for gRTextField widget.
  FocusNode? gRTextFieldFocusNode;
  TextEditingController? gRTextFieldTextController;
  String? Function(BuildContext, String?)? gRTextFieldTextControllerValidator;
  // State field(s) for sRTextField widget.
  FocusNode? sRTextFieldFocusNode;
  TextEditingController? sRTextFieldTextController;
  String? Function(BuildContext, String?)? sRTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    gRTextFieldFocusNode?.dispose();
    gRTextFieldTextController?.dispose();

    sRTextFieldFocusNode?.dispose();
    sRTextFieldTextController?.dispose();
  }
}
