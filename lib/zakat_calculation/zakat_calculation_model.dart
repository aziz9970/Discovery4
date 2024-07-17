import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/gold_and_silver_rate_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'zakat_calculation_widget.dart' show ZakatCalculationWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ZakatCalculationModel extends FlutterFlowModel<ZakatCalculationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for GoldAndSilverRate component.
  late GoldAndSilverRateModel goldAndSilverRateModel;
  // State field(s) for yearTextField widget.
  String? yearTextFieldValue;
  FormFieldController<String>? yearTextFieldValueController;
  // State field(s) for cashTextField widget.
  FocusNode? cashTextFieldFocusNode;
  TextEditingController? cashTextFieldTextController;
  String? Function(BuildContext, String?)? cashTextFieldTextControllerValidator;
  String? _cashTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'yxigflqo' /* Please enter the value */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - indivisualZakatCalculation2] action in cashTextField widget.
  double? cashZakat;
  // State field(s) for goldTextField widget.
  FocusNode? goldTextFieldFocusNode;
  TextEditingController? goldTextFieldTextController;
  String? Function(BuildContext, String?)? goldTextFieldTextControllerValidator;
  String? _goldTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'izlrctt1' /* Please enter the value */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - indivisualZakatCalculation2] action in goldTextField widget.
  double? goldZakat;
  // State field(s) for silverTextField widget.
  FocusNode? silverTextFieldFocusNode;
  TextEditingController? silverTextFieldTextController;
  String? Function(BuildContext, String?)?
      silverTextFieldTextControllerValidator;
  String? _silverTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'iy5vd7k8' /* Please enter the value */,
      );
    }

    return null;
  }

  // Stores action output result for [Custom Action - indivisualZakatCalculation2] action in silverTextField widget.
  double? silverZakat;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ZakatDetailsRow>? zakatPaymentHistory;

  @override
  void initState(BuildContext context) {
    goldAndSilverRateModel =
        createModel(context, () => GoldAndSilverRateModel());
    cashTextFieldTextControllerValidator =
        _cashTextFieldTextControllerValidator;
    goldTextFieldTextControllerValidator =
        _goldTextFieldTextControllerValidator;
    silverTextFieldTextControllerValidator =
        _silverTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    goldAndSilverRateModel.dispose();
    cashTextFieldFocusNode?.dispose();
    cashTextFieldTextController?.dispose();

    goldTextFieldFocusNode?.dispose();
    goldTextFieldTextController?.dispose();

    silverTextFieldFocusNode?.dispose();
    silverTextFieldTextController?.dispose();
  }

  /// Action blocks.
  Future calculateZakatActionBlock(BuildContext context) async {}
}
