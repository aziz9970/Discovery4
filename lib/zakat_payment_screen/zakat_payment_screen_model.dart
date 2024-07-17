import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'zakat_payment_screen_widget.dart' show ZakatPaymentScreenWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ZakatPaymentScreenModel
    extends FlutterFlowModel<ZakatPaymentScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for amountTextField widget.
  FocusNode? amountTextFieldFocusNode;
  TextEditingController? amountTextFieldTextController;
  String? Function(BuildContext, String?)?
      amountTextFieldTextControllerValidator;
  String? _amountTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't3ewb742' /* Please enter the value */,
      );
    }

    return null;
  }

  // State field(s) for paidToTextField widget.
  FocusNode? paidToTextFieldFocusNode;
  TextEditingController? paidToTextFieldTextController;
  String? Function(BuildContext, String?)?
      paidToTextFieldTextControllerValidator;
  String? _paidToTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8cw8zkb7' /* Please enter the value */,
      );
    }

    return null;
  }

  // State field(s) for paymentModeTextField widget.
  String? paymentModeTextFieldValue;
  FormFieldController<String>? paymentModeTextFieldValueController;
  // State field(s) for descriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    amountTextFieldTextControllerValidator =
        _amountTextFieldTextControllerValidator;
    paidToTextFieldTextControllerValidator =
        _paidToTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    amountTextFieldFocusNode?.dispose();
    amountTextFieldTextController?.dispose();

    paidToTextFieldFocusNode?.dispose();
    paidToTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
