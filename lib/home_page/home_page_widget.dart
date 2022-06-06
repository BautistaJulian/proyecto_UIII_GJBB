import '../crear_cuenta/crear_cuenta_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../inicio_sesion/inicio_sesion_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFDED9F7),
        automaticallyImplyLeading: false,
        leading: Image.network(
          'https://raw.githubusercontent.com/BautistaJulian/Proyecto_UIII/main/UIII_Poryecto/Logo.jpg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
        title: Text(
          'Vterinaria \nLa Perrona',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.09, 0.12),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Button',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Image.network(
                  'https://raw.githubusercontent.com/BautistaJulian/Proyecto_UIII/main/UIII_Poryecto/Portada.jpg',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, -0.06),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => InicioSesionWidget(),
                      ),
                    );
                  },
                  text: 'Inicio de Sesion',
                  options: FFButtonOptions(
                    width: 180,
                    height: 40,
                    color: Color(0xFFE0E0E0),
                    textStyle: FlutterFlowTheme.of(context).title3,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.05, 0.42),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CrearCuentaWidget(),
                      ),
                    );
                  },
                  text: 'Crea una Cuenta',
                  options: FFButtonOptions(
                    width: 190,
                    height: 40,
                    color: Color(0xFFE0E0E0),
                    textStyle: FlutterFlowTheme.of(context).subtitle1,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: 12,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, -0.79),
                child: Container(
                  width: 290,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0x8CB6B6B6),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFEEEEEE),
                      )
                    ],
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.09, 0.34),
                        child: Text(
                          'INICIA SECION\nO \nCREA UNA CUENTA',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.06, -0.86),
                        child: Text(
                          'BIENVENIDO!',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
