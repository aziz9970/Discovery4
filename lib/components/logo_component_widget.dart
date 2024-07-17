import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_component_model.dart';
export 'logo_component_model.dart';

class LogoComponentWidget extends StatefulWidget {
  const LogoComponentWidget({super.key});

  @override
  State<LogoComponentWidget> createState() => _LogoComponentWidgetState();
}

class _LogoComponentWidgetState extends State<LogoComponentWidget> {
  late LogoComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoComponentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (Theme.of(context).brightness == Brightness.light)
            Image.asset(
              'assets/images/DALLE_2024-03-25_14.58.38_-_Design_a_horizontal_logo_for_the_Deen_Discovery_app_without_any_label_or_text,_suitable_for_use_on_the_login_screen_or_promotional_materials._This_l.webp',
              width: 150.0,
              height: 59.0,
              fit: BoxFit.fitWidth,
            ),
          if (Theme.of(context).brightness == Brightness.dark)
            Image.asset(
              'assets/images/DALLE_2024-03-25_14.58.38_-_Design_a_horizontal_logo_for_the_Deen_Discovery_app_without_any_label_or_text,_suitable_for_use_on_the_login_screen_or_promotional_materials._This_l.webp',
              width: 150.0,
              height: 40.0,
              fit: BoxFit.fitWidth,
            ),
          Text(
            FFLocalizations.of(context).getText(
              'bwjdcfmm' /* Deen Discovery */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).bodyMediumFamily),
                ),
          ),
        ],
      ),
    );
  }
}
